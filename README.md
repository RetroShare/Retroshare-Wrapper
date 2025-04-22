# RetroShare API Wrapper for Dart/Flutter


A Dart package providing a wrapper around the RetroShare JSON-RPC API, enabling interaction with a running RetroShare node from Dart and Flutter applications.

## Features

*   **Authentication:** Log in, manage API tokens.
*   **Identity Management:** Create/get identities, manage contacts.
*   **Peer Management:** Add friends, handle invites, get connection status, discover peers.
*   **Messaging:** Send/receive private messages, manage chat lobbies.
*   **GXS Services:** Interact with Channels, Forums, and Circles.
*   **File Sharing:** Manage downloads, shared directories, file links.
*   **Event Handling:** Subscribe to real-time RetroShare events using Server-Sent Events (via the standard `http` package).
*   **Configuration:** Get/set RetroShare settings like data rates.
*   **Utilities:** Helper functions for common tasks like checking service status and retrieving combined identity information.

## Prerequisites

*   A running RetroShare node instance.
*   The JSON API must be enabled in your RetroShare node (usually accessible at `http://127.0.0.1:9092` by default).

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  retroshare_api_wrapper: ^0.1.0 # Or the latest version
```

Or install using the command line:

```bash
flutter pub add retroshare_api_wrapper
```

Then, import the package in your Dart code:

```dart
import 'package:retroshare_api_wrapper/retroshare.dart';
import 'package:retroshare_api_wrapper/src/rs_models.dart'; // For data models like AuthToken, Location etc.
```

## Usage

Most API calls require an `AuthToken` which encapsulates the necessary authentication credentials (username/password or API key/value).

```dart
import 'package:retroshare_api_wrapper/retroshare.dart';
import 'package:retroshare_api_wrapper/src/rs_models.dart'; // For data models like AuthToken, Location etc.

// --- Authentication Example (Login Helper) ---
Future<AuthToken?> login(String username, String password) async {
  try {
    // Assuming getLocations provides necessary details including locationId
    var locations = await RsLoginHelper.getLocations();
    if (locations.isNotEmpty) {
      // Find the correct location object based on username if multiple exist
      var selectedAccount = locations.firstWhere((loc) => loc['name'] == username, orElse: () => null);
      if (selectedAccount != null) {
         bool loginSuccess = await RsLoginHelper.requestLogIn(selectedAccount, password);
         if (loginSuccess) {
           // Use username/password directly for AuthToken in this wrapper
           return AuthToken(username, password);
         }
      }
    }
  } catch (e) {
    print("Login failed: $e");
  }
  return null;
}


// --- Example API Call (Get Friend List) ---
Future<void> printFriendList(AuthToken authToken) async {
  if (authToken == null) {
    print("Not authenticated.");
    return;
  }
  try {
    List<String> friendIds = await RsPeers.getFriendList(authToken);
    print("Friend SSL IDs: $friendIds");

    // You can then get details for each friend
    for (String sslId in friendIds) {
      Location friendDetails = await RsPeers.getPeerDetails(sslId, authToken);
      print(" - ${friendDetails.name} (${friendDetails.location})");
    }
  } catch (e) {
    print("Error getting friend list: $e");
  }
}

// --- Example Event Handling (Chat Messages) ---
StreamSubscription<String>? chatSubscription;

void listenToChatMessages(AuthToken authToken) {
  if (authToken == null) {
    print("Not authenticated.");
    return;
  }

  // Use the utility function for easier chat message handling
  eventsRegisterChatMessage(
    authToken: authToken,
    listenCb: (dynamic eventJson, ChatMessage? chatMessage) {
      if (chatMessage != null) {
        print("Received Chat: ${chatMessage.mMsg}");
        // Handle the incoming chat message in your application UI/logic
      } else {
        print("Received non-chat message event or parsing error: $eventJson");
      }
    },
    onError: (error, stacktrace) {
      print("Error listening to chat events: $error");
      // Handle subscription errors (e.g., attempt to reconnect)
    },
  ).then((subscriptionFuture) {
     subscriptionFuture?.then((subscription) {
        chatSubscription = subscription;
        print("Subscribed to chat events.");
     });
  });
}

void stopListeningToChat() {
  chatSubscription?.cancel();
  print("Unsubscribed from chat events.");
}


// --- Main Example Usage ---
void main() async {
  // IMPORTANT: Replace with your actual Retroshare node credentials
  String username = "your_retroshare_user";
  String password = "your_retroshare_password";

  // Attempt to login
  AuthToken? token = await login(username, password);

  if (token != null) {
    print("Login successful!");
    await printFriendList(token);
    listenToChatMessages(token);

    // Keep the application running to receive events or perform other actions
    // In a real app, this would be part of your Flutter UI lifecycle
    // await Future.delayed(Duration(minutes: 5));
    // stopListeningToChat();

  } else {
    print("Authentication failed.");
  }
}
```

## API Overview

The wrapper organizes RetroShare API calls into static classes, generally mirroring the API structure:

*   `RsAccounts`, `RsLoginHelper`, `RsIdentity`: User accounts, login, identity management.
*   `RsPeers`: Friend management, connections, invites.
*   `RsMsgs`: Private messaging, chat lobbies.
*   `RsGxsChannel`, `RsGxsForum`, `RsGxsCircles`: GXS services.
*   `RsFiles`: File transfer management.
*   `RsConfig`: Node configuration.
*   `RsEvents`: Real-time event subscriptions.
*   `RsJsonApi`: General API utilities (version, token management).
*   Various utility functions are also provided at the top level.

Check the source code in `lib/src/retroshare.dart` for available methods and their parameters.

## Error Handling

API calls return `Future`s. Network errors (like `SocketException` if the RetroShare node is down) or API-level errors (invalid parameters, authentication failure, etc.) typically result in thrown `Exception`s. Use `try-catch` blocks to handle potential failures gracefully.

## Testing

The package includes a suite of unit tests to verify the functionality of the API wrapper. To run the tests, use the standard Flutter test command from the root directory of the package:

```bash
flutter test
```

This will execute the tests defined in the `test/` directory.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues.
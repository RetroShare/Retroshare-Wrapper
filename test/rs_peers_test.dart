import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart'; // Import MockClient
import 'package:retroshare_api_wrapper/src/retroshare.dart'; // Adjust import path if needed
import 'package:retroshare_api_wrapper/src/rs_models.dart'; // Adjust import path if needed

// Removed temporary helper functions as static methods are now refactored

void main() {
  // Dummy AuthToken for testing
  const testAuthToken = AuthToken('testuser', 'testpass');

  group('RsPeers Tests', () {
    test('getFriendList returns list of IDs on success', () async {
      // 1. Arrange
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/getFriendList' &&
            request.method == 'POST') {
          expect(request.headers['authorization'], startsWith('Basic '));
          final mockResponse = {
            'retval': true,
            'sslIds': ['id1', 'id2', 'id3'],
          };
          return http.Response(jsonEncode(mockResponse), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act: Call the static method directly with the client
      final friendList = await RsPeers.getFriendList(
        testAuthToken,
        client: mockClient, // Pass the mock client
      );

      // 3. Assert
      expect(friendList, isA<List<String>>());
      expect(friendList, equals(['id1', 'id2', 'id3']));
    });

    test('getFriendList throws exception on API error (retval=false)',
        () async {
      // 1. Arrange
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/getFriendList') {
          final mockErrorResponse = {
            'retval': false,
            'errorMessage': 'Failed to get list',
          };
          return http.Response(jsonEncode(mockErrorResponse), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act & 3. Assert: Expect an exception because rsApiCall checks retval
      Future<void> action() async {
        // Call the static method directly
        await RsPeers.getFriendList(testAuthToken, client: mockClient);
      }

      await expectLater(
        action(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'toString',
            contains(
              'API Error: Failed to get list',
            ), // Check error from rsApiCall
          ),
        ),
      );
    });

    test('getOnlineList returns list of IDs on success', () async {
      // 1. Arrange
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/getOnlineList' &&
            request.method == 'POST') {
          expect(request.headers['authorization'], startsWith('Basic '));
          final mockResponse = {
            'retval': true,
            'sslIds': ['online1', 'online2'],
          };
          return http.Response(jsonEncode(mockResponse), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act: Call the static method directly
      final onlineList =
          await RsPeers.getOnlineList(testAuthToken, client: mockClient);

      // 3. Assert
      expect(onlineList, isA<List<String>>());
      expect(onlineList, equals(['online1', 'online2']));
    });

    test('getPeerDetails returns Location on success', () async {
      // 1. Arrange
      const sslId = 'peer123';
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/getPeerDetails' &&
            request.method == 'POST') {
          final body = jsonDecode(request.body);
          expect(body['sslId'], equals(sslId));
          final mockResponse = {
            'retval': true,
            'det': {
              'id': sslId,
              'gpg_id': 'gpg123',
              'name': 'Test Peer',
              'location': 'PeerLocation',
              'connectState': 1,
            },
          };
          return http.Response(jsonEncode(mockResponse), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act: Call the static method directly
      final details = await RsPeers.getPeerDetails(
        sslId,
        testAuthToken,
        client: mockClient,
      );

      // 3. Assert
      expect(details, isA<Location>());
      expect(details.rsPeerId, equals(sslId));
      expect(details.rsGpgId, equals('gpg123'));
      expect(details.accountName, equals('Test Peer'));
      expect(details.locationName, equals('PeerLocation'));
      expect(details.isOnline, isTrue);
    });

    test('getPeerDetails throws exception on API error', () async {
      // 1. Arrange
      const sslId = 'peer123';
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/getPeerDetails') {
          final mockErrorResponse = {
            'retval': false,
            'errorMessage': 'Peer details not found',
          };
          return http.Response(jsonEncode(mockErrorResponse), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act & 3. Assert
      Future<void> action() async {
        await RsPeers.getPeerDetails(sslId, testAuthToken, client: mockClient);
      }

      await expectLater(
        action(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'toString',
            contains('API Error: Peer details not found'),
          ),
        ),
      );
    });

    test('isOnline returns true when peer is online', () async {
      // 1. Arrange
      const sslId = 'peerOnline';
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/isOnline' &&
            request.method == 'POST') {
          final body = jsonDecode(request.body);
          expect(body['sslId'], equals(sslId));
          return http.Response(jsonEncode({'retval': true}), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act: Call the static method directly
      final result =
          await RsPeers.isOnline(sslId, testAuthToken, client: mockClient);

      // 3. Assert
      expect(result, isTrue);
    });

    test('isOnline returns false when peer is offline', () async {
      // 1. Arrange
      const sslId = 'peerOffline';
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/isOnline' &&
            request.method == 'POST') {
          final body = jsonDecode(request.body);
          expect(body['sslId'], equals(sslId));
          // API returns true/false directly in retval
          return http.Response(jsonEncode({'retval': false}), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act: Call the static method directly
      final result =
          await RsPeers.isOnline(sslId, testAuthToken, client: mockClient);

      // 3. Assert
      expect(result, isFalse);
    });

    test('acceptInvite returns true on success', () async {
      // 1. Arrange
      const invite = 'base64invitePayload';
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/acceptInvite' &&
            request.method == 'POST') {
          final body = jsonDecode(request.body);
          expect(body['invite'], equals(invite));
          return http.Response(jsonEncode({'retval': true}), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act: Appel correct -> (AuthToken, String, {client})
      final result =
          await RsPeers.acceptInvite(testAuthToken, invite, client: mockClient);

      // 3. Assert
      expect(result, isTrue);
    });

    test('acceptInvite returns false on failure', () async {
      // 1. Arrange
      const invite = 'base64invitePayloadInvalid';
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/acceptInvite') {
          // API returns false directly in retval for failure
          return http.Response(jsonEncode({'retval': false}), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act: Appel correct -> (AuthToken, String, {client})
      final result =
          await RsPeers.acceptInvite(testAuthToken, invite, client: mockClient);

      // 3. Assert
      expect(result, isFalse);
    });

    test('removeFriend returns true on success', () async {
      // 1. Arrange
      const pgpId = 'friendToRemovePgpId';
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/removeFriend' &&
            request.method == 'POST') {
          final body = jsonDecode(request.body);
          expect(body['pgpId'], equals(pgpId));
          // According to refactored code, success is just status 200 + retval check in rsApiCall
          // and the method itself returns true if no exception
          return http.Response(jsonEncode({'retval': true}), 200);
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act: Appel correct -> (String, AuthToken, {client})
      final result =
          await RsPeers.removeFriend(pgpId, testAuthToken, client: mockClient);

      // 3. Assert
      expect(result, isTrue);
    });

    test('removeFriend throws exception on API error', () async {
      // 1. Arrange
      const pgpId = 'friendToRemovePgpId';
      final mockClient = MockClient((request) async {
        if (request.url.path == '/rsPeers/removeFriend') {
          // Simulate error reported via retval=false in body
          return http.Response(
            jsonEncode({'retval': false, 'errorMessage': 'Friend not found'}),
            200,
          );
        }
        return http.Response('Not Found', 404);
      });

      // 2. Act & Assert
      Future<void> action() async {
        // Appel correct -> (String, AuthToken, {client})
        await RsPeers.removeFriend(pgpId, testAuthToken, client: mockClient);
      }

      // Update the expected message to match the one thrown by removeFriend
      await expectLater(
        action(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'toString',
            contains(
              'Remove friend API call failed: Friend not found',
            ),
          ), // Exact match
        ),
      );
    });
  });
}

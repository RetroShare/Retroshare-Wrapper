import 'dart:async';
import 'dart:convert';
import 'dart:collection';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:path/path.dart';
import 'package:retroshare_api_wrapper/retroshare.dart';
import 'package:retroshare_api_wrapper/src/rsModels.dart';

String _retroshareServicePrefix; // Used for remote control feature

const RETROSHARE_HOST = '127.0.0.1';
const RETROSHARE_PORT = 9092;
const RETROSHARE_SERVICE_PREFIX = 'http://$RETROSHARE_HOST:$RETROSHARE_PORT';
const RETROSHARE_API_USER = 'elrepo.io';

const RS_MSG_PENDING = 0x0002;

const RETROSHARE_CHANNEL_NAME = 'net.altermundi.elrepoio/retroshare';

void dbg(String msg) {
  stderr.writeln(msg);
}

String errToStr(Map<String, dynamic> cxx_std_error_condition) {
  var err = cxx_std_error_condition;
  return "${err["errorCategory"]} ${err["errorNumber"]} ${err["errorMessage"]}";
}

class AuthToken {
  final String _username;
  final String _password;

  get authToken => this._username + ":" + this._password;

  get username => _username;
  get password => _password;

  AuthToken(this._username, this._password);
  @override
  String toString() => this.authToken;
}

/// Returns an authentication header to use for RS
String makeAuthHeader(String username, String password) =>
    'Basic ' + base64Encode(utf8.encode('$username:$password'));

void setRetroshareServicePrefix([String prefix = RETROSHARE_SERVICE_PREFIX]) =>
    _retroshareServicePrefix = prefix;

String getRetroshareServicePrefix() =>
    _retroshareServicePrefix ?? RETROSHARE_SERVICE_PREFIX;

// ////////////////////////////////////////////////////////////////////////////
// / SERVICE LIFECYCLE MANAGEMENT
// ////////////////////////////////////////////////////////////////////////////

/// Set internal var

/// Check if RS is running, try to restart it otherwise
///
/// It try to restart it using the [rsStartCallback] that have to be set before
/// using [setStartCallback].
///
/// Return true if success throw exception if not.
Future<bool> restartRSIfDown() async {
  if (!(await isRetroshareRunning())) {
    print('RS service is down. Restarting');
    try {
      await rsStartCallback();
    } catch (error) {
      throw Exception('Failed to start RS service. $error');
    }
  }
  return true;
}

/// Function to check if Retroshare is running
///
/// Return true if receive a response from the server, false otherwise.
Future<bool> isRetroshareRunning() async {
  final reqUrl = getRetroshareServicePrefix();
  try {
    final response = await http.get(Uri.parse(reqUrl));
    return response != null && response.statusCode is int;
  } catch (err) {
    print(err);
    return false;
  }
}

// ////////////////////////////////////////////////////////////////////////////
// / RS EVENTS
// ////////////////////////////////////////////////////////////////////////////
/*class RsEvents {
  /// Register Event
  ///
  /// Where [eventType] is the enum type [RsEventType] that specifies what kind
  /// of event are we listening to.
  ///
  /// The callback return this StreamSubscription object and the Json response
  /*static Future<StreamSubscription<Event>> registerEventsHandler(
      RsEventType eventType, Function callback, AuthToken authToken,
      {Function onError, String basicAuth}) async {
    await restartRSIfDown();

    var body = {'eventType': eventType.index};
    var path = '/rsEvents/registerEventsHandler';
    var reqUrl = getRetroshareServicePrefix() + path;
    StreamSubscription<Event> streamSubscription;
    try {
      var eventSource = await EventSource.connect(
        reqUrl,
        method: 'GET',
        body: jsonEncode(body),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        },
      );

      streamSubscription = eventSource.listen((Event event) {
        // Deserialize the message
        var json = event.data != null ? jsonDecode(event.data) : null;
        if (json['event'] != null && callback != null) {
          callback(streamSubscription, json['event']);
        }
      });
      streamSubscription.onError(onError);
    } on EventSourceSubscriptionException catch (e) {
      print('registerEventsHandler error: ' + e.message);
      throw (statusCodeErrorMessages(e.statusCode, path, reqUrl));
    }

    // Store the subscription on a dictionary
//    rsEventsSubscriptions ??= Map();
//    rsEventsSubscriptions[eventType] = streamSubscription;
    return streamSubscription;
  }*/
}
*/

// ////////////////////////////////////////////////////////////////////////////
// / RAW MESSAGE PASSING
// ////////////////////////////////////////////////////////////////////////////

/// Return diferent Strings to throw depending the status code
String statusCodeErrorMessages(int statusCode, String path, String reqUrl) {
  switch (statusCode) {
    case 401:
      return 'Authentication failed';
    case 404:
      return 'Method not found: ' + path;
    default:
      throw ApiUnhandledErrorException(statusCode, reqUrl);
  }
}

/// Exception thrown when the API error is not handled yet
///
/// If the API error is not handled, throw this exception. Check
/// [statusCodeErrorMessages] to see handled exceptions.
class ApiUnhandledErrorException implements Exception {
  String _message;
  ApiUnhandledErrorException(int statusCode, String reqUrl) {
    _message = 'Unhandled statusCode: ' + statusCode.toString() + ' ' + reqUrl;
  }
  @override
  String toString() => _message;
}

class LoginException implements Exception {
  final String _message = 'Please, log in first ...';
  @override
  String toString() => _message;
}

var rsStartCallback;

void setStartCallback(callback) {
  rsStartCallback = callback;
}

/// Call the given RetroShare JSON API method with given paramethers, and return
/// results, raise exceptions on errors.
/// Path is expected to contain a leading slash "/" and params is expected to
/// be serializable to JSON.
Future<Map<String, dynamic>> rsApiCall(
  String path, {
  AuthToken authToken,
  Map<String, dynamic> params,
}) async {
  final reqUrl = 'http://localhost:9092${path}';
  final response = await http
      .post(Uri.parse(reqUrl), body: jsonEncode(params ?? {}), headers: {
    HttpHeaders.authorizationHeader:
        'Basic ' + base64.encode(utf8.encode('$authToken'))
  });
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else
    throw Exception('Failed to load response');
}

// ////////////////////////////////////////////////////////////////////////////
// / SPECIFIC RETROSHARE OPERATIONS
// ////////////////////////////////////////////////////////////////////////////

class RsAccounts {
  static Future<String> getCurrentAccountId(AuthToken authToken) async {
    try {
      final mPath = '/rsAccounts/getCurrentAccountId';
      final response = await rsApiCall(mPath, authToken: authToken);
      if (response['retval']) return response['id'];
      throw Exception("No Account Registered");
    } catch (err) {
      throw Exception("something went wrong!");
    }
  }
}

class RsLoginHelper {
  /// Creates a Retroshare Account
  /// Returns the location to use the account from now on

  /// Login in function
  ///
  /// You can send custom [location] and [password] to configure the global ones
  /// defined in [authLocationId] and [authPassphrase].
  ///
  /// If is already logged in it execute [RsIdentity.getOrCreateIdentity].
  ///
  /// Else do an `/rsLoginHelper/attemptLogin`.
  ///
  /// Return 0 if everything is Ok
  static Future<dynamic> requestLogIn(
      dynamic selectedAccount, String password) async {
    var accountDetails = {
      'account': selectedAccount.locationId,
      'password': password
    };

    final response = await http.post(
        Uri.parse("http://localhost:9092/rsLoginHelper/attemptLogin"),
        body: json.encode(accountDetails));

    if (response.statusCode == 200) {
      return json.decode(response.body)['retval'];
    } else {
      throw Exception('Failed to load response');
    }
  }

  /// Check if is logged in
  ///
  /// Return false if `/rsLoginHelper/isLoggedIn` is false and also if one of
  /// the variables [authLocationId] or [authPassphrase] is null, (what mean
  /// that are not set).
  static Future<dynamic> checkLoggedIn() async {
    final response = await http
        .get(Uri.parse('http://localhost:9092/rsLoginHelper/isLoggedIn'));

    if (response.statusCode == 200)
      return json.decode(response.body)['retval'];
    else
      throw Exception('Failed to load response');
  }

  static Future<dynamic> getLocations() async {
    final response = await http
        .get(Uri.parse('http://localhost:9092/rsLoginHelper/getLocations'));

    if (response.statusCode == 200) {
      return json.decode(response.body)['locations'];
    }
    return [];
  }

  static Future<dynamic> requestAccountCreation(
      String username, String password,
      [String nodeName = 'Mobile']) async {
    final mParams = {
      "locationName": username,
      "pgpName": username,
      "password": password,
      "apiUser": username,
      /* TODO(G10h4ck): The new token scheme permit arbitrarly more secure
       * options to avoid sending PGP password at each request. */
      "apiPass": password
    };

    final response = await http.post(
        'http://localhost:9092/rsLoginHelper/createLocationV2',
        body: json.encode(mParams));
    if (response.statusCode == 200) {
      final resp = await jsonDecode(response.body);
      return resp;
    } else {
      throw Exception('Failed to load response');
    }
  }
}

class RsIdentity {
  /// Create a new identity
  ///
  /// Return [id] storage for the created identity Id
  /// [name] Name of the identity
  /// NOT SUPORTED avatar Image associated to the identity
  /// NOT SUPORTED (default true) [pseudonimous] true for unsigned identity, false otherwise
  /// [pgpPassword] password to unlock PGP to sign identity, not implemented yet
  /// @return false on error, true otherwise

  // Returns the ID of the default identity or creates one if there is none defined
  static Future<dynamic> getOwnSignedIdentity(AuthToken authToken) async {
    final respSigned = await http.get(
        Uri.parse('http://127.0.0.1:9092/rsIdentity/getOwnSignedIds'),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        });

    if (respSigned.statusCode == 200) {
      print(json.decode(respSigned.body));
      return json.decode(respSigned.body)['ids'];
    }
    return [];
  }

  static Future<dynamic> getOwnPseudonimousIds(AuthToken authToken) async {
    final respSigned = await http.get(
        Uri.parse('http://127.0.0.1:9092/rsIdentity/getOwnPseudonimousIds'),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        });
    print(respSigned.body);
    if (respSigned.statusCode == 200) {
      return json.decode(respSigned.body)['ids'];
    }
    return [];
  }

  static Future<bool> isKnownId(String sslId, AuthToken authToken) async {
    try {
      final mPath = '/rsIdentity/isKnownId';
      final mParams = {'id': sslId};
      final response =
          await rsApiCall(mPath, authToken: authToken, params: mParams);

      return response['retval'] == true;
    } catch (err) {
      throw Exception("something went wrong!");
    }
  }

  static Future<void> requestIdentity(String sslId, AuthToken authToken) async {
    try {
      final mPath = '/rsIdentity/requestIdentity';
      final mParams = {'id': sslId};
      final response =
          await rsApiCall(mPath, authToken: authToken, params: mParams);

      if (response['retval'] != true) throw Exception();
    } catch (err) {
      throw err;
    }
  }

  static Future<Map> getIdDetails(
      String identityId, AuthToken authToken) async {
        
    final mPath = '/rsIdentity/getIdDetails';
    final mParams = {'id': identityId};
    var response =
        await rsApiCall(mPath, authToken: authToken, params: mParams);

    if (response['retval'] != true) {
      // TODO(nicoechaniz): for some reason RS is not getting this right all the time and response["details"] responds with
      // a json with the structure byt no data, so we repeat with a delay. Check upstream if this is intended.
      await Future.delayed(Duration(seconds: 2));
      response = await rsApiCall(mPath, authToken: authToken, params: mParams);
    }
    if (response['retval'] != true) {
      throw Exception('Could not retrieve details for id $identityId');
    }
    return response;
    
  }

  ///  Get identities summaries list.
  ///
  /// Return  [ids] list where to store the identities
  static Future<List<dynamic>> getIdentitiesSummaries(
      AuthToken authToken) async {
    final response = await rsApiCall('/rsIdentity/getIdentitiesSummaries',
        authToken: authToken);
    if (response['retval'] != true) {
      throw Exception('Could not retrieve identities summaries');
    }
    return response['ids'];
  }

  /// Get identities information (name, avatar...).
  ///
  /// [ids] ids of the channels of which to get the informations
  /// return [idsInfo] storage for the identities informations
  static Future<List<dynamic>> getIdentitiesInfo(
      List<String> ids, AuthToken authToken) async {
    final response = await rsApiCall('/rsIdentity/getIdentitiesInfo',
        authToken: authToken, params: {'ids': ids});
    if (!(response is Map)) {
      throw Exception('Could not retrieve the details on getIdentitiesInfo');
    } else if (response['retval'] != true) {
      throw Exception("Can't retrieve getIdentitiesInfo for $ids");
    }
    return response['idsInfo'];
  }

  static Future<Identity> createIdentity(
      Identity identity, RsGxsImage avatar, AuthToken authToken) async {
    var params = {
      'name': identity.name,
      'pseudonimous': !identity.signed,
      'pgpPassword': authToken.password
    };
    if (avatar != null) params['avatar'] = avatar.toJson();
    var b = json.encode(params);
    final response = await http.post(
        'http://127.0.0.1:9092/rsIdentity/createIdentity',
        body: b,
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        });
    if (response.statusCode == 200) {
      if (json.decode(response.body)['retval'])
        return Identity(json.decode(response.body)['id'], identity.signed,
            identity.name, avatar?.base64String ?? null);
      return Identity('');
    } else
      throw Exception('Failed to load response');
  }

static Future<bool> addFriend(
      String sslId, String gpgId, AuthToken authToken) async {
    final response = await http.post(
      'http://localhost:9092/rsPeers/addFriend',
      headers: {
        HttpHeaders.authorizationHeader:
            'Basic ' + base64.encode(utf8.encode('$authToken'))
      },
      body: json.encode({'sslId': sslId, 'gpgId': gpgId}),
    );

    if (response.statusCode == 200) {
    } else {
      throw Exception('Failed to load response');
    }
  }
  static Future<bool> setAutoAddFriendIdsAsContact(
      bool enabled, AuthToken authToken) async {
    final response = await http.post(
        Uri.parse(
            'http://127.0.0.1:9092/rsIdentity/setAutoAddFriendIdsAsContact'),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        },
        body: jsonEncode({"enabled": enabled}));
    if (response.statusCode == 200) {
      if (jsonDecode(response.body)['retval']) return true;
      return false;
    }
    throw Exception("Enable to load response");
  }

  /// Update identity data (name, avatar...)
  ///
  /// id Id of the identity
  /// name New name of the identity
  /// Optional [avatar] New avatar for the identity in RsGxsImage format.
  ///
  /// NOT SUPORTED [pseudonimous] Set to true to make the identity anonymous.
  /// If set to false, updating will require the profile passphrase.
  /// [pgpPassword] Profile passphrase, if non pseudonymous.
  /// @return false on error, true otherwise
  static Future<bool> updateIdentity(
      Identity identity, RsGxsImage avatar, AuthToken authToken) async {
    final params = {
      'name': identity.name,
      'id': identity.mId,
      'pseudonimous': !identity.signed,
      "pgpPassword": authToken.password
    };
    if (identity.avatar != null) params['avatar'] = avatar.toJson();
    var b = json.encode(params);
    final response = await http.post(
        Uri.parse('http://127.0.0.1:9092/rsIdentity/updateIdentity'),
        body: b,
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        });
    if (response.statusCode == 200) {
      if (json.decode(response.body)['retval']) return true;
      return false;
    } else
      throw Exception('Failed to load response');
  }

  /// Set/unset identity as contact
  ///
  /// @param[in] [id] Id of the identity
  /// @param[in] [isContact] true to set, false to unset
  /// @return false on error, true otherwise
  static Future<bool> setAsRegularContact(
      String id, bool isContact, AuthToken authToken) async {
    final response = await rsApiCall('/rsIdentity/setAsRegularContact',
        authToken: authToken, params: {'id': id, 'isContact': isContact});
    return response['retval'];
  }

  static Future<bool> setContact(
      String id, bool makeContact, AuthToken authToken) async {
    var response = await rsApiCall('/rsIdentity/setAsRegularContact',
        authToken: authToken, params: {'id': id, 'isContact': makeContact});
    return response['retval'];
  }

  static Future<bool> deleteIdentity(
      Identity identity, AuthToken authToken) async {
    final response = await http.post(
        Uri.parse('http://127.0.0.1:9092/rsIdentity/deleteIdentity'),
        body: json.encode({'id': identity.mId}),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        });

    if (response.statusCode == 200) {
      if (json.decode(response.body)['retval']) return true;
      return false;
    }
    throw Exception("Something went wrong!");
  }
}

// ----------------------------------------------------------------------------
// Join the network
// ----------------------------------------------------------------------------

class RsPeers {
  /// get the certificate/invite for current identity
  static Future<String> getOwnCert(AuthToken authToken) async {
    final response = await http.get(
        Uri.parse('http://localhost:9092/rsPeers/GetRetroshareInvite'),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        });

    if (response.statusCode == 200) {
      return json.decode(response.body)['retval'];
    } else {
      throw Exception('Failed to load response');
    }
  }

  /// Get RetroShare short invite of the given peer
  ///
  /// [sslId] Id of the peer of which we want to generate an invite,
  ///	a null id (all 0) is passed, an invite for own node is returned.
  /// NOT SUPPORTED [inviteFlags] specify extra data to include in the invite and
  ///	format.
  /// [baseUrl] URL into which to sneak in the RetroShare invite
  ///	radix, this is primarly useful to trick other applications into making
  ///	the invite clickable, or to disguise the RetroShare invite into a
  ///	"normal" looking web link. Used only if formatRadix is false.
  /// @return false if error occurred, true otherwise
  /// @param[out] invite storage for the generated invite
  static Future<String> getShortInvite(AuthToken authToken,
      {String sslId, String baseUrl}) async {
    var mParams = {
      'sslId': sslId,
    };
    if (baseUrl != null) mParams['baseUrl'] = baseUrl;
    final response = await rsApiCall('/rsPeers/GetShortInvite',
        authToken: authToken, params: mParams);
    if (!response['retval']) {
      throw Exception('Could not get short invite for $sslId');
    }
    return response['invite'].substring(31);
  }

  static Future<bool> addSslOnlyFriend(
      AuthToken authToken, String sslId, String pgpId, Map details) async {
    final mPath = '/rsPeers/addSslOnlyFriend';
    final mParams = {'sslId': sslId, 'pgpId': pgpId, 'details': details};
    final response =
        await rsApiCall(mPath, authToken: authToken, params: mParams);

    return response['retval'] == true;
  }

  /// Accepts long invite codes only
  static Future<bool> acceptInvite(
      AuthToken authToken, String base64Payload) async {
    final mPath = '/rsPeers/acceptInvite';
    final mParams = {'invite': base64Payload};
    final response =
        await rsApiCall(mPath, authToken: authToken, params: mParams);

    return response['retval'] == true;
  }

  /// Accepts short invite codes only
  static Future<bool> acceptShortInvite(
      AuthToken authToken, String shortBase64Payload) async {
    final details =
        await RsPeers.parseShortInvite(authToken, shortBase64Payload);

    final mPath = '/rsPeers/addSslOnlyFriend';
    final params = {
      'sslId': details['id'],
      'pgpId': details['gpg_id'],
      'details': details
    };
    final response =
        await rsApiCall(mPath, authToken: authToken, params: params);

    // if (response["retval"] != true)
    //   throw Exception("The invitation could not be accepted");

    // TODO: Fail on RS if public key is not ready

    return response['retval'] == true;
  }

  static Future<void> connectAttempt(String sslId, AuthToken authToken) async {
    final mPath = '/rsPeers/connectAttempt';
    final params = {'sslId': sslId};
    final response =
        await rsApiCall(mPath, authToken: authToken, params: params);

    if (response['retval'] != true) {
      throw Exception('The connection attempt could not be completed');
    }
  }

  static Future<Map<String, dynamic>> parseShortInvite(
      AuthToken authToken, String shortBase64Payload) async {
    var mPath = '/rsPeers/parseShortInvite';
    var params1 = {'invite': shortBase64Payload};
    final response =
        await rsApiCall(mPath, authToken: authToken, params: params1);

    if (!(response is Map) ||
        (response['retval'] != true && response['retval'] != 1)) {
      throw Exception('Could not parse the short invite code');
    } else if (!(response['details'] is Map) ||
        !(response['details']['id'] is String) ||
        !(response['details']['gpg_id'] is String)) {
      throw Exception('Could not parse the short invite code');
    }

    return response['details'];
  }

  static Future<Location> getPeerDetails(
    String peerId,
    AuthToken authToken,
  ) async {
    final mPath = '/rsPeers/getPeerDetails';
    final mParams = {'sslId': peerId};

    final response =
        await rsApiCall(mPath, authToken: authToken, params: mParams);

    if (response['retval'] != true) {
      throw Exception('The details could not be retrieved');
    } else if (!(response['det'] is Map)) {
      throw Exception('The details are not valid');
    }

    return Location(
      response['det']['id'],
      response['det']['gpg_id'],
      response['det']['name'],
      response['det']['location'],
      response['det']['connectState'] != 0 &&
          response['det']['connectState'] != 2 &&
          response['det']['connectState'] != 3,
    );
  }

  static Future<List<String>> getOnlineList(AuthToken authToken) async {
    final mPath = '/rsPeers/getOnlineList';
    final response = await rsApiCall(mPath, authToken: authToken);

    if (response['retval'] != true) {
      throw Exception('The list could not be retrieved');
    } else if (!(response['sslIds'] is List)) {
      throw Exception('The list is not valid');
    }

    return response['sslIds'].cast<String>().toList();
  }

  static Future<List<String>> getFriendList(AuthToken authToken) async {
    final mPath = '/rsPeers/getFriendList';
    final response = await rsApiCall(mPath, authToken: authToken);

    if (response['retval'] != true) {
      throw Exception('The list could not be retrieved');
    } else if (!(response['sslIds'] is List)) {
      throw Exception('The list is not valid');
    }

    return response['sslIds'].cast<String>().toList();
  }

  static Future<List<dynamic>> getGroupInfoList(AuthToken authToken) async {
    final response =
        await rsApiCall('/rsPeers/getGroupInfoList', authToken: authToken);
    if (response['retval'] != true) {
      throw Exception('Could not retrieve groups info');
    }
    return response['groupInfoList'];
  }

  static Future<bool> isOnline(String sslId, AuthToken authToken) async {
    final mPath = '/rsPeers/isOnline';
    final params = {'sslId': sslId};
    final response =
        await rsApiCall(mPath, authToken: authToken, params: params);

    return response['retval'] == true;
  }

  static Future<bool> isFriend(String sslId, AuthToken authToken) async {
    final mPath = '/rsPeers/isFriend';
    final params = {'sslId': sslId};
    final response =
        await rsApiCall(mPath, authToken: authToken, params: params);

    return response['retval'] == true;
  }

  static Future<bool> removeFriend(String pgpId, AuthToken authToken) async {
    final mPath = '/rsPeers/removeFriend';
    final params = {'pgpId': pgpId};
    final response =
        await rsApiCall(mPath, authToken: authToken, params: params);

    if (response['retval'] != true) {
      throw Exception('Remove friend could not be completed');
    }
    return response['retval'];
  }
}

// ----------------------------------------------------------------------------
// Broadcast Discovery
// ----------------------------------------------------------------------------

class RsBroadcastDiscovery {
  static Future<void> enableMulticastListening() async {
    final response =
        await rsApiCall('/rsBroadcastDiscovery/isMulticastListeningEnabled');
    if (!response['retval']) {
      await rsApiCall('/rsBroadcastDiscovery/enableMulticastListening');
    }
  }

  static Future<List> getDiscoveredPeers() async {
    var response;
    try {
      response = await rsApiCall('/rsBroadcastDiscovery/getDiscoveredPeers');
    } catch (error) {
      throw (Exception('Error discovering peers. $error'));
    }
    return response['retval'];
  }
}

// ----------------------------------------------------------------------------
// Individual messaging
// ----------------------------------------------------------------------------

class RsMsgs {
  /// Sends a private message (payload) to the node(s) from the list and returns
  /// an array with the delivery ID
  static Future<List<String>> sendMail(
      String id, List<String> to, Map<String, dynamic> payload) async {
    final mPath = '/rsMsgs/sendMail';
    final mParams = {'from': id, 'to': to, 'mailBody': jsonEncode(payload)};
    final response = await rsApiCall(mPath, params: mParams);

    if (response['errorMsg'] is String && response['errorMsg'].length > 0) {
      throw Exception(response['errorMsg']);
    } else if (response['retval'] < to.length) {
      throw Exception('The message could not be delivered to all recipients');
    }

    if (!(response['trackingIds'] is List)) {
      throw Exception('The message could not be delivered');
    }

    var trackingIds = <String>[];
    for (var item in response['trackingIds'] ?? []) {
      if (item['mMailId'] is String) trackingIds.add(item['mMailId']);
    }

    return trackingIds;
  }

  /// Returns a list of {msgId, srcId, msgflags, msgtags}
  static Future<List<Map<String, dynamic>>> getMessageSummaries() async {
    final response = await rsApiCall('/rsMsgs/getMessageSummaries');

    if (!(response is Map) || !(response['msgList'] is List)) {
      throw Exception('Could not retrieve the message summaries');
    }
    return response['msgList'].cast<Map<String, dynamic>>().toList() ?? [];
  }

  static Future<Map<String, dynamic>> getMessage(String msgId) async {
    if (!(msgId is String) || msgId.isEmpty) {
      throw Exception('Invalid msgId');
    }

    final response =
        await rsApiCall('/rsMsgs/getMessage', params: {'msgId': msgId});

    if (!(response is Map) || response['retval'] != true) return null;
    return response['msg'] ?? {};
  }

  static Future<bool> messageDelete(String msgId) async {
    if (!(msgId is String) || msgId.isEmpty) {
      throw Exception('Invalid msgId');
    }

    final response =
        await rsApiCall('/rsMsgs/MessageDelete', params: {'msgId': msgId});

    if (!(response is Map)) throw Exception('Could not delete');
    return response['retval'] == true;
  }

  static Future<bool> createChatLobby(
      String lobbyName, String idToUse, String lobbyTopic,
      {List<dynamic> inviteList = const [],
      bool public = true,
      bool anonymous = true}) async {
    var req = ReqCreateChatLobby()
      ..lobbyName = lobbyName
      ..lobbyTopic = lobbyTopic
      ..lobbyIdentity = idToUse;
    if (inviteList.isNotEmpty) {
      req.invitedFriends =
          List.from(inviteList.map((location) => location.rsPeerId));
    }
    // Lobby flags
    // Public = 4
    // Public + signed = 20
    // Private = 0
    // Private + signed = 16
    var privacyType = 0;
    if (public && anonymous) {
      privacyType = 4;
    } else if (public && !anonymous) {
      privacyType = 20;
    } else if (!public && !anonymous) privacyType = 16;
    req.lobbyPrivacyType = privacyType;

    final response =
        await rsApiCall('/rsMsgs/createChatLobby', params: req.toJson());
    if (response['retval']['xint64'] > 0) {
      setLobbyAutoSubscribe(response['retval']['xint64']);
      return true;
    }
    throw Exception('Failed to load response');
  }

  static Future<void> setLobbyAutoSubscribe(String lobbyId,
      [bool subs = true]) async {
    var chatLobbyId = ChatLobbyId();
    chatLobbyId.xstr64 = lobbyId;
    var params = {'lobby_id': chatLobbyId.toJson(), 'autoSubscribe': subs};

    final response =
        await rsApiCall('/rsMsgs/setLobbyAutoSubscribe', params: params);
  }

  static Future<bool> getLobbyAutoSubscribe(String lobbyId,
      [bool subs = true]) async {
    var chatLobbyId = ChatLobbyId();
    chatLobbyId.xstr64 = lobbyId;
    var params = {'lobby_id': chatLobbyId.toJson()};

    final response =
        await rsApiCall('/rsMsgs/setLobbyAutoSubscribe', params: params);
    return response['retval'];
  }

  static Future<void> unsubscribeChatLobby(
      String lobbyId, AuthToken authToken) async {
    var chatLobbyId = ChatLobbyId();
    chatLobbyId.xstr64 = lobbyId;
    var params = {
      'lobby_id': chatLobbyId.toJson(),
    };

    final response = await rsApiCall('/rsMsgs/unsubscribeChatLobby',
        authToken: authToken, params: params);
  }

  static Future<bool> sendMessage(String chatId, String msgTxt,
      [ChatIdType type = ChatIdType.number2_]) async {
    var id = ChatId();
    id.type = type;
    if (type == ChatIdType.number2_) {
      id.distantChatId = chatId;
    } else if (type == ChatIdType.number3_) {
      id.lobbyId = ChatLobbyId();
      id.lobbyId.xstr64 = chatId;
    } else {
      throw ('Chat type not supported');
    }

    var params = {'id': id.toJson(), 'msg': msgTxt};
    final response = await rsApiCall('/rsMsgs/sendChat', params: params);
    return response['retval'];
  }

  static Future<dynamic> c(Chat chat, AuthToken authToken) async {
    var params = {
      'to': chat.interlocutorId,
      'from': chat.ownIdToUse,
      'notify': true
    };
    final response = await rsApiCall('/rsMsgs/initiateDistantChatConnexion',
        authToken: authToken, params: params);
    return response;
  }

  /// Get the chat status from [pid]
  ///  #define RS_DISTANT_CHAT_STATUS_UNKNOWN			0x0000
  ///  #define RS_DISTANT_CHAT_STATUS_TUNNEL_DN   		0x0001
  ///  #define RS_DISTANT_CHAT_STATUS_CAN_TALK			0x0002
  ///  #define RS_DISTANT_CHAT_STATUS_REMOTELY_CLOSED 	0x0003
  static Future<DistantChatPeerInfo> getDistantChatStatus(
      String pid, ChatMessage aaa) async {
    final response = await rsApiCall('/rsMsgs/sendChat', params: {'pid': pid});
    if (response['retval'] != true) {
      throw ('Error on getDistantChatStatus()');
    }
    return DistantChatPeerInfo.fromJson(response['info']);
  }

  static Future<List<VisibleChatLobbyRecord>> getUnsubscribedChatLobbies(
      AuthToken authToken) async {
    var unsubscribedChatLobby = <VisibleChatLobbyRecord>[];
    var chatLobbies = await rsApiCall('/rsMsgs/getListOfNearbyChatLobbies',
        authToken: authToken, params: {'pid': pid});
    for (VisibleChatLobbyRecord chat in chatLobbies['publicLobbies']) {
      var autosubs = await getLobbyAutoSubscribe(chat.lobbyId.xstr64);
      if (!autosubs) {
        unsubscribedChatLobby.add(chat);
      }
    }
    return unsubscribedChatLobby;
  }

  static Future<bool> joinChatLobby(
      String chatId, String idToUse, AuthToken authToken) async {
    final response = await http.post(
      'http://127.0.0.1:9092/rsMsgs/joinVisibleChatLobby',
      headers: {
        HttpHeaders.authorizationHeader:
            'Basic ' + base64.encode(utf8.encode('$authToken'))
      },
      body: json.encode({
        'lobby_id': {'xstr64': chatId},
        'own_id': idToUse
      }),
    );

    if (response.statusCode == 200) {
      setLobbyAutoSubscribe(chatId);
      return json.decode(response.body)['retval'];
    } else
      throw Exception('Failed to load response');
  }

  static Future<dynamic> getChatLobbyInfo(
      String lobbyId, AuthToken authToken) async {
    final response = await http.post(
        Uri.parse('http://127.0.0.1:9092/rsMsgs/getChatLobbyInfo'),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        },
        body: json.encode({
          'id': {'xstr64': lobbyId}
        }));

    if (response.statusCode == 200) {
      if (json.decode(response.body)['retval']) {
        return json.decode(response.body)['info'];
      }
      throw Exception('Something went wrong!');
    } else
      throw Exception('Failed to load response');
  }

  static Future<dynamic> getSubscribedChatLobbies(AuthToken authToken) async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:9092/rsMsgs/getChatLobbyList'),
      headers: {
        HttpHeaders.authorizationHeader:
            'Basic ' + base64.encode(utf8.encode('$authToken'))
      },
    );
    if (response.statusCode == 200) {
      return json.decode(response.body)['cl_list'];
    } else
      throw Exception('Failed to load response');
  }

  static Future<dynamic> getLobbyParticipants(
      String lobbyId, AuthToken authToken) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:9092/rsMsgs/getChatLobbyInfo'),
      headers: {
        HttpHeaders.authorizationHeader:
            'Basic ' + base64.encode(utf8.encode('$authToken'))
      },
      body: json.encode({
        'id': {'xstr64': lobbyId}
      }),
    );
    if (response.statusCode == 200) {
      return json.decode(response.body)['info']['gxs_ids'];
    }
    throw Exception('Failed to load response');
  }
}

// ----------------------------------------------------------------------------
// Messages broadcasted to channels
// ----------------------------------------------------------------------------

class RsGxsChannel {
  static Future<void> subscribe(String channelId) async {
    final response = await rsApiCall('/rsGxsChannels/subscribeToChannel',
        params: {'channelId': channelId, 'subscribe': true});

    if (!(response is Map) || response['retval'] != true) {
      throw Exception('Could not subscribe');
    }
  }

  static Future<void> unsubscribe(String channelId) async {
    final response = await rsApiCall('/rsGxsChannels/subscribeToChannel',
        params: {'channelId': channelId, 'subscribe': false});

    if (!(response is Map) || response['retval'] != true) {
      throw Exception('Could not unsubscribe');
    }
  }

  /// Fetch the list of all contents, along with their ID, status and timestamp.
  /// Returns a map like { mMsgId: "", mmOrigMsgId: "", mMsgFlags: 0x1234, mMsgStatus: 0x1234 }
  static Future<List<Map<String, dynamic>>> getContentSummaries(
      String channelId) async {
    if (!(channelId is String) || channelId.isEmpty) {
      throw Exception('Invalid channel ID');
    }

    final response = await rsApiCall('/rsGxsChannels/getContentSummaries',
        params: {'channelId': channelId});

    if (!(response is Map) || response['retval'] != true) {
      throw Exception('Could not subscribe');
    } else if (!(response['summaries'] is List)) {
      throw Exception('Invalid summaries');
    }

    return (response['summaries'] as List)
        .cast<Map<String, dynamic>>()
        .toList();
  }

  static Future<List<Map<String, dynamic>>> getChannelsSummaries() async {
    final response = await rsApiCall('/rsGxsChannels/getChannelsSummaries');

    if (!(response is Map) || response['retval'] != true) {
      throw Exception('Could not retrieve the summary');
    } else if (!(response['channels'] is List)) {
      throw Exception('Invalid channels');
    }

    return (response['channels'] as List).cast<Map<String, dynamic>>().toList();
  }

  /// Fetches the given messages from the Channel
  static Future<List<Map<String, dynamic>>> getChannelItems(
      String channelId, List<String> msgIds) async {
    if (!(channelId is String) || channelId.isEmpty) {
      throw Exception('Invalid channel ID');
    } else if (!(msgIds is List)) {
      return getChannelContent(channelId);
    } // all new

    final response = await rsApiCall('/rsGxsChannels/getChannelContent',
        params: {'channelId': channelId, 'contentsIds': msgIds});

    if (!(response is Map) || response['retval'] != true) {
      throw Exception('Could not subscribe');
    } else if (!(response['posts'] is List)) throw Exception('Invalid posts');

    return (response['posts'] as List).cast<Map<String, dynamic>>().toList();
  }

  /// Fetches the relevant messages from the Channel
  static Future<List<Map<String, dynamic>>> getChannelContent(
      String channelId) async {
    final summaries = await getContentSummaries(channelId);
    final msgIds = summaries
        .map((item) => item['mMsgId'] ?? '')
        .toList()
        .cast<String>()
        .asMap();

    if (!(channelId is String) || channelId.isEmpty) {
      throw Exception('Invalid channel ID');
    }

    // TODO: filter by relevant stuff only

    final response = await rsApiCall('/rsGxsChannels/getChannelContent',
        params: {'channelId': channelId, 'contentsIds': msgIds});

    if (!(response is Map) || response['retval'] != true) {
      throw Exception('Could not subscribe');
    } else if (!(response['posts'] is List)) throw Exception('Invalid posts');

    return (response['posts'] as List).cast<Map<String, dynamic>>().toList();
  }

  /// Sends a public message to all the channel, on the given thread ID.
  /// Returns the commentMessageId
  static Future<String> createComment(String channelId, String threadId,
      String identityId, Map<String, dynamic> payload) async {
    if (!(channelId is String) || channelId.isEmpty) {
      throw Exception('Invalid channel ID');
    } else if (!(threadId is String) || threadId.isEmpty) {
      throw Exception('Invalid thread ID');
    } else if (!(payload is Map)) throw Exception('Invalid comment payload');

    final response = await rsApiCall('/rsGxsChannels/createCommentV2', params: {
      'authorId': identityId,
      'channelId': channelId,
      'threadId': threadId,
      'comment': payload,
      'parentId': threadId,
      // "origCommentId": "",
    });

    if (!(response is Map) || response['retval'] != true) {
      throw Exception('Could not create the comment');
    } else if (response['errorMessage'] is String &&
        response['errorMessage'].length > 0) {
      throw Exception(response['errorMessage']);
    } else if (!(response['commentMessageId'] is String)) {
      throw Exception('Invalid commentMessageId');
    }

    return response['commentMessageId'];
  }
}

// ----------------------------------------------------------------------------
// Forums
// ----------------------------------------------------------------------------

class RsGxsForum {
  static Future<bool> toggleSubscribeToForum(
      String forumId, bool subscribe, AuthToken authToken) async {
    final response = await rsApiCall('/rsGxsForums/subscribeToForum',
        authToken: authToken, params: {'forumId': forumId});
    return response['retval'];
  }

  static Future<String> createForumV2(String name,
      {String circleId = ''}) async {
    var circleType =
        circleId.isEmpty ? RsGxsCircleType.PUBLIC : RsGxsCircleType.EXTERNAL;

    final response = await rsApiCall('/rsGxsForums/createForumV2', params: {
      'name': name,
      'circleType': circleType.index,
      'circleId': circleId
    });
    if (response['retval'] != true) {
      throw Exception('Forum could not be created.');
    }
    return response['forumId'];
  }

  static Future<String> createPost(
      String forumId, String title, String mBody, String authorId,
      [String parentId = '', String origPostId = '']) async {
    final response = await rsApiCall('/rsGxsForums/createPost', params: {
      'forumId': forumId,
      'title': title,
      'mBody': mBody,
      'authorId': authorId,
      'parentId': parentId,
      'origPostId': origPostId
    });
    if (response['retval'] != true) {
      throw Exception('${response["errorMessage"]}');
    }
    return response['postMsgId'];
  }

  static Future<List<dynamic>> getForumsInfo(List<String> forumIds) async {
    final response = await rsApiCall('/rsGxsForums/getForumsInfo',
        params: {'forumIds': forumIds});
    if (response['retval'] != true) {
      throw Exception('Could not retrieve forums info');
    }
    return response['forumsInfo'];
  }

  static Future<List<dynamic>> getForumsSummaries() async {
    final response = await rsApiCall('/rsGxsForums/getForumsSummaries');
    if (response['retval'] != true) {
      throw Exception('Could not retrieve forum summaries');
    }
    return response['forums'];
  }

  static Future<List<RsMsgMetaData>> getForumMsgMetaData(String forumId) async {
    final response = await rsApiCall('/rsGxsForums/getForumMsgMetaData',
        params: {'forumId': forumId});
    if (response['retval'] != true) {
      throw Exception('Could not retrieve messages metadata');
    }
    return [
      for (Map<String, dynamic> meta in response['msgMetas'])
        RsMsgMetaData.fromJson(meta)
    ];
  }

  static Future<List<dynamic>> getForumContent(
      String forumId, List<String> msgIds) async {
    final response = await rsApiCall('/rsGxsForums/getForumContent',
        params: {'forumId': forumId, 'msgsIds': msgIds});
    if (response['retval'] != true) {
      throw Exception('Could not retrieve messages content');
    }
    return response['msgs'];
  }

  static Future<bool> subscribeToForum(String forumId, bool subscribe) async {
    final response = await rsApiCall('/rsGxsForums/subscribeToForum',
        params: {'forumId': forumId, 'subscribe': true});
    if (response['retval'] != true) {
      throw Exception('Could not subscribe to forum');
    }
    return response['retval'] == true;
  }

  static void requestSynchronization() async {
    try {
      rsApiCall('/rsGxsForums/requestSynchronization');
    } catch (err) {
      print('/rsGxsForums/requestSynchronization not available $err');
    }
  }

  static Future<List<dynamic>> getChildPosts(
      String forumId, String parentId) async {
    final response = await rsApiCall('/rsGxsForums/getChildPosts',
        params: {'forumId': forumId, 'parentId': parentId});
    if (response['retval']['errorNumber'] != 0) {
      throw Exception(
          'Could not retrieve child posts for $forumId/$parentId. Response: $response');
    }
    List childPosts = response['childPosts'];
    // sort last comment on top
    childPosts.sort((a, b) => publishTs(b).compareTo(publishTs(a)));

//    final postsMeta =
//        childPosts.map((item) => item["mMeta"]).toList();
    return childPosts;
  }

  static Future<int> distantSearchRequest(String matchString) async {
    dbg('Starting distant search for: ' + matchString);

    final response = await rsApiCall('/rsGxsForums/distantSearchRequest',
        params: {'matchString': matchString});
    if (response['retval']['errorNumber'] != 0) {
      throw Exception("Error: ${errToStr(response["retval"])}");
    }
    return response['searchId'];
  }

  static Future<List<dynamic>> localSearch(String matchString) async {
    dbg('Executing local search for: ' + matchString);

    final response = await rsApiCall('/rsGxsForums/localSearch',
        params: {'matchString': matchString});
    if (response['retval']['errorNumber'] != 0) {
      throw Exception("Error: ${errToStr(response["retval"])}");
    }

    dbg('Results found:');
    dbg(response['searchResults'].toString());
    return response['searchResults'];
  }
}

String publishTs(Map post) {
  String pts = post['mMeta']['mPublishTs']['xstr64'];
  return pts;
}
// ----------------------------------------------------------------------------
// Files
// ----------------------------------------------------------------------------

class RsFiles {
// period defaults to 10 years
  static Future<bool> extraFileHash(String localPath,
      [int period = 31536000 * 10, int flags = 0x40]) async {
    final response = await rsApiCall('/rsFiles/ExtraFileHash', params: {
      'localpath': localPath,
      'period': {'xstr64': period.toString()},
      'flags': flags
    });
    if (response['retval'] != true) {
      throw Exception('File hash process failed.');
    }
    return response['retval'] == true;
  }

  static Future<Map> extraFileStatus(String localPath) async {
    final response = await rsApiCall('/rsFiles/ExtraFileStatus',
        params: {'localpath': localPath});
    if (response['retval'] != true) {
      print('Could not retrieve file status for $localPath');
    }
    return response['info'];
  }

  static Future<String> exportFileLink(
      String fileHash, int fileSize, String fileName) async {
    final params = {
      'fileHash': fileHash,
      'fileSize': fileSize,
      'fileName': fileName
    };

    final response = await rsApiCall('/rsFiles/exportFileLink', params: params);
    if (response['retval']['errorNumber'] != 0) {
      throw Exception('Could not export file link. $params');
    }

    return response['link'];
  }

  static Future<Map> parseFilesLink(String link) async {
    final response =
        await rsApiCall('/rsFiles/parseFilesLink', params: {'link': link});
    if (response['retval']['errorNumber'] != 0) {
      throw Exception('Could not parse file link: $link');
    }

    return response['collection'];
  }

  static Future<void> requestFiles(Map collection) async {
    print('Requesting $collection');
    final response = await rsApiCall('/rsFiles/requestFiles',
        params: {'collection': collection});
    if (response['retval']['errorNumber'] != 0) {
      throw Exception('Files request failed.');
    }
  }

  static Future<void> setDownloadDirectory(String path) async {
    final response = await rsApiCall('/rsFiles/setDownloadDirectory',
        params: {'path': path});
    if (response['retval'] != true) {
      throw Exception('Error setting download directory. Response: $response');
    }
  }

  static Future<String> getDownloadDirectory() async {
    var response = await rsApiCall('/rsFiles/getDownloadDirectory');
    print('Download dir: $response');
    if (!(response is Map)) throw FormatException();
    return response['retval'];
  }

  static Future<String> getPartialsDirectory() async {
    var response = await rsApiCall('/rsFiles/getPartialsDirectory');
    print('Partials dir: $response');
    if (!(response is Map)) throw FormatException();
    return response['retval'];
  }

  static Future<List> getSharedDirectories() async {
    var response = await rsApiCall('/rsFiles/getSharedDirectories');
    print('Shared dirs: $response');
    if (response['retval'] != true) {
      throw Exception('Error getting shared directories. Response: $response');
    }
    return response['dirs'];
  }

  /// Remove directory from shared list
  ///
  /// [dir] Path of the directory to remove from shared list
  /// return false if something failed, true otherwhise
  static Future<bool> removeSharedDirectory(String dir) async {
    final response =
        await rsApiCall('/rsFiles/removeSharedDirectory', params: {'dir': dir});

    return response['retval'];
  }

  static Future<void> setPartialsDirectory(String path) async {
    final response = await rsApiCall('/rsFiles/setPartialsDirectory',
        params: {'path': path});
    if (response['retval'] != true) {
      throw Exception(
          'Error setting partial download directory. Response: $response');
    }
  }

  /// Add shared directory
  ///
  /// [filename] is the directory or file you want to share. [virtualname] is
  /// the name will be shown on RS, if null will be `basename(filename)`. For
  /// [shareflags] read RS documentation.
  ///
  /// return false if something failed or already shared, true if shared
  static Future<bool> addSharedDirectory(String filename,
      {String virtualname, int shareflags = 0x80}) async {
    print('Adding shared directory: ');

    virtualname ??= basename(filename);

    final response = await rsApiCall('/rsFiles/addSharedDirectory', params: {
      'dir': {
        'filename': filename,
        'virtualname': virtualname,
        'shareflags': shareflags
      }
    });

    if (response['retval'] != true) {
      throw Exception(
          'Error adding shared directory $filename . $response\nMay be already added');
    }
    return response['retval'];
  }

  static Future<List> fileDownloads() async {
    final response = await rsApiCall('/rsFiles/FileDownloads');
    return response['hashs'];
  }

  /// Request directory details, subsequent multiple call may be used to
  /// explore a whole directory tree.
  ///
  /// @param[out] details Storage for directory details
  /// @param[in] handle element handle 0 for root, pass the content of
  ///	DirDetails::child[x].ref after first call to explore deeper, be aware
  ///	that is not a real pointer but an index used internally by RetroShare.
  /// @param[in] NOTSUPORTED flags file search flags RS_FILE_HINTS_*
  /// @return false if error occurred, true otherwise
  static Future<DirDetails> requestDirDetails([int handle]) async {
    Map response;
    if (handle == null) {
      response = await rsApiCall('/rsFiles/requestDirDetails');
    } else {
      response = await rsApiCall('/rsFiles/requestDirDetails', params: {
        'handle': handle
//        "handle": {"xstr64": handle}
      });
    }
    if (response['retval'] != true) {
      throw Exception('Error requesting Dir Details.');
    }
    return DirDetails.fromJson(response['details']);
  }

  /// Get file details
  ///
  /// [hash] file identifier
  /// [hintflags] filtering hint ( RS_FILE_HINTS_UPLOAD|...| RS_FILE_HINTS_EXTRA
  /// |RS_FILE_HINTS_LOCAL )
  /// Out info storage for file information
  /// return true if file found, false otherwise
  ///
  /// WARNING: for a downloaded file could return false
  static Future<Map> fileDetails(String hash, [int hintflags = 0x10]) async {
    final response = await rsApiCall('/rsFiles/FileDetails',
        params: {'hash': hash, 'hintflags': hintflags});
    if (response['retval'] != true) {
      print('File with hash $hash not found. Retval: ${response["retval"]}');
    }
    return response['info'];
  }

  /// Check if we already have a file
  ///
  /// [hash] SHA1 file identifier
  /// Return info storage for the possibly found file information
  static Future<Map> alreadyHaveFile(String hash) async {
    final response =
        await rsApiCall('/rsFiles/alreadyHaveFile', params: {'hash': hash});
    if (response['retval'] != true) {
      return null;
    }
    return response['info'];
  }

  /// Remove file from extra fila shared list
  ///
  /// [hash] hash of the file to remove
  /// return false on error, true otherwise
  static Future<Map> extraFileRemove(String hash) async =>
      await rsApiCall('/rsFiles/extraFileRemove', params: {'hash': hash});

  /// Search the whole reachable network for similar file
  ///
  /// An [RsPerceptualSearchResultEvent] is emitted when matching results
  ///	arrives from the network
  /// [localFilePath] path of local file to search for similarity on
  ///	the network
  /// [distance] maximum hamming distance tolerated to consider a file
  ///	similar
  /// Returns [searchId] storage for search id, useful to track search events
  ///	and retrieve search results
  static Future<int> perceptualSearchRequest(
      String localFilePath, int distance) async {
    print('Loading file for perceptual search: $localFilePath');
    var response = await rsApiCall('/rsFiles/perceptualSearchRequest',
        params: {'localFilePath': localFilePath, 'distance': distance});
    print('perceptualSearchRequest');
    print(response);
    if (!(response is Map)) {
      throw FormatException();
    } else if (response['retval']['errorNumber'] != 0) {
      throw Exception(response['retval']);
    }
    return response['searchId'];
  }

  /// Force shared directories check
  /// [add_safe_delay] Schedule the check 20 seconds from now, to ensure to capture files written just now.
  static Future<void> forceDirectoryCheck(
          {bool add_safe_delay = false}) async =>
      await rsApiCall('/rsFiles/forceDirectoryCheck',
          params: {'add_safe_delay': add_safe_delay});
}

class RsJsonApi {
  static Future<bool> isAuthTokenValid(AuthToken authToken) async {
    final response = await http.get(
        Uri.parse('http://localhost:9092/RsJsonApi/getAuthorizedTokens'),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$authToken'))
        });

    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  static Future<bool> checkExistingAuthTokens(
      String locationId, String password, AuthToken authToken) async {
    final response = await http.get(
        Uri.parse('http://localhost:9092/RsJsonApi/getAuthorizedTokens'),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$locationId:$password'))
        });

    if (response.statusCode == 200) {
      for (LinkedHashMap<String, dynamic> token
          in json.decode(response.body)['retval']) {
        if (token['key'] + ":" + token['value'] == authToken.toString())
          return true;
      }
      authorizeNewToken(locationId, password, authToken);
      return true;
    } else if (response.statusCode == 401) {
      return false;
    }

    throw Exception('Failed to load response');
  }

  static Future<void> authorizeNewToken(
      String locationId, String password, AuthToken authToken) async {
    final response = await http.post(
        Uri.parse('http://localhost:9092/RsJsonApi/authorizeUser'),
        body: json.encode({'token': '$authToken'}),
        headers: {
          HttpHeaders.authorizationHeader:
              'Basic ' + base64.encode(utf8.encode('$locationId:$password'))
        });

    if (response.statusCode == 200) {
      return;
    }

    throw Exception('Failed to load response');
  }

  static Future<Map> version() async {
    return await rsApiCall('/rsJsonApi/version');
  }
}

// ----------------------------------------------------------------------------
// Config
// ----------------------------------------------------------------------------

class RsConfig {
  static Future<Map> getMaxDataRates() async {
    var response = await rsApiCall('/rsConfig/GetMaxDataRates');
    if (response['retval'] != 1) print('Could not get data rates');
    final rates = {'inKb': response['inKb'], 'outKb': response['outKb']};
    return rates;
  }

  static Future<Map> setMaxDataRates(int downKb, int upKb) async {
    var response = await rsApiCall('/rsConfig/SetMaxDataRates',
        params: {'downKb': downKb, 'upKb': upKb});
    if (response['retval'] != 1) print('Could not set data rates $response');
    return response;
  }
}

// ----------------------------------------------------------------------------
// Circles
// ----------------------------------------------------------------------------

class RsGxsCircles {
  /// Create new circle
  ///
  /// [circleName] String containing cirlce name
  /// [circleType] Circle type
  /// [restrictedId] Optional id of a pre-existent circle that see the
  ///	created circle. Meaningful only if circleType == EXTERNAL, must be null
  ///	in all other cases.
  /// [authorId] Optional author of the circle.
  /// [gxsIdMembers] GXS ids of the members of the circle.
  /// [localMembers] PGP ids of the members if the circle.
  /// Returns circleId Optional storage to output created circle id
  static Future<String> createCircle(
    String circleName,
    RsGxsCircleType circleType, {
    String restrictedId,
    List<String> gxsIdMembers,
    List<String> localMembers,
  }) async {
    var response = await rsApiCall('/rsGxsCircles/createCircle', params: {
      'circleName': circleName,
      'circleType': circleType.index,
      'restrictedId': restrictedId,
      'gxsIdMembers': gxsIdMembers,
      'localMembers': localMembers,
    });

    if (!(response is Map)) {
      throw Exception('Could not retrieve the details');
    } else if (response['retval'] != true) {
      throw Exception('Error creating circle $circleName . $response');
    }

    return response['circleId'];
  }

  /// Request circle membership, or accept circle invitation
  ///
  /// [ownGxsId] Id of own identity to introduce to the circle.
  /// Default value actual [authIdentityId]
  /// [circleId] Id of the circle to which ask for inclusion
  /// return false if something failed, true otherwhise
  static Future<bool> requestCircleMembership(String id, String circleId,
      [String ownGxsId]) async {
    if (!(circleId is String) || circleId.isEmpty) {
      throw Exception('Invalid circle ID');
    }

    final response = await rsApiCall('/rsGxsCircles/requestCircleMembership',
        params: {'ownGxsId': ownGxsId ?? id, 'circleId': circleId});

    if (!(response is Map)) throw Exception('Could not subscribe');
    return response['retval'];
  }

  /// Invite identities to circle (admin key is required)
  ///
  /// [identities] ids of the identities to invite
  /// [circleId] Id of the circle you own and want to invite ids in
  /// return false if something failed, true otherwhise
  static Future<bool> inviteIdsToCircle(
      List<String> identities, String circleId) async {
    print('Inviting ids ' + identities.toString() + ' to circleId');
    final response = await rsApiCall('/rsGxsCircles/inviteIdsToCircle',
        params: {'identities': identities, 'circleId': circleId});

    if (!(response is Map)) {
      throw Exception('Could not invite Ids $identities to circle $circleId');
    }
    return response['retval'];
  }

  /// Get circle details. Memory cached
  ///
  /// [id] Id of the circle
  /// return details Storage for the circle details
  static Future<Map<String, dynamic>> getCircleDetails(String id) async {
    if (id.isEmpty) throw Exception('Invalid circle ID');

    final response =
        await rsApiCall('/rsGxsCircles/getCircleDetails', params: {'id': id});

    if (!(response is Map)) {
      throw Exception('Could not retrieve the details');
    } else if (response['retval'] != true) {
      throw Exception("Can't retrieve details for $id");
    }
    return response['details'];
  }

  /// @brief Get circles summaries list.
  ///
  /// return circles list where to store the circles summaries
  static Future<List<dynamic>> getCirclesSummaries() async {
    print('Starting getCirclesSummaries');
    final response = await rsApiCall('/rsGxsCircles/getCirclesSummaries');
    if (response['retval'] != true) {
      throw Exception('Could not retrieve circle summaries');
    }
    return response['circles'];
  }

  /// Get circles information
  ///
  /// [circlesIds] ids of the circles of which to get the informations
  /// return [circlesInfo] storage for the circles informations
  static Future<List<dynamic>> getCirclesInfo(List<String> circlesIds) async {
    final response = await rsApiCall('/rsGxsCircles/getCirclesInfo',
        params: {'circlesIds': circlesIds});
    if (!(response is Map)) {
      throw Exception('Error calling getCirclesInfo');
    } else if (!response['retval']) {
      throw Exception("Can't getCirclesInfo for " + circlesIds.toString());
    }
    return response['circlesInfo'];
  }

  /// Remove identities from circle (admin key is required)
  ///
  /// [identities] ids of the identities to remove from the invite list
  /// [circleId] Id of the circle you own and want to revoke identities
  /// return false if something failed, true otherwhise
  static Future<bool> revokeIdsFromCircle(
      List<String> identities, String circleId) async {
    final response = await rsApiCall('/rsGxsCircles/revokeIdsFromCircle',
        params: {'identities': identities, 'circleId': circleId});
    if (!(response is Map)) {
      throw Exception('Error revoking $identities from $circleId');
    }
    return response['retval'];
  }

  /// Leave given circle
  ///
  /// [ownGxsId] Own id to remove from the circle. Default value actual [authIdentityId]
  /// [circleId] Id of the circle to leave
  /// return false if something failed, true otherwhise
  static Future<bool> cancelCircleMembership(String id, String circleId,
      [String ownGxsId]) async {
    final response = await rsApiCall('/rsGxsCircles/cancelCircleMembership',
        params: {'ownGxsId': ownGxsId ?? id, 'circleId': circleId});
    if (!(response is Map)) {
      throw Exception('Error cancelCircleMembership $ownGxsId from $circleId');
    }
    return response['retval'];
  }

  /// Edit own existing circle
  ///
  /// Parameter inout [circleInfo] is the same object that the recieved with
  /// getCirclesInfo. Circle data with modifications, storage for data
  ///	updatedad during the operation.
  /// Return a circle info.
  static Future<Map<String, dynamic>> editCircle(
      Map<String, dynamic> circleInfo) async {
    final response = await rsApiCall('/rsGxsCircles/editCircle',
        params: {'cData': circleInfo});
    if (!(response is Map)) {
      throw Exception('Error editCircle $circleInfo');
    } else if (!response['retval']) {
      throw Exception('Could not edit editCircle $circleInfo');
    }
    return response['cData'];
  }
}

// ----------------------------------------------------------------------------
// UTILITIES
// ----------------------------------------------------------------------------
/*
/// Used to wait until file hash event
///
/// Using the [RsEvents.registerEventsHandler] we wait until a
/// [RsEventType.FILE_HASHING_COMPLETED] for the defined [filePath] is fired.
///
/// It return the file hash.
Future<String> waitForFileHash(filePath, AuthToken authToken) async {
  print('Start hashing file $filePath');
  var resultHash = '';
  // Use this to avoid a bug hashing the first file after RS restart that don't throw the event never
  await RsFiles.forceDirectoryCheck();
  // Repeat after 20 seconds to be sure
  await RsFiles.forceDirectoryCheck(add_safe_delay: true);
  var subscription = await RsEvents.registerEventsHandler(
    RsEventType.FILE_HASHING_COMPLETED,
    (StreamSubscription stream, Map<String, dynamic> event) {
      print('Found Hashing event: $event');
      if (event['mFilePath'] == filePath) {
        resultHash = event['mFileHash'];
        stream.cancel();
        stream = null;
      }
    },
    authToken,
  );

  // Used to wait until result hash is done
  do {
    print('Waiting for hash...');
    await Future.delayed(Duration(milliseconds: 500));
  } while (resultHash.isEmpty);

  // This method to wait until stream close doesnt work...
  // await Future.wait([subscription.asFuture()])
  //     .whenComplete(() {
  //   print("File hashed succesful");
  // });

  print('Resulting hash for $filePath is $resultHash');
  return resultHash;
}
*/

/// Used to know if a directory is in the list of getSharedDirectories
Future<bool> isDirectoryAlreadyShared(String filePath) async {
  for (var share in await RsFiles.getSharedDirectories()) {
    if (share['filename'] == filePath) {
      print('$filePath already shared');
      return true;
    }
  }
  return false;
}

/// Search recursivelly on the RS directory tree until find a specified path or
/// file returning it information
Future<DirDetails> findAFileOnDiretoryTree(String filePath,
    [int handle = 0]) async {
  var directory = await RsFiles.requestDirDetails(handle);
  if (directory.children.isNotEmpty) {
    // First check to see if requested filePath is in this directory
    for (var child in directory.children) {
      if (child['name'] == filePath) {
        return RsFiles.requestDirDetails(child['handle']);
      }
    }
    // If isn't start the recursive search
    for (var child in directory.children) {
      var childDetails =
          await findAFileOnDiretoryTree(filePath, child['handle']);
      if (childDetails != null) return childDetails;
    }
  }
  return null;
}

Future<bool> waitUntilOnline(String sslId, AuthToken authToken,
    [int attempts = 10]) async {
  // wait a bit until the peer accepts us
  for (; attempts >= 0; attempts--) {
    try {
      var ids = await RsPeers.getOnlineList(authToken);
      if ((ids is List) && ids.contains(sslId)) return true; // done

      // else => no news yet => retry
      await RsPeers.connectAttempt(sslId, authToken).catchError((_) {});

      if (attempts == 0) {
        // do not wait on the last iteration
        return false;
      }

      // else => retry
      await Future.delayed(Duration(seconds: 5));
    } catch (err) {
      await Future.delayed(Duration(seconds: 5));
    }
  }
  return false;
}

Future<bool> waitUntilSent(String msgId, [int attempts = 5]) async {
  try {
    for (; attempts >= 0; attempts--) {
      final response = await RsMsgs.getMessage(msgId);
      if (response == null) {
        return false;
      } else if (!(response is Map) ||
          (response['msgflags'] & RS_MSG_PENDING) != 0) {
        // still pending
        await Future.delayed(Duration(seconds: 5));
        continue;
      }
      return true;
    }
    return false;
  } catch (err) {
    return false;
  }
}

/// Execute befriending with a Tier1
///
/// It try to befriend with a [hostname] on the [baseUrl]
/// `http://$hostname.$baseUrl/GetRetroshareInvite` and
/// `http://$hostname.$baseUrl/acceptInvite`
///
/// Return true if success false otherwhise printing an error.
Future<bool> befriendTier1(AuthToken authToken,
    {String hostname = 'michelangiolillo',
    String baseUrl = 'elrepo.io/rsPeers'}) async {
  print('Befriending $hostname');

  // Get RS invite process
  var reqUrl = 'http://$hostname.$baseUrl/GetRetroshareInvite';
  try {
    final response = await http.get(Uri.parse(reqUrl));
    Map decoded;
    if (response.statusCode == 200) {
      decoded = jsonDecode(response.body);
    } else {
      print(
          'Error receiving Tier1 invite. Status code: ${response.statusCode}');
      return false;
    }
    String tier1Cert = decoded['retval'];
    RsPeers.acceptInvite(authToken, tier1Cert);
  } catch (error) {
    print('Cannot reach $hostname. Error: $error');
    return false;
  }

  // Send RS invite process
  final myInvite = await RsPeers.getOwnCert(authToken);
  reqUrl = 'http://$hostname.$baseUrl/acceptInvite';
  Map jsonCert = {'invite': myInvite};
  try {
    final response =
        await http.post(Uri.parse(reqUrl), body: jsonEncode(jsonCert));
    if (response.statusCode != 200) {
      print('Error sending cert to $hostname. Code ${response.statusCode}');
    }
    return true;
  } catch (error) {
    print('Connection to $hostname failed. Error: $error ');
  }
  return false;
}

Future<void> addFriends(AuthToken authToken, List peers) async {
  Map peer;
  for (peer in peers) {
    print('Adding Friend: $peer');
    final sslId = peer['mSslId'];
    final alreadyFriend = await RsPeers.isFriend(sslId, authToken);
    if (!alreadyFriend) {
      final pgpFingerprint = peer['mPgpFingerprint'];
      final pgpId = pgpFingerprint.substring(pgpFingerprint.length - 16);
      final uri = peer['mLocator']['urlString'];
      final parsedUri = Uri.parse(uri);
      final details = {
        'localAddr': parsedUri.host,
        'localPort': parsedUri.port
      };
      RsPeers.addSslOnlyFriend(authToken, sslId, pgpId, details);
    }
  }
}

/// Function that get peers on local network and add its as friends
Future<void> broadcastPromiscuity(AuthToken authToken) async {
  print('Runing Broadcarst Promisquity');
  final peers = await RsBroadcastDiscovery.getDiscoveredPeers();
  if (peers.isNotEmpty) {
    print('Peers found: $peers');
    addFriends(authToken, peers);
  }
}

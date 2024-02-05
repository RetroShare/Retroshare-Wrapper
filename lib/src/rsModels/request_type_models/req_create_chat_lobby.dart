
part of rsModels;

class ReqCreateChatLobby {
   String? lobbyName;

   String? lobbyIdentity;

   String? lobbyTopic;

  List<String> invitedFriends = [];

   int? lobbyPrivacyType;
  ReqCreateChatLobby();

  @override
  String toString() {
    return 'ReqCreateChatLobby[lobbyName=$lobbyName, lobbyIdentity=$lobbyIdentity, lobbyTopic=$lobbyTopic, invitedFriends=$invitedFriends, lobbyPrivacyType=$lobbyPrivacyType, ]';
  }

  ReqCreateChatLobby.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lobbyName = json['lobby_name'];
    lobbyIdentity = json['lobby_identity'];
    lobbyTopic = json['lobby_topic'];
    invitedFriends = (json['invited_friends'] == null)
        ? null
        : (json['invited_friends']).cast<String>();
    lobbyPrivacyType = json['lobby_privacy_type'];
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (lobbyName != null) json['lobby_name'] = lobbyName;
    if (lobbyIdentity != null) json['lobby_identity'] = lobbyIdentity;
    if (lobbyTopic != null) json['lobby_topic'] = lobbyTopic;
    if (invitedFriends != null) json['invited_friends'] = invitedFriends;
    if (lobbyPrivacyType != null) json['lobby_privacy_type'] = lobbyPrivacyType;
    return json;
  }
}

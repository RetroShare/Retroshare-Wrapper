part of rsModels;

class VisibleChatLobbyRecord {
  ChatLobbyId? lobbyId;

  String? lobbyName;

  String? lobbyTopic;

  List<String> participatingFriends = [];

  int? totalNumberOfPeers;

  RstimeT? lastReportTime;

  int? lobbyFlags;
  VisibleChatLobbyRecord();

  @override
  String toString() {
    return 'VisibleChatLobbyRecord[lobbyId=$lobbyId, lobbyName=$lobbyName, lobbyTopic=$lobbyTopic, participatingFriends=$participatingFriends, totalNumberOfPeers=$totalNumberOfPeers, lastReportTime=$lastReportTime, lobbyFlags=$lobbyFlags, ]';
  }

  VisibleChatLobbyRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lobbyId = (json['lobby_id'] == null)
        ? null
        : ChatLobbyId.fromJson(json['lobby_id']);
    lobbyName = json['lobby_name'];
    lobbyTopic = json['lobby_topic'];
    participatingFriends = (json['participating_friends'] == null)
        ? null
        : (json['participating_friends'] as List).cast<String>();
    totalNumberOfPeers = json['total_number_of_peers'];
    lastReportTime = (json['last_report_time'] == null)
        ? null
        : RstimeT.fromJson(json['last_report_time']);
    lobbyFlags = json['lobby_flags'];
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (lobbyId != null) json['lobby_id'] = lobbyId;
    if (lobbyName != null) json['lobby_name'] = lobbyName;
    if (lobbyTopic != null) json['lobby_topic'] = lobbyTopic;
    if (participatingFriends != null) {
      json['participating_friends'] = participatingFriends;
    }
    if (totalNumberOfPeers != null) {
      json['total_number_of_peers'] = totalNumberOfPeers;
    }
    if (lastReportTime != null) json['last_report_time'] = lastReportTime;
    if (lobbyFlags != null) json['lobby_flags'] = lobbyFlags;
    return json;
  }
}

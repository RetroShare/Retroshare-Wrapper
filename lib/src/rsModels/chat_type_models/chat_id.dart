part of rsModels;

class ChatId {
  String broadcastStatusPeerId;

  ChatIdType type;
  //enum typeEnum {  0,  1,  2,  3,  4,  };{

  String peerId;

  String distantChatId;

  ChatLobbyId lobbyId;
  ChatId();

  @override
  String toString() {
    return 'ChatId[broadcastStatusPeerId=$broadcastStatusPeerId, type=$type, peerId=$peerId, distantChatId=$distantChatId, lobbyId=$lobbyId, ]';
  }

  ChatId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    broadcastStatusPeerId = json['broadcast_status_peer_id'];
    type = (json['type'] == null) ? null : ChatIdType.fromJson(json['type']);
    peerId = json['peer_id'];
    distantChatId = json['distant_chat_id'];
    lobbyId = (json['lobby_id'] == null)
        ? null
        : ChatLobbyId.fromJson(json['lobby_id']);
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (broadcastStatusPeerId != null) {
      json['broadcast_status_peer_id'] = broadcastStatusPeerId;
    }
    if (type != null) json['type'] = type;
    if (peerId != null) json['peer_id'] = peerId;
    if (distantChatId != null) json['distant_chat_id'] = distantChatId;
    if (lobbyId != null) json['lobby_id'] = lobbyId;
    return json;
  }
}

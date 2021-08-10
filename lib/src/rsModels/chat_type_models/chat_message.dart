part of rsModels;

class ChatMessage {
  ChatId chat_id;
  String broadcast_peer_id;
  String lobby_peer_gxs_id;
  String peer_alternate_nickname;
  int chatflags;
  int sendTime;
  int recvTime;
  String msg;
  bool incoming;
  bool online;

  ChatMessage();

  ChatMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    chat_id =
        (json['chat_id'] == null) ? null : ChatId.fromJson(json['chat_id']);
    broadcast_peer_id = json['broadcast_peer_id'];
    lobby_peer_gxs_id = json['lobby_peer_gxs_id'];
    peer_alternate_nickname = json['peer_alternate_nickname'];
    chatflags = json['chatflags'];
    sendTime = json['sendTime'];
    recvTime = json['recvTime'];
    msg = json['msg'];
    incoming = json['incoming'];
    online = json['online'];
  }

  bool isLobbyMessage() => chat_id.lobbyId.xstr64 != '0';
}

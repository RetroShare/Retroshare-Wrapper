// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retroshare_api_wrapper/src/rsModels/chat_type_models/chat_id.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @JsonKey(name: 'chat_id') ChatId? chatId,
    @JsonKey(name: 'broadcast_peer_id') String? broadcastPeerId,
    @JsonKey(name: 'lobby_peer_gxs_id') String? lobbyPeerGxsId,
    @JsonKey(name: 'peer_alternate_nickname') String? peerAlternateNickname,
    int? chatflags,
    int? sendTime,
    int? recvTime,
    String? msg,
    bool? incoming,
    bool? online,
  }) = _ChatMessage;
  const ChatMessage._();

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  /// Custom method (like the original `isLobbyMessage`)
  bool isLobbyMessage() => chatId?.lobbyId?.xstr64 != '0';
}

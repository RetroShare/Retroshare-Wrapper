// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retroshare_api_wrapper/src/rsModels/chat_type_models/chat_lobby_id.dart';

part 'chat_id.freezed.dart';
part 'chat_id.g.dart';

enum ChatIdType {
  @JsonValue(0)
  type0,
  @JsonValue(1)
  type1,
  @JsonValue(2)
  type2,
  @JsonValue(3)
  type3,
  @JsonValue(4)
  type4;

  factory ChatIdType.fromJson(dynamic json) {
    return ChatIdType.values.firstWhere(
      (e) => e.index == json,
      orElse: () => throw ArgumentError('Unknown ChatIdType value: $json'),
    );
  }

  int toJson() => index;
}

@freezed
class ChatId with _$ChatId {
  const factory ChatId({
    @JsonKey(name: 'broadcast_status_peer_id') String? broadcastStatusPeerId,
    ChatIdType? type,
    @JsonKey(name: 'peer_id') String? peerId,
    @JsonKey(name: 'distant_chat_id') String? distantChatId,
    @JsonKey(name: 'lobby_id') ChatLobbyId? lobbyId,
  }) = _ChatId;
  const ChatId._();

  factory ChatId.fromJson(Map<String, dynamic> json) => _$ChatIdFromJson(json);

  @override
  String toString() {
    return 'ChatId[broadcastStatusPeerId=$broadcastStatusPeerId, '
        'type=$type, peerId=$peerId, '
        'distantChatId=$distantChatId, lobbyId=$lobbyId]';
  }
}

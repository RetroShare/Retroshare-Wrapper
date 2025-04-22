import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_lobby_id.freezed.dart';
part 'chat_lobby_id.g.dart';

@freezed
class ChatLobbyId with _$ChatLobbyId {
  const factory ChatLobbyId({
    num? xint64,
    String? xstr64,
  }) = _ChatLobbyId;

  factory ChatLobbyId.fromJson(Map<String, dynamic> json) =>
      _$ChatLobbyIdFromJson(json);
}

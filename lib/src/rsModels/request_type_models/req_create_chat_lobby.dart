// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_create_chat_lobby.freezed.dart';
part 'req_create_chat_lobby.g.dart';

@freezed
class ReqCreateChatLobby with _$ReqCreateChatLobby {
  const factory ReqCreateChatLobby({
    @JsonKey(name: 'lobby_name') String? lobbyName,
    @JsonKey(name: 'lobby_identity') String? lobbyIdentity,
    @JsonKey(name: 'lobby_topic') String? lobbyTopic,
    @Default([]) @JsonKey(name: 'invited_friends') List<String> invitedFriends,
    @JsonKey(name: 'lobby_privacy_type') int? lobbyPrivacyType,
  }) = _ReqCreateChatLobby;

  factory ReqCreateChatLobby.fromJson(Map<String, dynamic> json) =>
      _$ReqCreateChatLobbyFromJson(json);
}

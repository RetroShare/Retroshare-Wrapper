// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_create_chat_lobby.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqCreateChatLobbyImpl _$$ReqCreateChatLobbyImplFromJson(
        Map<String, dynamic> json) =>
    _$ReqCreateChatLobbyImpl(
      lobbyName: json['lobby_name'] as String?,
      lobbyIdentity: json['lobby_identity'] as String?,
      lobbyTopic: json['lobby_topic'] as String?,
      invitedFriends: (json['invited_friends'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      lobbyPrivacyType: (json['lobby_privacy_type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReqCreateChatLobbyImplToJson(
        _$ReqCreateChatLobbyImpl instance) =>
    <String, dynamic>{
      'lobby_name': instance.lobbyName,
      'lobby_identity': instance.lobbyIdentity,
      'lobby_topic': instance.lobbyTopic,
      'invited_friends': instance.invitedFriends,
      'lobby_privacy_type': instance.lobbyPrivacyType,
    };

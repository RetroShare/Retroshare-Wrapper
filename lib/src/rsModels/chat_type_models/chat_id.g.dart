// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatIdImpl _$$ChatIdImplFromJson(Map<String, dynamic> json) => _$ChatIdImpl(
      broadcastStatusPeerId: json['broadcast_status_peer_id'] as String?,
      type: json['type'] == null ? null : ChatIdType.fromJson(json['type']),
      peerId: json['peer_id'] as String?,
      distantChatId: json['distant_chat_id'] as String?,
      lobbyId: json['lobby_id'] == null
          ? null
          : ChatLobbyId.fromJson(json['lobby_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatIdImplToJson(_$ChatIdImpl instance) =>
    <String, dynamic>{
      if (instance.broadcastStatusPeerId case final value?)
        'broadcast_status_peer_id': value,
      if (instance.type case final value?) 'type': value,
      if (instance.peerId case final value?) 'peer_id': value,
      if (instance.distantChatId case final value?) 'distant_chat_id': value,
      if (instance.lobbyId case final value?) 'lobby_id': value,
    };

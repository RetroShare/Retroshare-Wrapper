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
      'broadcast_status_peer_id': instance.broadcastStatusPeerId,
      'type': instance.type,
      'peer_id': instance.peerId,
      'distant_chat_id': instance.distantChatId,
      'lobby_id': instance.lobbyId,
    };

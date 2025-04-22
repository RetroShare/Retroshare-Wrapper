// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance_chat_peer_nfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistantChatPeerInfoImpl _$$DistantChatPeerInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$DistantChatPeerInfoImpl(
      toId: json['to_id'] as String?,
      ownId: json['own_id'] as String?,
      peerId: json['peer_id'] as String?,
      status: (json['status'] as num?)?.toInt(),
      pendingItems: (json['pending_items'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DistantChatPeerInfoImplToJson(
        _$DistantChatPeerInfoImpl instance) =>
    <String, dynamic>{
      'to_id': instance.toId,
      'own_id': instance.ownId,
      'peer_id': instance.peerId,
      'status': instance.status,
      'pending_items': instance.pendingItems,
    };

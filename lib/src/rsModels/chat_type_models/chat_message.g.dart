// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      chatId: json['chat_id'] == null
          ? null
          : ChatId.fromJson(json['chat_id'] as Map<String, dynamic>),
      broadcastPeerId: json['broadcast_peer_id'] as String?,
      lobbyPeerGxsId: json['lobby_peer_gxs_id'] as String?,
      peerAlternateNickname: json['peer_alternate_nickname'] as String?,
      chatflags: (json['chatflags'] as num?)?.toInt(),
      sendTime: (json['sendTime'] as num?)?.toInt(),
      recvTime: (json['recvTime'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      incoming: json['incoming'] as bool?,
      online: json['online'] as bool?,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'chat_id': instance.chatId,
      'broadcast_peer_id': instance.broadcastPeerId,
      'lobby_peer_gxs_id': instance.lobbyPeerGxsId,
      'peer_alternate_nickname': instance.peerAlternateNickname,
      'chatflags': instance.chatflags,
      'sendTime': instance.sendTime,
      'recvTime': instance.recvTime,
      'msg': instance.msg,
      'incoming': instance.incoming,
      'online': instance.online,
    };

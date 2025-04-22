// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      chatId: json['chatId'] as String?,
      chatName: json['chatName'] as String?,
      ownIdToUse: json['ownIdToUse'] as String,
      interlocutorId: json['interlocutorId'] as String,
      lobbyTopic: json['lobbyTopic'] as String?,
      isPublic: json['isPublic'] as bool,
      numberOfParticipants: (json['numberOfParticipants'] as num?)?.toInt(),
      lobbyFlags: (json['lobbyFlags'] as num?)?.toInt(),
      autoSubscribe: json['autoSubscribe'] as bool?,
      unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'chatName': instance.chatName,
      'ownIdToUse': instance.ownIdToUse,
      'interlocutorId': instance.interlocutorId,
      'lobbyTopic': instance.lobbyTopic,
      'isPublic': instance.isPublic,
      'numberOfParticipants': instance.numberOfParticipants,
      'lobbyFlags': instance.lobbyFlags,
      'autoSubscribe': instance.autoSubscribe,
      'unreadCount': instance.unreadCount,
    };

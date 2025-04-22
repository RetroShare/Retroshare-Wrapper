// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visible_chat_lobby_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisibleChatLobbyRecordImpl _$$VisibleChatLobbyRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibleChatLobbyRecordImpl(
      lobbyId: json['lobby_id'] == null
          ? null
          : ChatLobbyId.fromJson(json['lobby_id'] as Map<String, dynamic>),
      lobbyName: json['lobby_name'] as String?,
      lobbyTopic: json['lobby_topic'] as String?,
      participatingFriends: (json['participating_friends'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      totalNumberOfPeers: (json['total_number_of_peers'] as num?)?.toInt(),
      lastReportTime: json['last_report_time'] == null
          ? null
          : RstimeT.fromJson(json['last_report_time'] as Map<String, dynamic>),
      lobbyFlags: (json['lobby_flags'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VisibleChatLobbyRecordImplToJson(
        _$VisibleChatLobbyRecordImpl instance) =>
    <String, dynamic>{
      'lobby_id': instance.lobbyId,
      'lobby_name': instance.lobbyName,
      'lobby_topic': instance.lobbyTopic,
      'participating_friends': instance.participatingFriends,
      'total_number_of_peers': instance.totalNumberOfPeers,
      'last_report_time': instance.lastReportTime,
      'lobby_flags': instance.lobbyFlags,
    };

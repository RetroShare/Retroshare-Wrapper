// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retroshare_api_wrapper/src/rs_models.dart';

part 'visible_chat_lobby_record.freezed.dart';
part 'visible_chat_lobby_record.g.dart';

@freezed
class VisibleChatLobbyRecord with _$VisibleChatLobbyRecord {
  const factory VisibleChatLobbyRecord({
    @JsonKey(name: 'lobby_id') ChatLobbyId? lobbyId,
    @JsonKey(name: 'lobby_name') String? lobbyName,
    @JsonKey(name: 'lobby_topic') String? lobbyTopic,
    @Default([])
    @JsonKey(name: 'participating_friends')
    List<String> participatingFriends,
    @JsonKey(name: 'total_number_of_peers') int? totalNumberOfPeers,
    @JsonKey(name: 'last_report_time') RstimeT? lastReportTime,
    @JsonKey(name: 'lobby_flags') int? lobbyFlags,
  }) = _VisibleChatLobbyRecord;

  factory VisibleChatLobbyRecord.fromJson(Map<String, dynamic> json) =>
      _$VisibleChatLobbyRecordFromJson(json);
}

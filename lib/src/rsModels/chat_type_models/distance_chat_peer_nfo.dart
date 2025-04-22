// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'distance_chat_peer_nfo.freezed.dart';
part 'distance_chat_peer_nfo.g.dart';

@freezed
class DistantChatPeerInfo with _$DistantChatPeerInfo {
  const factory DistantChatPeerInfo({
    @JsonKey(name: 'to_id') String? toId,
    @JsonKey(name: 'own_id') String? ownId,
    @JsonKey(name: 'peer_id') String? peerId,
    int? status,
    @JsonKey(name: 'pending_items') int? pendingItems,
  }) = _DistantChatPeerInfo;

  factory DistantChatPeerInfo.fromJson(Map<String, dynamic> json) =>
      _$DistantChatPeerInfoFromJson(json);
}

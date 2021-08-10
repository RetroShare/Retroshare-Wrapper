part of rsModels;

class DistantChatPeerInfo {
  String toId;

  String ownId;

  String peerId;

  int status;

  int pendingItems;
  DistantChatPeerInfo();

  @override
  String toString() {
    return 'DistantChatPeerInfo[toId=$toId, ownId=$ownId, peerId=$peerId, status=$status, pendingItems=$pendingItems, ]';
  }

  DistantChatPeerInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    toId = json['to_id'];
    ownId = json['own_id'];
    peerId = json['peer_id'];
    status = json['status'];
    pendingItems = json['pending_items'];
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (toId != null) json['to_id'] = toId;
    if (ownId != null) json['own_id'] = ownId;
    if (peerId != null) json['peer_id'] = peerId;
    if (status != null) json['status'] = status;
    if (pendingItems != null) json['pending_items'] = pendingItems;
    return json;
  }
}

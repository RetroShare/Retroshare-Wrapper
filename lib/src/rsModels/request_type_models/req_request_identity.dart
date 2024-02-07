part of rsModels;

class ReqRequestIdentity {
  String? id;

  List<String> peers = [];
  ReqRequestIdentity();

  @override
  String toString() {
    return 'ReqRequestIdentity[id=$id, peers=$peers, ]';
  }

  ReqRequestIdentity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    peers = (json['peers'] == null) ? null : (json['peers']).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    if (peers != null) json['peers'] = peers;
    return json;
  }
}

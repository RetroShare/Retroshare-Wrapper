part of rsModels;

class ChatLobbyId {
  num xint64;

  String xstr64;
  ChatLobbyId();

  @override
  String toString() {
    return 'ChatLobbyId[xint64=$xint64, xstr64=$xstr64, ]';
  }

  ChatLobbyId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    xint64 = json['xint64'];
    xstr64 = json['xstr64'];
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (xint64 != null) json['xint64'] = xint64;
    if (xstr64 != null) json['xstr64'] = xstr64;
    return json;
  }
}

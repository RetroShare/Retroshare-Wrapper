part of rsModels;

class RstimeT {
  num xint64;

  String xstr64;
  RstimeT();

  @override
  String toString() {
    return 'RstimeT[xint64=$xint64, xstr64=$xstr64, ]';
  }

  RstimeT.fromJson(Map<String, dynamic> json) {
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

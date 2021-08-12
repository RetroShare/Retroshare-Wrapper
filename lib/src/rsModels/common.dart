
part of rsModels;

class RsInt64 {
  String xstr64;
  int xint64;

  RsInt64({this.xint64 = 0, this.xstr64 = '0'});

  RsInt64.fromJson(Map<String, dynamic> jsonObj)
      : this(xstr64: jsonObj['xstr64'], xint64: jsonObj['xint64']);
}

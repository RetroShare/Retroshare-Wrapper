
part of rsModels;

class RsGxsImage {
   int? mSize;
    Uint8List? mData;
    String? base64String;

  RsGxsImage(this.mData) {
    mSize = mData.length;
    base64String = base64.encode(mData);
  }

  RsGxsImage.fromJson(Map<String, dynamic>? json) {
    mSize = json['mSize'];
    base64String = json['mData']['base64'];
  }

  Map<String, dynamic> toJson() => {
        'mSize': mSize,
        'mData': {'base64': base64String},
      };
}

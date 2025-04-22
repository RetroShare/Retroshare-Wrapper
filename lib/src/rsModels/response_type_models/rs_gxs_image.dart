import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rs_gxs_image.freezed.dart';

@freezed
class RsGxsImage with _$RsGxsImage {
  @Assert(
    'mData != null || base64String != null',
    'Either mData or base64String must be provided',
  )
  const factory RsGxsImage({
    int? mSize,
    Uint8List? mData,
    String? base64String,
  }) = _RsGxsImage;

  const RsGxsImage._();

  factory RsGxsImage.fromBytes(Uint8List data) => RsGxsImage(
        mData: data,
        mSize: data.length,
        base64String: base64Encode(data),
      );

  factory RsGxsImage.fromJson(Map<String, dynamic> json) {
    final base64Str = json['mData']?['base64'] as String?;
    return RsGxsImage(
      mSize: json['mSize'] as int?,
      base64String: base64Str,
      mData: base64Str != null ? base64Decode(base64Str) : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'mSize': mSize,
        'mData': base64String != null ? {'base64': base64String} : null,
      };
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rs_identity.freezed.dart';
part 'rs_identity.g.dart';

@freezed
class Identity with _$Identity {
  const factory Identity({
    required String mId, // RsGxsId
    String? pgpId, // RspgpID
    String? name,
    String? avatar, // This is an alias for _avatar field
    required bool signed,
    required bool isContact,
  }) = _Identity;

  factory Identity.fromJson(Map<String, dynamic> json) =>
      _$IdentityFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rs_accounts.freezed.dart';
part 'rs_accounts.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required String locationId,
    required String pgpId,
    required String locationName,
    required String pgpName,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_request_identity.freezed.dart';
part 'req_request_identity.g.dart';

@freezed
class ReqRequestIdentity with _$ReqRequestIdentity {
  const factory ReqRequestIdentity({
    String? id,
    @Default([]) List<String> peers,
  }) = _ReqRequestIdentity;

  factory ReqRequestIdentity.fromJson(Map<String, dynamic> json) =>
      _$ReqRequestIdentityFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'common.freezed.dart';
part 'common.g.dart';

@freezed
class RsInt64 with _$RsInt64 {
  const factory RsInt64({
    @Default('0') String xstr64,
    @Default(0) int xint64,
  }) = _RsInt64;
  const RsInt64._();

  factory RsInt64.fromJson(Map<String, dynamic> json) =>
      _$RsInt64FromJson(json);
}

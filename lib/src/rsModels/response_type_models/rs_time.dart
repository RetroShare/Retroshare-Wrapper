import 'package:freezed_annotation/freezed_annotation.dart';

part 'rs_time.freezed.dart';
part 'rs_time.g.dart';

@freezed
class RstimeT with _$RstimeT {
  const factory RstimeT({
    num? xint64,
    String? xstr64,
  }) = _RstimeT;

  factory RstimeT.fromJson(Map<String, dynamic> json) =>
      _$RstimeTFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rs_location.freezed.dart';
part 'rs_location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    @Default('') String rsPeerId,
    @Default('') String rsGpgId,
    @Default('') String accountName,
    @Default('') String locationName,
    @Default(false) bool isOnline,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

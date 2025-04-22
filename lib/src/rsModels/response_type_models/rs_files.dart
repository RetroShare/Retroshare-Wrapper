import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retroshare_api_wrapper/src/rs_models.dart';

part 'rs_files.freezed.dart';
part 'rs_files.g.dart';

@freezed
class DirDetails with _$DirDetails {
  const factory DirDetails({
    required List<dynamic> parent_groups,
    required List<Map<String, dynamic>> children,
    required RsInt64 handle,
    required RsInt64 parentHandle,
    required int prow,
    required int type,
    required String id,
    required String name,
    required String hash,
    required String path,
    required RsInt64 size,
    required int mtime,
    required int flags,
    required int max_mtime,
  }) = _DirDetails;

  factory DirDetails.fromJson(Map<String, dynamic> json) =>
      _$DirDetailsFromJson(json);
}

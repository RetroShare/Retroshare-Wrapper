// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RsInt64Impl _$$RsInt64ImplFromJson(Map<String, dynamic> json) =>
    _$RsInt64Impl(
      xstr64: json['xstr64'] as String? ?? '0',
      xint64: (json['xint64'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RsInt64ImplToJson(_$RsInt64Impl instance) =>
    <String, dynamic>{
      'xstr64': instance.xstr64,
      'xint64': instance.xint64,
    };

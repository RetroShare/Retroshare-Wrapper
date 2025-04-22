// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rs_files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DirDetailsImpl _$$DirDetailsImplFromJson(Map<String, dynamic> json) =>
    _$DirDetailsImpl(
      parent_groups: json['parent_groups'] as List<dynamic>,
      children: (json['children'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      handle: RsInt64.fromJson(json['handle'] as Map<String, dynamic>),
      parentHandle:
          RsInt64.fromJson(json['parentHandle'] as Map<String, dynamic>),
      prow: (json['prow'] as num).toInt(),
      type: (json['type'] as num).toInt(),
      id: json['id'] as String,
      name: json['name'] as String,
      hash: json['hash'] as String,
      path: json['path'] as String,
      size: RsInt64.fromJson(json['size'] as Map<String, dynamic>),
      mtime: (json['mtime'] as num).toInt(),
      flags: (json['flags'] as num).toInt(),
      max_mtime: (json['max_mtime'] as num).toInt(),
    );

Map<String, dynamic> _$$DirDetailsImplToJson(_$DirDetailsImpl instance) =>
    <String, dynamic>{
      'parent_groups': instance.parent_groups,
      'children': instance.children,
      'handle': instance.handle,
      'parentHandle': instance.parentHandle,
      'prow': instance.prow,
      'type': instance.type,
      'id': instance.id,
      'name': instance.name,
      'hash': instance.hash,
      'path': instance.path,
      'size': instance.size,
      'mtime': instance.mtime,
      'flags': instance.flags,
      'max_mtime': instance.max_mtime,
    };

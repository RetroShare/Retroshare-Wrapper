// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rs_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      rsPeerId: json['rsPeerId'] as String? ?? '',
      rsGpgId: json['rsGpgId'] as String? ?? '',
      accountName: json['accountName'] as String? ?? '',
      locationName: json['locationName'] as String? ?? '',
      isOnline: json['isOnline'] as bool? ?? false,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'rsPeerId': instance.rsPeerId,
      'rsGpgId': instance.rsGpgId,
      'accountName': instance.accountName,
      'locationName': instance.locationName,
      'isOnline': instance.isOnline,
    };

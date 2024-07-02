// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileRequestImpl _$$ProfileRequestImplFromJson(Map<String, dynamic> json) =>
    _$ProfileRequestImpl(
      themeId: (json['themeId'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      descriptionHobby: json['descriptionHobby'] as String?,
      yob: json['yob'] as String?,
      gender: json['gender'] as String?,
      color: json['color'] as String?,
      type: json['type'] as String?,
      material: json['material'] as String?,
      typeOrigin: json['typeOrigin'] as String?,
    );

Map<String, dynamic> _$$ProfileRequestImplToJson(
        _$ProfileRequestImpl instance) =>
    <String, dynamic>{
      'themeId': instance.themeId,
      'fullName': instance.fullName,
      'descriptionHobby': instance.descriptionHobby,
      'yob': instance.yob,
      'gender': instance.gender,
      'color': instance.color,
      'type': instance.type,
      'material': instance.material,
      'typeOrigin': instance.typeOrigin,
    };

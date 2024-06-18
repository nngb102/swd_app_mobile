// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kid_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KidProfileModelImpl _$$KidProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KidProfileModelImpl(
      id: (json['id'] as num).toInt(),
      themeId: (json['themeId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      descriptionHobby: json['descriptionHobby'] as String?,
      yob: json['yob'] as String?,
      gender: json['gender'] as String?,
      color: json['color'] as String?,
      type: json['type'] as String?,
      material: json['material'] as String?,
      typeOrigin: json['typeOrigin'] as String?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$KidProfileModelImplToJson(
        _$KidProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'themeId': instance.themeId,
      'userId': instance.userId,
      'fullName': instance.fullName,
      'descriptionHobby': instance.descriptionHobby,
      'yob': instance.yob,
      'gender': instance.gender,
      'color': instance.color,
      'type': instance.type,
      'material': instance.material,
      'typeOrigin': instance.typeOrigin,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

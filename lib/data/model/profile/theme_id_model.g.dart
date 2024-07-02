// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeIdModel _$ThemeIdModelFromJson(Map<String, dynamic> json) => ThemeIdModel(
      fullName: json['fullName'] as String,
      descriptionHobby: json['descriptionHobby'] as String,
      yob: json['yob'] as String,
      gender: json['gender'] as String,
      color: json['color'] as String,
      type: json['type'] as String,
      material: json['material'] as String,
      toyOrigin: json['toyOrigin'] as String,
      themeId: (json['themeId'] as num).toInt(),
    );

Map<String, dynamic> _$ThemeIdModelToJson(ThemeIdModel instance) =>
    <String, dynamic>{
      'themeId': instance.themeId,
      'fullName': instance.fullName,
      'descriptionHobby': instance.descriptionHobby,
      'yob': instance.yob,
      'gender': instance.gender,
      'color': instance.color,
      'type': instance.type,
      'material': instance.material,
      'toyOrigin': instance.toyOrigin,
    };

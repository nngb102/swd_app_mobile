// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'themes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemesModelImpl _$$ThemesModelImplFromJson(Map<String, dynamic> json) =>
    _$ThemesModelImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ThemesModelImplToJson(_$ThemesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

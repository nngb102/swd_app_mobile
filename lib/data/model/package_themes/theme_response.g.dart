// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeResponseImpl _$$ThemeResponseImplFromJson(Map<String, dynamic> json) =>
    _$ThemeResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      themes: (json['themes'] as List<dynamic>)
          .map((e) => ThemesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ThemeResponseImplToJson(_$ThemeResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'themes': instance.themes.map((e) => e.toJson()).toList(),
    };

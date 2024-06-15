// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageResponseImpl _$$PackageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      packages: (json['packages'] as List<dynamic>)
          .map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PackageResponseImplToJson(
        _$PackageResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'packages': instance.packages.map((e) => e.toJson()).toList(),
    };

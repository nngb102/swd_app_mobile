// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthLoginImpl _$$AuthLoginImplFromJson(Map<String, dynamic> json) =>
    _$AuthLoginImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      accessToken: json['accessToken'] as String?,
      user: json['user'] == null
          ? null
          : UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthLoginImplToJson(_$AuthLoginImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'accessToken': instance.accessToken,
      'user': instance.user?.toJson(),
    };

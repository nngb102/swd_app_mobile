// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      kidProfilesByUserId: (json['kidProfilesByUserId'] as List<dynamic>)
          .map((e) =>
              KidProfileByUserIdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'kidProfilesByUserId':
          instance.kidProfilesByUserId.map((e) => e.toJson()).toList(),
    };

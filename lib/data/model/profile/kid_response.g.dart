// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KidResponseImpl _$$KidResponseImplFromJson(Map<String, dynamic> json) =>
    _$KidResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      kidProfiles: (json['kidProfiles'] as List<dynamic>?)
          ?.map((e) => KidProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KidResponseImplToJson(_$KidResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'kidProfiles': instance.kidProfiles?.map((e) => e.toJson()).toList(),
    };

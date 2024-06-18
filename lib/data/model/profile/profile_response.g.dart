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
      kidProfiles: (json['kidProfiles'] as List<dynamic>?)
          ?.map((e) => KidProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      adult: (json['adult'] as List<dynamic>?)
          ?.map((e) => AdultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'kidProfiles': instance.kidProfiles?.map((e) => e.toJson()).toList(),
      'adult': instance.adult?.map((e) => e.toJson()).toList(),
    };

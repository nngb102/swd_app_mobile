// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileRequest _$ProfileRequestFromJson(Map<String, dynamic> json) =>
    ProfileRequest(
      fullName: json['fullName'] as String,
      descriptionHobby: json['descriptionHobby'] as String,
      yob: json['yob'] as String,
      gender: json['gender'] as String,
      color: json['color'] as String,
      type: json['type'] as String,
      material: json['material'] as String,
      toyOrigin: json['toyOrigin'] as String,
    );

Map<String, dynamic> _$ProfileRequestToJson(ProfileRequest instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'descriptionHobby': instance.descriptionHobby,
      'yob': instance.yob,
      'gender': instance.gender,
      'color': instance.color,
      'type': instance.type,
      'material': instance.material,
      'toyOrigin': instance.toyOrigin,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mystery_box_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MysteryBoxResponseImpl _$$MysteryBoxResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MysteryBoxResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      mysteryBoxs: (json['mysteryBoxs'] as List<dynamic>)
          .map((e) => MysteryBoxModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MysteryBoxResponseImplToJson(
        _$MysteryBoxResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'mysteryBoxs': instance.mysteryBoxs.map((e) => e.toJson()).toList(),
    };

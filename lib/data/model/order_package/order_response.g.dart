// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeResponseImpl _$$ThemeResponseImplFromJson(Map<String, dynamic> json) =>
    _$ThemeResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      order: OrderModel.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ThemeResponseImplToJson(_$ThemeResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'order': instance.order.toJson(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeResponseImpl _$$ThemeResponseImplFromJson(Map<String, dynamic> json) =>
    _$ThemeResponseImpl(
      order: OrderModel.fromJson(json['order'] as Map<String, dynamic>),
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ThemeResponseImplToJson(_$ThemeResponseImpl instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
      'success': instance.success,
      'message': instance.message,
    };

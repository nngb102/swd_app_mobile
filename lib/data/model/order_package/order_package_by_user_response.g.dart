// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_package_by_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPackageByUserResponseImpl _$$OrderPackageByUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPackageByUserResponseImpl(
      packageOrders: (json['packageOrders'] as List<dynamic>?)
          ?.map((e) => PackageOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$OrderPackageByUserResponseImplToJson(
        _$OrderPackageByUserResponseImpl instance) =>
    <String, dynamic>{
      'packageOrders': instance.packageOrders?.map((e) => e.toJson()).toList(),
      'success': instance.success,
      'message': instance.message,
    };

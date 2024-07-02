// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageOrderModelImpl _$$PackageOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageOrderModelImpl(
      packageInPeriodIds: json['packageInPeriodIds'] as List<dynamic>?,
      id: (json['id'] as num?)?.toInt(),
      kidId: (json['kidId'] as num?)?.toInt(),
      packageId: (json['packageId'] as num?)?.toInt(),
      totalPrice: json['totalPrice'] as String?,
      nameOfAdult: json['nameOfAdult'] as String?,
      nameOfKid: json['nameOfKid'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$PackageOrderModelImplToJson(
        _$PackageOrderModelImpl instance) =>
    <String, dynamic>{
      'packageInPeriodIds': instance.packageInPeriodIds,
      'id': instance.id,
      'kidId': instance.kidId,
      'packageId': instance.packageId,
      'totalPrice': instance.totalPrice,
      'nameOfAdult': instance.nameOfAdult,
      'nameOfKid': instance.nameOfKid,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

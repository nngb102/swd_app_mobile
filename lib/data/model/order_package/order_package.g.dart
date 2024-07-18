// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderPackage _$OrderPackageFromJson(Map<String, dynamic> json) => OrderPackage(
      kidId: json['kidId'] as String,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      nameOfAdult: json['nameOfAdult'] as String,
      nameOfKid: json['nameOfKid'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      codeOrder: json['codeOrder'] as String,
    );

Map<String, dynamic> _$OrderPackageToJson(OrderPackage instance) =>
    <String, dynamic>{
      'kidId': instance.kidId,
      'totalPrice': instance.totalPrice,
      'nameOfAdult': instance.nameOfAdult,
      'nameOfKid': instance.nameOfKid,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'codeOrder': instance.codeOrder,
    };

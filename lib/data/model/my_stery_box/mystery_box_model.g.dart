// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mystery_box_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MysteryBoxModelImpl _$$MysteryBoxModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MysteryBoxModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      priceAvarage: json['priceAvarage'] as String?,
      description: json['description'] as String?,
      qrCode: json['qrCode'] as String?,
      quantityProInBox: json['quantityProInBox'] as String?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$MysteryBoxModelImplToJson(
        _$MysteryBoxModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'priceAvarage': instance.priceAvarage,
      'description': instance.description,
      'qrCode': instance.qrCode,
      'quantityProInBox': instance.quantityProInBox,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

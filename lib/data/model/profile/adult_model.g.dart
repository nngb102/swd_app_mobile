// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adult_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdultModelImpl _$$AdultModelImplFromJson(Map<String, dynamic> json) =>
    _$AdultModelImpl(
      id: (json['id'] as num).toInt(),
      username: (json['username'] as num?)?.toInt(),
      fullName: (json['fullName'] as num?)?.toInt(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$AdultModelImplToJson(_$AdultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
    };

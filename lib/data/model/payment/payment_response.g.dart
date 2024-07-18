// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseImpl _$$PaymentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentResponseImpl(
      result: ResultData.fromJson(json['result'] as Map<String, dynamic>),
      order: OrderData.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentResponseImplToJson(
        _$PaymentResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'order': instance.order,
    };

_$ResultDataImpl _$$ResultDataImplFromJson(Map<String, dynamic> json) =>
    _$ResultDataImpl(
      returnCode: (json['return_code'] as num?)?.toInt(),
      returnMessage: json['return_message'] as String?,
      subReturnCode: (json['sub_return_code'] as num?)?.toInt(),
      subReturnMessage: json['sub_return_message'] as String?,
      zpTransToken: json['zp_trans_token'] as String?,
      orderUrl: json['order_url'] as String?,
      orderToken: json['order_token'] as String?,
      qrCode: json['qr_code'] as String?,
    );

Map<String, dynamic> _$$ResultDataImplToJson(_$ResultDataImpl instance) =>
    <String, dynamic>{
      'return_code': instance.returnCode,
      'return_message': instance.returnMessage,
      'sub_return_code': instance.subReturnCode,
      'sub_return_message': instance.subReturnMessage,
      'zp_trans_token': instance.zpTransToken,
      'order_url': instance.orderUrl,
      'order_token': instance.orderToken,
      'qr_code': instance.qrCode,
    };

_$OrderDataImpl _$$OrderDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderDataImpl(
      appId: json['app_id'] as String?,
      appTransId: json['app_trans_id'] as String?,
      appUser: json['app_user'] as String?,
      appTime: (json['app_time'] as num?)?.toInt(),
      item: json['item'] as String?,
      embedData: json['embed_data'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      description: json['description'] as String?,
      bankCode: json['bank_code'] as String?,
      callbackUrl: json['callback_url'] as String?,
      mac: json['mac'] as String?,
    );

Map<String, dynamic> _$$OrderDataImplToJson(_$OrderDataImpl instance) =>
    <String, dynamic>{
      'app_id': instance.appId,
      'app_trans_id': instance.appTransId,
      'app_user': instance.appUser,
      'app_time': instance.appTime,
      'item': instance.item,
      'embed_data': instance.embedData,
      'amount': instance.amount,
      'description': instance.description,
      'bank_code': instance.bankCode,
      'callback_url': instance.callbackUrl,
      'mac': instance.mac,
    };

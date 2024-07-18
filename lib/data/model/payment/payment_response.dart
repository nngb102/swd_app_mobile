import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response.freezed.dart';
part 'payment_response.g.dart';

@freezed
class PaymentResponse with _$PaymentResponse {
  factory PaymentResponse({
    @JsonKey(name: 'result') required ResultData result,
    @JsonKey(name: 'order') required OrderData order,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}

@freezed
class ResultData with _$ResultData {
  factory ResultData({
    @JsonKey(name: 'return_code') int? returnCode,
    @JsonKey(name: 'return_message') String? returnMessage,
    @JsonKey(name: 'sub_return_code') int? subReturnCode,
    @JsonKey(name: 'sub_return_message') String? subReturnMessage,
    @JsonKey(name: 'zp_trans_token') String? zpTransToken,
    @JsonKey(name: 'order_url') String? orderUrl,
    @JsonKey(name: 'order_token') String? orderToken,
    @JsonKey(name: 'qr_code') String? qrCode,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, dynamic> json) =>
      _$ResultDataFromJson(json);
}

@freezed
class OrderData with _$OrderData {
  factory OrderData({
    @JsonKey(name: 'app_id') String? appId,
    @JsonKey(name: 'app_trans_id') String? appTransId,
    @JsonKey(name: 'app_user') String? appUser,
    @JsonKey(name: 'app_time') int? appTime,
    @JsonKey(name: 'item') String? item,
    @JsonKey(name: 'embed_data') String? embedData,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'bank_code') String? bankCode,
    @JsonKey(name: 'callback_url') String? callbackUrl,
    @JsonKey(name: 'mac') String? mac,
  }) = _OrderData;

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);
}

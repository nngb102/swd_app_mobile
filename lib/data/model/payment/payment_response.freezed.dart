// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) {
  return _PaymentResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponse {
  @JsonKey(name: 'result')
  ResultData get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'order')
  OrderData get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResponseCopyWith<PaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseCopyWith<$Res> {
  factory $PaymentResponseCopyWith(
          PaymentResponse value, $Res Function(PaymentResponse) then) =
      _$PaymentResponseCopyWithImpl<$Res, PaymentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') ResultData result,
      @JsonKey(name: 'order') OrderData order});

  $ResultDataCopyWith<$Res> get result;
  $OrderDataCopyWith<$Res> get order;
}

/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res, $Val extends PaymentResponse>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultData,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultDataCopyWith<$Res> get result {
    return $ResultDataCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDataCopyWith<$Res> get order {
    return $OrderDataCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentResponseImplCopyWith<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  factory _$$PaymentResponseImplCopyWith(_$PaymentResponseImpl value,
          $Res Function(_$PaymentResponseImpl) then) =
      __$$PaymentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') ResultData result,
      @JsonKey(name: 'order') OrderData order});

  @override
  $ResultDataCopyWith<$Res> get result;
  @override
  $OrderDataCopyWith<$Res> get order;
}

/// @nodoc
class __$$PaymentResponseImplCopyWithImpl<$Res>
    extends _$PaymentResponseCopyWithImpl<$Res, _$PaymentResponseImpl>
    implements _$$PaymentResponseImplCopyWith<$Res> {
  __$$PaymentResponseImplCopyWithImpl(
      _$PaymentResponseImpl _value, $Res Function(_$PaymentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? order = null,
  }) {
    return _then(_$PaymentResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultData,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResponseImpl implements _PaymentResponse {
  _$PaymentResponseImpl(
      {@JsonKey(name: 'result') required this.result,
      @JsonKey(name: 'order') required this.order});

  factory _$PaymentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final ResultData result;
  @override
  @JsonKey(name: 'order')
  final OrderData order;

  @override
  String toString() {
    return 'PaymentResponse(result: $result, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      __$$PaymentResponseImplCopyWithImpl<_$PaymentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentResponse implements PaymentResponse {
  factory _PaymentResponse(
          {@JsonKey(name: 'result') required final ResultData result,
          @JsonKey(name: 'order') required final OrderData order}) =
      _$PaymentResponseImpl;

  factory _PaymentResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  ResultData get result;
  @override
  @JsonKey(name: 'order')
  OrderData get order;
  @override
  @JsonKey(ignore: true)
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultData _$ResultDataFromJson(Map<String, dynamic> json) {
  return _ResultData.fromJson(json);
}

/// @nodoc
mixin _$ResultData {
  @JsonKey(name: 'return_code')
  int? get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_message')
  String? get returnMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_return_code')
  int? get subReturnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_return_message')
  String? get subReturnMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'zp_trans_token')
  String? get zpTransToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_url')
  String? get orderUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_token')
  String? get orderToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_code')
  String? get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDataCopyWith<ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataCopyWith<$Res> {
  factory $ResultDataCopyWith(
          ResultData value, $Res Function(ResultData) then) =
      _$ResultDataCopyWithImpl<$Res, ResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'return_code') int? returnCode,
      @JsonKey(name: 'return_message') String? returnMessage,
      @JsonKey(name: 'sub_return_code') int? subReturnCode,
      @JsonKey(name: 'sub_return_message') String? subReturnMessage,
      @JsonKey(name: 'zp_trans_token') String? zpTransToken,
      @JsonKey(name: 'order_url') String? orderUrl,
      @JsonKey(name: 'order_token') String? orderToken,
      @JsonKey(name: 'qr_code') String? qrCode});
}

/// @nodoc
class _$ResultDataCopyWithImpl<$Res, $Val extends ResultData>
    implements $ResultDataCopyWith<$Res> {
  _$ResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnCode = freezed,
    Object? returnMessage = freezed,
    Object? subReturnCode = freezed,
    Object? subReturnMessage = freezed,
    Object? zpTransToken = freezed,
    Object? orderUrl = freezed,
    Object? orderToken = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      returnCode: freezed == returnCode
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as int?,
      returnMessage: freezed == returnMessage
          ? _value.returnMessage
          : returnMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      subReturnCode: freezed == subReturnCode
          ? _value.subReturnCode
          : subReturnCode // ignore: cast_nullable_to_non_nullable
              as int?,
      subReturnMessage: freezed == subReturnMessage
          ? _value.subReturnMessage
          : subReturnMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      zpTransToken: freezed == zpTransToken
          ? _value.zpTransToken
          : zpTransToken // ignore: cast_nullable_to_non_nullable
              as String?,
      orderUrl: freezed == orderUrl
          ? _value.orderUrl
          : orderUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      orderToken: freezed == orderToken
          ? _value.orderToken
          : orderToken // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultDataImplCopyWith<$Res>
    implements $ResultDataCopyWith<$Res> {
  factory _$$ResultDataImplCopyWith(
          _$ResultDataImpl value, $Res Function(_$ResultDataImpl) then) =
      __$$ResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'return_code') int? returnCode,
      @JsonKey(name: 'return_message') String? returnMessage,
      @JsonKey(name: 'sub_return_code') int? subReturnCode,
      @JsonKey(name: 'sub_return_message') String? subReturnMessage,
      @JsonKey(name: 'zp_trans_token') String? zpTransToken,
      @JsonKey(name: 'order_url') String? orderUrl,
      @JsonKey(name: 'order_token') String? orderToken,
      @JsonKey(name: 'qr_code') String? qrCode});
}

/// @nodoc
class __$$ResultDataImplCopyWithImpl<$Res>
    extends _$ResultDataCopyWithImpl<$Res, _$ResultDataImpl>
    implements _$$ResultDataImplCopyWith<$Res> {
  __$$ResultDataImplCopyWithImpl(
      _$ResultDataImpl _value, $Res Function(_$ResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnCode = freezed,
    Object? returnMessage = freezed,
    Object? subReturnCode = freezed,
    Object? subReturnMessage = freezed,
    Object? zpTransToken = freezed,
    Object? orderUrl = freezed,
    Object? orderToken = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_$ResultDataImpl(
      returnCode: freezed == returnCode
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as int?,
      returnMessage: freezed == returnMessage
          ? _value.returnMessage
          : returnMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      subReturnCode: freezed == subReturnCode
          ? _value.subReturnCode
          : subReturnCode // ignore: cast_nullable_to_non_nullable
              as int?,
      subReturnMessage: freezed == subReturnMessage
          ? _value.subReturnMessage
          : subReturnMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      zpTransToken: freezed == zpTransToken
          ? _value.zpTransToken
          : zpTransToken // ignore: cast_nullable_to_non_nullable
              as String?,
      orderUrl: freezed == orderUrl
          ? _value.orderUrl
          : orderUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      orderToken: freezed == orderToken
          ? _value.orderToken
          : orderToken // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultDataImpl implements _ResultData {
  _$ResultDataImpl(
      {@JsonKey(name: 'return_code') this.returnCode,
      @JsonKey(name: 'return_message') this.returnMessage,
      @JsonKey(name: 'sub_return_code') this.subReturnCode,
      @JsonKey(name: 'sub_return_message') this.subReturnMessage,
      @JsonKey(name: 'zp_trans_token') this.zpTransToken,
      @JsonKey(name: 'order_url') this.orderUrl,
      @JsonKey(name: 'order_token') this.orderToken,
      @JsonKey(name: 'qr_code') this.qrCode});

  factory _$ResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDataImplFromJson(json);

  @override
  @JsonKey(name: 'return_code')
  final int? returnCode;
  @override
  @JsonKey(name: 'return_message')
  final String? returnMessage;
  @override
  @JsonKey(name: 'sub_return_code')
  final int? subReturnCode;
  @override
  @JsonKey(name: 'sub_return_message')
  final String? subReturnMessage;
  @override
  @JsonKey(name: 'zp_trans_token')
  final String? zpTransToken;
  @override
  @JsonKey(name: 'order_url')
  final String? orderUrl;
  @override
  @JsonKey(name: 'order_token')
  final String? orderToken;
  @override
  @JsonKey(name: 'qr_code')
  final String? qrCode;

  @override
  String toString() {
    return 'ResultData(returnCode: $returnCode, returnMessage: $returnMessage, subReturnCode: $subReturnCode, subReturnMessage: $subReturnMessage, zpTransToken: $zpTransToken, orderUrl: $orderUrl, orderToken: $orderToken, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataImpl &&
            (identical(other.returnCode, returnCode) ||
                other.returnCode == returnCode) &&
            (identical(other.returnMessage, returnMessage) ||
                other.returnMessage == returnMessage) &&
            (identical(other.subReturnCode, subReturnCode) ||
                other.subReturnCode == subReturnCode) &&
            (identical(other.subReturnMessage, subReturnMessage) ||
                other.subReturnMessage == subReturnMessage) &&
            (identical(other.zpTransToken, zpTransToken) ||
                other.zpTransToken == zpTransToken) &&
            (identical(other.orderUrl, orderUrl) ||
                other.orderUrl == orderUrl) &&
            (identical(other.orderToken, orderToken) ||
                other.orderToken == orderToken) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      returnCode,
      returnMessage,
      subReturnCode,
      subReturnMessage,
      zpTransToken,
      orderUrl,
      orderToken,
      qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      __$$ResultDataImplCopyWithImpl<_$ResultDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDataImplToJson(
      this,
    );
  }
}

abstract class _ResultData implements ResultData {
  factory _ResultData(
      {@JsonKey(name: 'return_code') final int? returnCode,
      @JsonKey(name: 'return_message') final String? returnMessage,
      @JsonKey(name: 'sub_return_code') final int? subReturnCode,
      @JsonKey(name: 'sub_return_message') final String? subReturnMessage,
      @JsonKey(name: 'zp_trans_token') final String? zpTransToken,
      @JsonKey(name: 'order_url') final String? orderUrl,
      @JsonKey(name: 'order_token') final String? orderToken,
      @JsonKey(name: 'qr_code') final String? qrCode}) = _$ResultDataImpl;

  factory _ResultData.fromJson(Map<String, dynamic> json) =
      _$ResultDataImpl.fromJson;

  @override
  @JsonKey(name: 'return_code')
  int? get returnCode;
  @override
  @JsonKey(name: 'return_message')
  String? get returnMessage;
  @override
  @JsonKey(name: 'sub_return_code')
  int? get subReturnCode;
  @override
  @JsonKey(name: 'sub_return_message')
  String? get subReturnMessage;
  @override
  @JsonKey(name: 'zp_trans_token')
  String? get zpTransToken;
  @override
  @JsonKey(name: 'order_url')
  String? get orderUrl;
  @override
  @JsonKey(name: 'order_token')
  String? get orderToken;
  @override
  @JsonKey(name: 'qr_code')
  String? get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$ResultDataImplCopyWith<_$ResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderData _$OrderDataFromJson(Map<String, dynamic> json) {
  return _OrderData.fromJson(json);
}

/// @nodoc
mixin _$OrderData {
  @JsonKey(name: 'app_id')
  String? get appId => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_trans_id')
  String? get appTransId => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_user')
  String? get appUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_time')
  int? get appTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'item')
  String? get item => throw _privateConstructorUsedError;
  @JsonKey(name: 'embed_data')
  String? get embedData => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_code')
  String? get bankCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'callback_url')
  String? get callbackUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac')
  String? get mac => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDataCopyWith<OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDataCopyWith<$Res> {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) then) =
      _$OrderDataCopyWithImpl<$Res, OrderData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'app_id') String? appId,
      @JsonKey(name: 'app_trans_id') String? appTransId,
      @JsonKey(name: 'app_user') String? appUser,
      @JsonKey(name: 'app_time') int? appTime,
      @JsonKey(name: 'item') String? item,
      @JsonKey(name: 'embed_data') String? embedData,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'bank_code') String? bankCode,
      @JsonKey(name: 'callback_url') String? callbackUrl,
      @JsonKey(name: 'mac') String? mac});
}

/// @nodoc
class _$OrderDataCopyWithImpl<$Res, $Val extends OrderData>
    implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? appTransId = freezed,
    Object? appUser = freezed,
    Object? appTime = freezed,
    Object? item = freezed,
    Object? embedData = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? bankCode = freezed,
    Object? callbackUrl = freezed,
    Object? mac = freezed,
  }) {
    return _then(_value.copyWith(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      appTransId: freezed == appTransId
          ? _value.appTransId
          : appTransId // ignore: cast_nullable_to_non_nullable
              as String?,
      appUser: freezed == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as String?,
      appTime: freezed == appTime
          ? _value.appTime
          : appTime // ignore: cast_nullable_to_non_nullable
              as int?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String?,
      embedData: freezed == embedData
          ? _value.embedData
          : embedData // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      callbackUrl: freezed == callbackUrl
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDataImplCopyWith<$Res>
    implements $OrderDataCopyWith<$Res> {
  factory _$$OrderDataImplCopyWith(
          _$OrderDataImpl value, $Res Function(_$OrderDataImpl) then) =
      __$$OrderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'app_id') String? appId,
      @JsonKey(name: 'app_trans_id') String? appTransId,
      @JsonKey(name: 'app_user') String? appUser,
      @JsonKey(name: 'app_time') int? appTime,
      @JsonKey(name: 'item') String? item,
      @JsonKey(name: 'embed_data') String? embedData,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'bank_code') String? bankCode,
      @JsonKey(name: 'callback_url') String? callbackUrl,
      @JsonKey(name: 'mac') String? mac});
}

/// @nodoc
class __$$OrderDataImplCopyWithImpl<$Res>
    extends _$OrderDataCopyWithImpl<$Res, _$OrderDataImpl>
    implements _$$OrderDataImplCopyWith<$Res> {
  __$$OrderDataImplCopyWithImpl(
      _$OrderDataImpl _value, $Res Function(_$OrderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? appTransId = freezed,
    Object? appUser = freezed,
    Object? appTime = freezed,
    Object? item = freezed,
    Object? embedData = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? bankCode = freezed,
    Object? callbackUrl = freezed,
    Object? mac = freezed,
  }) {
    return _then(_$OrderDataImpl(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      appTransId: freezed == appTransId
          ? _value.appTransId
          : appTransId // ignore: cast_nullable_to_non_nullable
              as String?,
      appUser: freezed == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as String?,
      appTime: freezed == appTime
          ? _value.appTime
          : appTime // ignore: cast_nullable_to_non_nullable
              as int?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String?,
      embedData: freezed == embedData
          ? _value.embedData
          : embedData // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      callbackUrl: freezed == callbackUrl
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDataImpl implements _OrderData {
  _$OrderDataImpl(
      {@JsonKey(name: 'app_id') this.appId,
      @JsonKey(name: 'app_trans_id') this.appTransId,
      @JsonKey(name: 'app_user') this.appUser,
      @JsonKey(name: 'app_time') this.appTime,
      @JsonKey(name: 'item') this.item,
      @JsonKey(name: 'embed_data') this.embedData,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'bank_code') this.bankCode,
      @JsonKey(name: 'callback_url') this.callbackUrl,
      @JsonKey(name: 'mac') this.mac});

  factory _$OrderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDataImplFromJson(json);

  @override
  @JsonKey(name: 'app_id')
  final String? appId;
  @override
  @JsonKey(name: 'app_trans_id')
  final String? appTransId;
  @override
  @JsonKey(name: 'app_user')
  final String? appUser;
  @override
  @JsonKey(name: 'app_time')
  final int? appTime;
  @override
  @JsonKey(name: 'item')
  final String? item;
  @override
  @JsonKey(name: 'embed_data')
  final String? embedData;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'bank_code')
  final String? bankCode;
  @override
  @JsonKey(name: 'callback_url')
  final String? callbackUrl;
  @override
  @JsonKey(name: 'mac')
  final String? mac;

  @override
  String toString() {
    return 'OrderData(appId: $appId, appTransId: $appTransId, appUser: $appUser, appTime: $appTime, item: $item, embedData: $embedData, amount: $amount, description: $description, bankCode: $bankCode, callbackUrl: $callbackUrl, mac: $mac)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDataImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.appTransId, appTransId) ||
                other.appTransId == appTransId) &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.appTime, appTime) || other.appTime == appTime) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.embedData, embedData) ||
                other.embedData == embedData) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.callbackUrl, callbackUrl) ||
                other.callbackUrl == callbackUrl) &&
            (identical(other.mac, mac) || other.mac == mac));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appId,
      appTransId,
      appUser,
      appTime,
      item,
      embedData,
      amount,
      description,
      bankCode,
      callbackUrl,
      mac);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDataImplCopyWith<_$OrderDataImpl> get copyWith =>
      __$$OrderDataImplCopyWithImpl<_$OrderDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDataImplToJson(
      this,
    );
  }
}

abstract class _OrderData implements OrderData {
  factory _OrderData(
      {@JsonKey(name: 'app_id') final String? appId,
      @JsonKey(name: 'app_trans_id') final String? appTransId,
      @JsonKey(name: 'app_user') final String? appUser,
      @JsonKey(name: 'app_time') final int? appTime,
      @JsonKey(name: 'item') final String? item,
      @JsonKey(name: 'embed_data') final String? embedData,
      @JsonKey(name: 'amount') final int? amount,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'bank_code') final String? bankCode,
      @JsonKey(name: 'callback_url') final String? callbackUrl,
      @JsonKey(name: 'mac') final String? mac}) = _$OrderDataImpl;

  factory _OrderData.fromJson(Map<String, dynamic> json) =
      _$OrderDataImpl.fromJson;

  @override
  @JsonKey(name: 'app_id')
  String? get appId;
  @override
  @JsonKey(name: 'app_trans_id')
  String? get appTransId;
  @override
  @JsonKey(name: 'app_user')
  String? get appUser;
  @override
  @JsonKey(name: 'app_time')
  int? get appTime;
  @override
  @JsonKey(name: 'item')
  String? get item;
  @override
  @JsonKey(name: 'embed_data')
  String? get embedData;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'bank_code')
  String? get bankCode;
  @override
  @JsonKey(name: 'callback_url')
  String? get callbackUrl;
  @override
  @JsonKey(name: 'mac')
  String? get mac;
  @override
  @JsonKey(ignore: true)
  _$$OrderDataImplCopyWith<_$OrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_package_by_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPackageByUserResponse _$OrderPackageByUserResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderPackageByUserResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderPackageByUserResponse {
  @JsonKey(name: 'packageOrders')
  List<PackageOrderModel>? get packageOrders =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPackageByUserResponseCopyWith<OrderPackageByUserResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPackageByUserResponseCopyWith<$Res> {
  factory $OrderPackageByUserResponseCopyWith(OrderPackageByUserResponse value,
          $Res Function(OrderPackageByUserResponse) then) =
      _$OrderPackageByUserResponseCopyWithImpl<$Res,
          OrderPackageByUserResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'packageOrders') List<PackageOrderModel>? packageOrders,
      @JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$OrderPackageByUserResponseCopyWithImpl<$Res,
        $Val extends OrderPackageByUserResponse>
    implements $OrderPackageByUserResponseCopyWith<$Res> {
  _$OrderPackageByUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageOrders = freezed,
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      packageOrders: freezed == packageOrders
          ? _value.packageOrders
          : packageOrders // ignore: cast_nullable_to_non_nullable
              as List<PackageOrderModel>?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPackageByUserResponseImplCopyWith<$Res>
    implements $OrderPackageByUserResponseCopyWith<$Res> {
  factory _$$OrderPackageByUserResponseImplCopyWith(
          _$OrderPackageByUserResponseImpl value,
          $Res Function(_$OrderPackageByUserResponseImpl) then) =
      __$$OrderPackageByUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'packageOrders') List<PackageOrderModel>? packageOrders,
      @JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$OrderPackageByUserResponseImplCopyWithImpl<$Res>
    extends _$OrderPackageByUserResponseCopyWithImpl<$Res,
        _$OrderPackageByUserResponseImpl>
    implements _$$OrderPackageByUserResponseImplCopyWith<$Res> {
  __$$OrderPackageByUserResponseImplCopyWithImpl(
      _$OrderPackageByUserResponseImpl _value,
      $Res Function(_$OrderPackageByUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageOrders = freezed,
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$OrderPackageByUserResponseImpl(
      packageOrders: freezed == packageOrders
          ? _value._packageOrders
          : packageOrders // ignore: cast_nullable_to_non_nullable
              as List<PackageOrderModel>?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderPackageByUserResponseImpl extends _OrderPackageByUserResponse {
  _$OrderPackageByUserResponseImpl(
      {@JsonKey(name: 'packageOrders')
      required final List<PackageOrderModel>? packageOrders,
      @JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message})
      : _packageOrders = packageOrders,
        super._();

  factory _$OrderPackageByUserResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OrderPackageByUserResponseImplFromJson(json);

  final List<PackageOrderModel>? _packageOrders;
  @override
  @JsonKey(name: 'packageOrders')
  List<PackageOrderModel>? get packageOrders {
    final value = _packageOrders;
    if (value == null) return null;
    if (_packageOrders is EqualUnmodifiableListView) return _packageOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'OrderPackageByUserResponse(packageOrders: $packageOrders, success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPackageByUserResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._packageOrders, _packageOrders) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_packageOrders), success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPackageByUserResponseImplCopyWith<_$OrderPackageByUserResponseImpl>
      get copyWith => __$$OrderPackageByUserResponseImplCopyWithImpl<
          _$OrderPackageByUserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPackageByUserResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderPackageByUserResponse extends OrderPackageByUserResponse {
  factory _OrderPackageByUserResponse(
          {@JsonKey(name: 'packageOrders')
          required final List<PackageOrderModel>? packageOrders,
          @JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message}) =
      _$OrderPackageByUserResponseImpl;
  _OrderPackageByUserResponse._() : super._();

  factory _OrderPackageByUserResponse.fromJson(Map<String, dynamic> json) =
      _$OrderPackageByUserResponseImpl.fromJson;

  @override
  @JsonKey(name: 'packageOrders')
  List<PackageOrderModel>? get packageOrders;
  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$OrderPackageByUserResponseImplCopyWith<_$OrderPackageByUserResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

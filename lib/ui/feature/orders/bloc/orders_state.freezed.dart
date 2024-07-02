// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersState {
  List<PackageOrderModel> get packageOrders =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call({List<PackageOrderModel> packageOrders});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageOrders = null,
  }) {
    return _then(_value.copyWith(
      packageOrders: null == packageOrders
          ? _value.packageOrders
          : packageOrders // ignore: cast_nullable_to_non_nullable
              as List<PackageOrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KidProfileStateImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$KidProfileStateImplCopyWith(_$KidProfileStateImpl value,
          $Res Function(_$KidProfileStateImpl) then) =
      __$$KidProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PackageOrderModel> packageOrders});
}

/// @nodoc
class __$$KidProfileStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$KidProfileStateImpl>
    implements _$$KidProfileStateImplCopyWith<$Res> {
  __$$KidProfileStateImplCopyWithImpl(
      _$KidProfileStateImpl _value, $Res Function(_$KidProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageOrders = null,
  }) {
    return _then(_$KidProfileStateImpl(
      packageOrders: null == packageOrders
          ? _value._packageOrders
          : packageOrders // ignore: cast_nullable_to_non_nullable
              as List<PackageOrderModel>,
    ));
  }
}

/// @nodoc

class _$KidProfileStateImpl extends _KidProfileState {
  _$KidProfileStateImpl({required final List<PackageOrderModel> packageOrders})
      : _packageOrders = packageOrders,
        super._();

  final List<PackageOrderModel> _packageOrders;
  @override
  List<PackageOrderModel> get packageOrders {
    if (_packageOrders is EqualUnmodifiableListView) return _packageOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packageOrders);
  }

  @override
  String toString() {
    return 'OrdersState(packageOrders: $packageOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KidProfileStateImpl &&
            const DeepCollectionEquality()
                .equals(other._packageOrders, _packageOrders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_packageOrders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KidProfileStateImplCopyWith<_$KidProfileStateImpl> get copyWith =>
      __$$KidProfileStateImplCopyWithImpl<_$KidProfileStateImpl>(
          this, _$identity);
}

abstract class _KidProfileState extends OrdersState {
  factory _KidProfileState(
          {required final List<PackageOrderModel> packageOrders}) =
      _$KidProfileStateImpl;
  _KidProfileState._() : super._();

  @override
  List<PackageOrderModel> get packageOrders;
  @override
  @JsonKey(ignore: true)
  _$$KidProfileStateImplCopyWith<_$KidProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

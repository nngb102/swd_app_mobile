// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adult_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdultModel _$AdultModelFromJson(Map<String, dynamic> json) {
  return _AdultModel.fromJson(json);
}

/// @nodoc
mixin _$AdultModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  int? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  int? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdultModelCopyWith<AdultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdultModelCopyWith<$Res> {
  factory $AdultModelCopyWith(
          AdultModel value, $Res Function(AdultModel) then) =
      _$AdultModelCopyWithImpl<$Res, AdultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') int? username,
      @JsonKey(name: 'fullName') int? fullName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'address') String? address});
}

/// @nodoc
class _$AdultModelCopyWithImpl<$Res, $Val extends AdultModel>
    implements $AdultModelCopyWith<$Res> {
  _$AdultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdultModelImplCopyWith<$Res>
    implements $AdultModelCopyWith<$Res> {
  factory _$$AdultModelImplCopyWith(
          _$AdultModelImpl value, $Res Function(_$AdultModelImpl) then) =
      __$$AdultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') int? username,
      @JsonKey(name: 'fullName') int? fullName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'address') String? address});
}

/// @nodoc
class __$$AdultModelImplCopyWithImpl<$Res>
    extends _$AdultModelCopyWithImpl<$Res, _$AdultModelImpl>
    implements _$$AdultModelImplCopyWith<$Res> {
  __$$AdultModelImplCopyWithImpl(
      _$AdultModelImpl _value, $Res Function(_$AdultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
  }) {
    return _then(_$AdultModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AdultModelImpl extends _AdultModel {
  _$AdultModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'fullName') this.fullName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'address') this.address})
      : super._();

  factory _$AdultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdultModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'username')
  final int? username;
  @override
  @JsonKey(name: 'fullName')
  final int? fullName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'address')
  final String? address;

  @override
  String toString() {
    return 'AdultModel(id: $id, username: $username, fullName: $fullName, email: $email, phone: $phone, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, fullName, email, phone, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdultModelImplCopyWith<_$AdultModelImpl> get copyWith =>
      __$$AdultModelImplCopyWithImpl<_$AdultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdultModelImplToJson(
      this,
    );
  }
}

abstract class _AdultModel extends AdultModel {
  factory _AdultModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'username') final int? username,
      @JsonKey(name: 'fullName') final int? fullName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'address') final String? address}) = _$AdultModelImpl;
  _AdultModel._() : super._();

  factory _AdultModel.fromJson(Map<String, dynamic> json) =
      _$AdultModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'username')
  int? get username;
  @override
  @JsonKey(name: 'fullName')
  int? get fullName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$AdultModelImplCopyWith<_$AdultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

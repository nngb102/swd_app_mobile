// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthLogin _$AuthLoginFromJson(Map<String, dynamic> json) {
  return _AuthLogin.fromJson(json);
}

/// @nodoc
mixin _$AuthLogin {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'accessToken')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserResponse? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthLoginCopyWith<AuthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoginCopyWith<$Res> {
  factory $AuthLoginCopyWith(AuthLogin value, $Res Function(AuthLogin) then) =
      _$AuthLoginCopyWithImpl<$Res, AuthLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'accessToken') String? accessToken,
      @JsonKey(name: 'user') UserResponse? user});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthLoginCopyWithImpl<$Res, $Val extends AuthLogin>
    implements $AuthLoginCopyWith<$Res> {
  _$AuthLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? accessToken = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthLoginImplCopyWith<$Res>
    implements $AuthLoginCopyWith<$Res> {
  factory _$$AuthLoginImplCopyWith(
          _$AuthLoginImpl value, $Res Function(_$AuthLoginImpl) then) =
      __$$AuthLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'accessToken') String? accessToken,
      @JsonKey(name: 'user') UserResponse? user});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthLoginImplCopyWithImpl<$Res>
    extends _$AuthLoginCopyWithImpl<$Res, _$AuthLoginImpl>
    implements _$$AuthLoginImplCopyWith<$Res> {
  __$$AuthLoginImplCopyWithImpl(
      _$AuthLoginImpl _value, $Res Function(_$AuthLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? accessToken = freezed,
    Object? user = freezed,
  }) {
    return _then(_$AuthLoginImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AuthLoginImpl extends _AuthLogin {
  _$AuthLoginImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'accessToken') this.accessToken,
      @JsonKey(name: 'user') this.user})
      : super._();

  factory _$AuthLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthLoginImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @override
  @JsonKey(name: 'user')
  final UserResponse? user;

  @override
  String toString() {
    return 'AuthLogin(success: $success, message: $message, accessToken: $accessToken, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, accessToken, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginImplCopyWith<_$AuthLoginImpl> get copyWith =>
      __$$AuthLoginImplCopyWithImpl<_$AuthLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthLoginImplToJson(
      this,
    );
  }
}

abstract class _AuthLogin extends AuthLogin {
  factory _AuthLogin(
      {@JsonKey(name: 'success') required final bool success,
      @JsonKey(name: 'message') required final String message,
      @JsonKey(name: 'accessToken') final String? accessToken,
      @JsonKey(name: 'user') final UserResponse? user}) = _$AuthLoginImpl;
  _AuthLogin._() : super._();

  factory _AuthLogin.fromJson(Map<String, dynamic> json) =
      _$AuthLoginImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'accessToken')
  String? get accessToken;
  @override
  @JsonKey(name: 'user')
  UserResponse? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthLoginImplCopyWith<_$AuthLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

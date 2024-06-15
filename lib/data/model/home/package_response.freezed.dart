// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageResponse _$PackageResponseFromJson(Map<String, dynamic> json) {
  return _PackageResponse.fromJson(json);
}

/// @nodoc
mixin _$PackageResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'packages')
  List<Package> get packages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageResponseCopyWith<PackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageResponseCopyWith<$Res> {
  factory $PackageResponseCopyWith(
          PackageResponse value, $Res Function(PackageResponse) then) =
      _$PackageResponseCopyWithImpl<$Res, PackageResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'packages') List<Package> packages});
}

/// @nodoc
class _$PackageResponseCopyWithImpl<$Res, $Val extends PackageResponse>
    implements $PackageResponseCopyWith<$Res> {
  _$PackageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? packages = null,
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
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<Package>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageResponseImplCopyWith<$Res>
    implements $PackageResponseCopyWith<$Res> {
  factory _$$PackageResponseImplCopyWith(_$PackageResponseImpl value,
          $Res Function(_$PackageResponseImpl) then) =
      __$$PackageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'packages') List<Package> packages});
}

/// @nodoc
class __$$PackageResponseImplCopyWithImpl<$Res>
    extends _$PackageResponseCopyWithImpl<$Res, _$PackageResponseImpl>
    implements _$$PackageResponseImplCopyWith<$Res> {
  __$$PackageResponseImplCopyWithImpl(
      _$PackageResponseImpl _value, $Res Function(_$PackageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? packages = null,
  }) {
    return _then(_$PackageResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<Package>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PackageResponseImpl extends _PackageResponse {
  _$PackageResponseImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'packages') required final List<Package> packages})
      : _packages = packages,
        super._();

  factory _$PackageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  final List<Package> _packages;
  @override
  @JsonKey(name: 'packages')
  List<Package> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'PackageResponse(success: $success, message: $message, packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageResponseImplCopyWith<_$PackageResponseImpl> get copyWith =>
      __$$PackageResponseImplCopyWithImpl<_$PackageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageResponseImplToJson(
      this,
    );
  }
}

abstract class _PackageResponse extends PackageResponse {
  factory _PackageResponse(
          {@JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'packages') required final List<Package> packages}) =
      _$PackageResponseImpl;
  _PackageResponse._() : super._();

  factory _PackageResponse.fromJson(Map<String, dynamic> json) =
      _$PackageResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'packages')
  List<Package> get packages;
  @override
  @JsonKey(ignore: true)
  _$$PackageResponseImplCopyWith<_$PackageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kid_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KidResponse _$KidResponseFromJson(Map<String, dynamic> json) {
  return _KidResponse.fromJson(json);
}

/// @nodoc
mixin _$KidResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'kidProfiles')
  List<KidProfileModel>? get kidProfiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KidResponseCopyWith<KidResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KidResponseCopyWith<$Res> {
  factory $KidResponseCopyWith(
          KidResponse value, $Res Function(KidResponse) then) =
      _$KidResponseCopyWithImpl<$Res, KidResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'kidProfiles') List<KidProfileModel>? kidProfiles});
}

/// @nodoc
class _$KidResponseCopyWithImpl<$Res, $Val extends KidResponse>
    implements $KidResponseCopyWith<$Res> {
  _$KidResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? kidProfiles = freezed,
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
      kidProfiles: freezed == kidProfiles
          ? _value.kidProfiles
          : kidProfiles // ignore: cast_nullable_to_non_nullable
              as List<KidProfileModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KidResponseImplCopyWith<$Res>
    implements $KidResponseCopyWith<$Res> {
  factory _$$KidResponseImplCopyWith(
          _$KidResponseImpl value, $Res Function(_$KidResponseImpl) then) =
      __$$KidResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'kidProfiles') List<KidProfileModel>? kidProfiles});
}

/// @nodoc
class __$$KidResponseImplCopyWithImpl<$Res>
    extends _$KidResponseCopyWithImpl<$Res, _$KidResponseImpl>
    implements _$$KidResponseImplCopyWith<$Res> {
  __$$KidResponseImplCopyWithImpl(
      _$KidResponseImpl _value, $Res Function(_$KidResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? kidProfiles = freezed,
  }) {
    return _then(_$KidResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      kidProfiles: freezed == kidProfiles
          ? _value._kidProfiles
          : kidProfiles // ignore: cast_nullable_to_non_nullable
              as List<KidProfileModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$KidResponseImpl extends _KidResponse {
  _$KidResponseImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'kidProfiles') final List<KidProfileModel>? kidProfiles})
      : _kidProfiles = kidProfiles,
        super._();

  factory _$KidResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KidResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  final List<KidProfileModel>? _kidProfiles;
  @override
  @JsonKey(name: 'kidProfiles')
  List<KidProfileModel>? get kidProfiles {
    final value = _kidProfiles;
    if (value == null) return null;
    if (_kidProfiles is EqualUnmodifiableListView) return _kidProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'KidResponse(success: $success, message: $message, kidProfiles: $kidProfiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KidResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._kidProfiles, _kidProfiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_kidProfiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KidResponseImplCopyWith<_$KidResponseImpl> get copyWith =>
      __$$KidResponseImplCopyWithImpl<_$KidResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KidResponseImplToJson(
      this,
    );
  }
}

abstract class _KidResponse extends KidResponse {
  factory _KidResponse(
      {@JsonKey(name: 'success') required final bool success,
      @JsonKey(name: 'message') required final String message,
      @JsonKey(name: 'kidProfiles')
      final List<KidProfileModel>? kidProfiles}) = _$KidResponseImpl;
  _KidResponse._() : super._();

  factory _KidResponse.fromJson(Map<String, dynamic> json) =
      _$KidResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'kidProfiles')
  List<KidProfileModel>? get kidProfiles;
  @override
  @JsonKey(ignore: true)
  _$$KidResponseImplCopyWith<_$KidResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

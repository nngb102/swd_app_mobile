// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'kidProfiles')
  List<KidProfileModel>? get kidProfiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'adult')
  List<AdultModel>? get adult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'kidProfiles') List<KidProfileModel>? kidProfiles,
      @JsonKey(name: 'adult') List<AdultModel>? adult});
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

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
    Object? adult = freezed,
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
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as List<AdultModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileResponseImplCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$ProfileResponseImplCopyWith(_$ProfileResponseImpl value,
          $Res Function(_$ProfileResponseImpl) then) =
      __$$ProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'kidProfiles') List<KidProfileModel>? kidProfiles,
      @JsonKey(name: 'adult') List<AdultModel>? adult});
}

/// @nodoc
class __$$ProfileResponseImplCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$ProfileResponseImpl>
    implements _$$ProfileResponseImplCopyWith<$Res> {
  __$$ProfileResponseImplCopyWithImpl(
      _$ProfileResponseImpl _value, $Res Function(_$ProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? kidProfiles = freezed,
    Object? adult = freezed,
  }) {
    return _then(_$ProfileResponseImpl(
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
      adult: freezed == adult
          ? _value._adult
          : adult // ignore: cast_nullable_to_non_nullable
              as List<AdultModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProfileResponseImpl extends _ProfileResponse {
  _$ProfileResponseImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'kidProfiles') final List<KidProfileModel>? kidProfiles,
      @JsonKey(name: 'adult') final List<AdultModel>? adult})
      : _kidProfiles = kidProfiles,
        _adult = adult,
        super._();

  factory _$ProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseImplFromJson(json);

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

  final List<AdultModel>? _adult;
  @override
  @JsonKey(name: 'adult')
  List<AdultModel>? get adult {
    final value = _adult;
    if (value == null) return null;
    if (_adult is EqualUnmodifiableListView) return _adult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileResponse(success: $success, message: $message, kidProfiles: $kidProfiles, adult: $adult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._kidProfiles, _kidProfiles) &&
            const DeepCollectionEquality().equals(other._adult, _adult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      const DeepCollectionEquality().hash(_kidProfiles),
      const DeepCollectionEquality().hash(_adult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      __$$ProfileResponseImplCopyWithImpl<_$ProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponse extends ProfileResponse {
  factory _ProfileResponse(
      {@JsonKey(name: 'success') required final bool success,
      @JsonKey(name: 'message') required final String message,
      @JsonKey(name: 'kidProfiles') final List<KidProfileModel>? kidProfiles,
      @JsonKey(name: 'adult')
      final List<AdultModel>? adult}) = _$ProfileResponseImpl;
  _ProfileResponse._() : super._();

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseImpl.fromJson;

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
  @JsonKey(name: 'adult')
  List<AdultModel>? get adult;
  @override
  @JsonKey(ignore: true)
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

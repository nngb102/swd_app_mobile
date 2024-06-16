// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeResponse _$ThemeResponseFromJson(Map<String, dynamic> json) {
  return _ThemeResponse.fromJson(json);
}

/// @nodoc
mixin _$ThemeResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'themes')
  List<ThemesModel> get themes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeResponseCopyWith<ThemeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeResponseCopyWith<$Res> {
  factory $ThemeResponseCopyWith(
          ThemeResponse value, $Res Function(ThemeResponse) then) =
      _$ThemeResponseCopyWithImpl<$Res, ThemeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'themes') List<ThemesModel> themes});
}

/// @nodoc
class _$ThemeResponseCopyWithImpl<$Res, $Val extends ThemeResponse>
    implements $ThemeResponseCopyWith<$Res> {
  _$ThemeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? themes = null,
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
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<ThemesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeResponseImplCopyWith<$Res>
    implements $ThemeResponseCopyWith<$Res> {
  factory _$$ThemeResponseImplCopyWith(
          _$ThemeResponseImpl value, $Res Function(_$ThemeResponseImpl) then) =
      __$$ThemeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'themes') List<ThemesModel> themes});
}

/// @nodoc
class __$$ThemeResponseImplCopyWithImpl<$Res>
    extends _$ThemeResponseCopyWithImpl<$Res, _$ThemeResponseImpl>
    implements _$$ThemeResponseImplCopyWith<$Res> {
  __$$ThemeResponseImplCopyWithImpl(
      _$ThemeResponseImpl _value, $Res Function(_$ThemeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? themes = null,
  }) {
    return _then(_$ThemeResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<ThemesModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ThemeResponseImpl extends _ThemeResponse {
  _$ThemeResponseImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'themes') required final List<ThemesModel> themes})
      : _themes = themes,
        super._();

  factory _$ThemeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  final List<ThemesModel> _themes;
  @override
  @JsonKey(name: 'themes')
  List<ThemesModel> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  @override
  String toString() {
    return 'ThemeResponse(success: $success, message: $message, themes: $themes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_themes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeResponseImplCopyWith<_$ThemeResponseImpl> get copyWith =>
      __$$ThemeResponseImplCopyWithImpl<_$ThemeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeResponseImplToJson(
      this,
    );
  }
}

abstract class _ThemeResponse extends ThemeResponse {
  factory _ThemeResponse(
          {@JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'themes') required final List<ThemesModel> themes}) =
      _$ThemeResponseImpl;
  _ThemeResponse._() : super._();

  factory _ThemeResponse.fromJson(Map<String, dynamic> json) =
      _$ThemeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'themes')
  List<ThemesModel> get themes;
  @override
  @JsonKey(ignore: true)
  _$$ThemeResponseImplCopyWith<_$ThemeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

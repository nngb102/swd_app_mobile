// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mystery_box_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MysteryBoxResponse _$MysteryBoxResponseFromJson(Map<String, dynamic> json) {
  return _MysteryBoxResponse.fromJson(json);
}

/// @nodoc
mixin _$MysteryBoxResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'mysteryBoxs')
  List<MysteryBoxModel> get mysteryBoxs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MysteryBoxResponseCopyWith<MysteryBoxResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MysteryBoxResponseCopyWith<$Res> {
  factory $MysteryBoxResponseCopyWith(
          MysteryBoxResponse value, $Res Function(MysteryBoxResponse) then) =
      _$MysteryBoxResponseCopyWithImpl<$Res, MysteryBoxResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'mysteryBoxs') List<MysteryBoxModel> mysteryBoxs});
}

/// @nodoc
class _$MysteryBoxResponseCopyWithImpl<$Res, $Val extends MysteryBoxResponse>
    implements $MysteryBoxResponseCopyWith<$Res> {
  _$MysteryBoxResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? mysteryBoxs = null,
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
      mysteryBoxs: null == mysteryBoxs
          ? _value.mysteryBoxs
          : mysteryBoxs // ignore: cast_nullable_to_non_nullable
              as List<MysteryBoxModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MysteryBoxResponseImplCopyWith<$Res>
    implements $MysteryBoxResponseCopyWith<$Res> {
  factory _$$MysteryBoxResponseImplCopyWith(_$MysteryBoxResponseImpl value,
          $Res Function(_$MysteryBoxResponseImpl) then) =
      __$$MysteryBoxResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'mysteryBoxs') List<MysteryBoxModel> mysteryBoxs});
}

/// @nodoc
class __$$MysteryBoxResponseImplCopyWithImpl<$Res>
    extends _$MysteryBoxResponseCopyWithImpl<$Res, _$MysteryBoxResponseImpl>
    implements _$$MysteryBoxResponseImplCopyWith<$Res> {
  __$$MysteryBoxResponseImplCopyWithImpl(_$MysteryBoxResponseImpl _value,
      $Res Function(_$MysteryBoxResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? mysteryBoxs = null,
  }) {
    return _then(_$MysteryBoxResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      mysteryBoxs: null == mysteryBoxs
          ? _value._mysteryBoxs
          : mysteryBoxs // ignore: cast_nullable_to_non_nullable
              as List<MysteryBoxModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MysteryBoxResponseImpl extends _MysteryBoxResponse {
  _$MysteryBoxResponseImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'mysteryBoxs')
      required final List<MysteryBoxModel> mysteryBoxs})
      : _mysteryBoxs = mysteryBoxs,
        super._();

  factory _$MysteryBoxResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MysteryBoxResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  final List<MysteryBoxModel> _mysteryBoxs;
  @override
  @JsonKey(name: 'mysteryBoxs')
  List<MysteryBoxModel> get mysteryBoxs {
    if (_mysteryBoxs is EqualUnmodifiableListView) return _mysteryBoxs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mysteryBoxs);
  }

  @override
  String toString() {
    return 'MysteryBoxResponse(success: $success, message: $message, mysteryBoxs: $mysteryBoxs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MysteryBoxResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._mysteryBoxs, _mysteryBoxs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_mysteryBoxs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MysteryBoxResponseImplCopyWith<_$MysteryBoxResponseImpl> get copyWith =>
      __$$MysteryBoxResponseImplCopyWithImpl<_$MysteryBoxResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MysteryBoxResponseImplToJson(
      this,
    );
  }
}

abstract class _MysteryBoxResponse extends MysteryBoxResponse {
  factory _MysteryBoxResponse(
          {@JsonKey(name: 'success') required final bool success,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'mysteryBoxs')
          required final List<MysteryBoxModel> mysteryBoxs}) =
      _$MysteryBoxResponseImpl;
  _MysteryBoxResponse._() : super._();

  factory _MysteryBoxResponse.fromJson(Map<String, dynamic> json) =
      _$MysteryBoxResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'mysteryBoxs')
  List<MysteryBoxModel> get mysteryBoxs;
  @override
  @JsonKey(ignore: true)
  _$$MysteryBoxResponseImplCopyWith<_$MysteryBoxResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

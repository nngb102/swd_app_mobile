// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_box_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChooseBoxState {
  List<ThemesModel> get themes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChooseBoxStateCopyWith<ChooseBoxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseBoxStateCopyWith<$Res> {
  factory $ChooseBoxStateCopyWith(
          ChooseBoxState value, $Res Function(ChooseBoxState) then) =
      _$ChooseBoxStateCopyWithImpl<$Res, ChooseBoxState>;
  @useResult
  $Res call({List<ThemesModel> themes});
}

/// @nodoc
class _$ChooseBoxStateCopyWithImpl<$Res, $Val extends ChooseBoxState>
    implements $ChooseBoxStateCopyWith<$Res> {
  _$ChooseBoxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themes = null,
  }) {
    return _then(_value.copyWith(
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<ThemesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChooseBoxStateImplCopyWith<$Res>
    implements $ChooseBoxStateCopyWith<$Res> {
  factory _$$ChooseBoxStateImplCopyWith(_$ChooseBoxStateImpl value,
          $Res Function(_$ChooseBoxStateImpl) then) =
      __$$ChooseBoxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ThemesModel> themes});
}

/// @nodoc
class __$$ChooseBoxStateImplCopyWithImpl<$Res>
    extends _$ChooseBoxStateCopyWithImpl<$Res, _$ChooseBoxStateImpl>
    implements _$$ChooseBoxStateImplCopyWith<$Res> {
  __$$ChooseBoxStateImplCopyWithImpl(
      _$ChooseBoxStateImpl _value, $Res Function(_$ChooseBoxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themes = null,
  }) {
    return _then(_$ChooseBoxStateImpl(
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<ThemesModel>,
    ));
  }
}

/// @nodoc

class _$ChooseBoxStateImpl extends _ChooseBoxState {
  _$ChooseBoxStateImpl({required final List<ThemesModel> themes})
      : _themes = themes,
        super._();

  final List<ThemesModel> _themes;
  @override
  List<ThemesModel> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  @override
  String toString() {
    return 'ChooseBoxState(themes: $themes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseBoxStateImpl &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_themes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseBoxStateImplCopyWith<_$ChooseBoxStateImpl> get copyWith =>
      __$$ChooseBoxStateImplCopyWithImpl<_$ChooseBoxStateImpl>(
          this, _$identity);
}

abstract class _ChooseBoxState extends ChooseBoxState {
  factory _ChooseBoxState({required final List<ThemesModel> themes}) =
      _$ChooseBoxStateImpl;
  _ChooseBoxState._() : super._();

  @override
  List<ThemesModel> get themes;
  @override
  @JsonKey(ignore: true)
  _$$ChooseBoxStateImplCopyWith<_$ChooseBoxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

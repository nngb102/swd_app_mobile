// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_theme_and_kid_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChooseThemeAndKidState {
  List<ThemesModel> get themes => throw _privateConstructorUsedError;
  List<KidProfileModel> get kidProfileByUserIdModel =>
      throw _privateConstructorUsedError;
  ThemesModel? get themeSelected => throw _privateConstructorUsedError;
  KidProfileModel? get kidSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChooseThemeAndKidStateCopyWith<ChooseThemeAndKidState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseThemeAndKidStateCopyWith<$Res> {
  factory $ChooseThemeAndKidStateCopyWith(ChooseThemeAndKidState value,
          $Res Function(ChooseThemeAndKidState) then) =
      _$ChooseThemeAndKidStateCopyWithImpl<$Res, ChooseThemeAndKidState>;
  @useResult
  $Res call(
      {List<ThemesModel> themes,
      List<KidProfileModel> kidProfileByUserIdModel,
      ThemesModel? themeSelected,
      KidProfileModel? kidSelected});

  $ThemesModelCopyWith<$Res>? get themeSelected;
  $KidProfileModelCopyWith<$Res>? get kidSelected;
}

/// @nodoc
class _$ChooseThemeAndKidStateCopyWithImpl<$Res,
        $Val extends ChooseThemeAndKidState>
    implements $ChooseThemeAndKidStateCopyWith<$Res> {
  _$ChooseThemeAndKidStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themes = null,
    Object? kidProfileByUserIdModel = null,
    Object? themeSelected = freezed,
    Object? kidSelected = freezed,
  }) {
    return _then(_value.copyWith(
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<ThemesModel>,
      kidProfileByUserIdModel: null == kidProfileByUserIdModel
          ? _value.kidProfileByUserIdModel
          : kidProfileByUserIdModel // ignore: cast_nullable_to_non_nullable
              as List<KidProfileModel>,
      themeSelected: freezed == themeSelected
          ? _value.themeSelected
          : themeSelected // ignore: cast_nullable_to_non_nullable
              as ThemesModel?,
      kidSelected: freezed == kidSelected
          ? _value.kidSelected
          : kidSelected // ignore: cast_nullable_to_non_nullable
              as KidProfileModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThemesModelCopyWith<$Res>? get themeSelected {
    if (_value.themeSelected == null) {
      return null;
    }

    return $ThemesModelCopyWith<$Res>(_value.themeSelected!, (value) {
      return _then(_value.copyWith(themeSelected: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $KidProfileModelCopyWith<$Res>? get kidSelected {
    if (_value.kidSelected == null) {
      return null;
    }

    return $KidProfileModelCopyWith<$Res>(_value.kidSelected!, (value) {
      return _then(_value.copyWith(kidSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChooseThemeAndKidStateImplCopyWith<$Res>
    implements $ChooseThemeAndKidStateCopyWith<$Res> {
  factory _$$ChooseThemeAndKidStateImplCopyWith(
          _$ChooseThemeAndKidStateImpl value,
          $Res Function(_$ChooseThemeAndKidStateImpl) then) =
      __$$ChooseThemeAndKidStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ThemesModel> themes,
      List<KidProfileModel> kidProfileByUserIdModel,
      ThemesModel? themeSelected,
      KidProfileModel? kidSelected});

  @override
  $ThemesModelCopyWith<$Res>? get themeSelected;
  @override
  $KidProfileModelCopyWith<$Res>? get kidSelected;
}

/// @nodoc
class __$$ChooseThemeAndKidStateImplCopyWithImpl<$Res>
    extends _$ChooseThemeAndKidStateCopyWithImpl<$Res,
        _$ChooseThemeAndKidStateImpl>
    implements _$$ChooseThemeAndKidStateImplCopyWith<$Res> {
  __$$ChooseThemeAndKidStateImplCopyWithImpl(
      _$ChooseThemeAndKidStateImpl _value,
      $Res Function(_$ChooseThemeAndKidStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themes = null,
    Object? kidProfileByUserIdModel = null,
    Object? themeSelected = freezed,
    Object? kidSelected = freezed,
  }) {
    return _then(_$ChooseThemeAndKidStateImpl(
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<ThemesModel>,
      kidProfileByUserIdModel: null == kidProfileByUserIdModel
          ? _value._kidProfileByUserIdModel
          : kidProfileByUserIdModel // ignore: cast_nullable_to_non_nullable
              as List<KidProfileModel>,
      themeSelected: freezed == themeSelected
          ? _value.themeSelected
          : themeSelected // ignore: cast_nullable_to_non_nullable
              as ThemesModel?,
      kidSelected: freezed == kidSelected
          ? _value.kidSelected
          : kidSelected // ignore: cast_nullable_to_non_nullable
              as KidProfileModel?,
    ));
  }
}

/// @nodoc

class _$ChooseThemeAndKidStateImpl extends _ChooseThemeAndKidState {
  _$ChooseThemeAndKidStateImpl(
      {required final List<ThemesModel> themes,
      required final List<KidProfileModel> kidProfileByUserIdModel,
      this.themeSelected,
      this.kidSelected})
      : _themes = themes,
        _kidProfileByUserIdModel = kidProfileByUserIdModel,
        super._();

  final List<ThemesModel> _themes;
  @override
  List<ThemesModel> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  final List<KidProfileModel> _kidProfileByUserIdModel;
  @override
  List<KidProfileModel> get kidProfileByUserIdModel {
    if (_kidProfileByUserIdModel is EqualUnmodifiableListView)
      return _kidProfileByUserIdModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kidProfileByUserIdModel);
  }

  @override
  final ThemesModel? themeSelected;
  @override
  final KidProfileModel? kidSelected;

  @override
  String toString() {
    return 'ChooseThemeAndKidState(themes: $themes, kidProfileByUserIdModel: $kidProfileByUserIdModel, themeSelected: $themeSelected, kidSelected: $kidSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseThemeAndKidStateImpl &&
            const DeepCollectionEquality().equals(other._themes, _themes) &&
            const DeepCollectionEquality().equals(
                other._kidProfileByUserIdModel, _kidProfileByUserIdModel) &&
            (identical(other.themeSelected, themeSelected) ||
                other.themeSelected == themeSelected) &&
            (identical(other.kidSelected, kidSelected) ||
                other.kidSelected == kidSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_themes),
      const DeepCollectionEquality().hash(_kidProfileByUserIdModel),
      themeSelected,
      kidSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseThemeAndKidStateImplCopyWith<_$ChooseThemeAndKidStateImpl>
      get copyWith => __$$ChooseThemeAndKidStateImplCopyWithImpl<
          _$ChooseThemeAndKidStateImpl>(this, _$identity);
}

abstract class _ChooseThemeAndKidState extends ChooseThemeAndKidState {
  factory _ChooseThemeAndKidState(
      {required final List<ThemesModel> themes,
      required final List<KidProfileModel> kidProfileByUserIdModel,
      final ThemesModel? themeSelected,
      final KidProfileModel? kidSelected}) = _$ChooseThemeAndKidStateImpl;
  _ChooseThemeAndKidState._() : super._();

  @override
  List<ThemesModel> get themes;
  @override
  List<KidProfileModel> get kidProfileByUserIdModel;
  @override
  ThemesModel? get themeSelected;
  @override
  KidProfileModel? get kidSelected;
  @override
  @JsonKey(ignore: true)
  _$$ChooseThemeAndKidStateImplCopyWith<_$ChooseThemeAndKidStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

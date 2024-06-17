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
  List<MysteryBoxModel> get mysteryBoxs => throw _privateConstructorUsedError;
  MysteryBoxModel? get boxSelected => throw _privateConstructorUsedError;

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
  $Res call({List<MysteryBoxModel> mysteryBoxs, MysteryBoxModel? boxSelected});

  $MysteryBoxModelCopyWith<$Res>? get boxSelected;
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
    Object? mysteryBoxs = null,
    Object? boxSelected = freezed,
  }) {
    return _then(_value.copyWith(
      mysteryBoxs: null == mysteryBoxs
          ? _value.mysteryBoxs
          : mysteryBoxs // ignore: cast_nullable_to_non_nullable
              as List<MysteryBoxModel>,
      boxSelected: freezed == boxSelected
          ? _value.boxSelected
          : boxSelected // ignore: cast_nullable_to_non_nullable
              as MysteryBoxModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MysteryBoxModelCopyWith<$Res>? get boxSelected {
    if (_value.boxSelected == null) {
      return null;
    }

    return $MysteryBoxModelCopyWith<$Res>(_value.boxSelected!, (value) {
      return _then(_value.copyWith(boxSelected: value) as $Val);
    });
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
  $Res call({List<MysteryBoxModel> mysteryBoxs, MysteryBoxModel? boxSelected});

  @override
  $MysteryBoxModelCopyWith<$Res>? get boxSelected;
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
    Object? mysteryBoxs = null,
    Object? boxSelected = freezed,
  }) {
    return _then(_$ChooseBoxStateImpl(
      mysteryBoxs: null == mysteryBoxs
          ? _value._mysteryBoxs
          : mysteryBoxs // ignore: cast_nullable_to_non_nullable
              as List<MysteryBoxModel>,
      boxSelected: freezed == boxSelected
          ? _value.boxSelected
          : boxSelected // ignore: cast_nullable_to_non_nullable
              as MysteryBoxModel?,
    ));
  }
}

/// @nodoc

class _$ChooseBoxStateImpl extends _ChooseBoxState {
  _$ChooseBoxStateImpl(
      {required final List<MysteryBoxModel> mysteryBoxs, this.boxSelected})
      : _mysteryBoxs = mysteryBoxs,
        super._();

  final List<MysteryBoxModel> _mysteryBoxs;
  @override
  List<MysteryBoxModel> get mysteryBoxs {
    if (_mysteryBoxs is EqualUnmodifiableListView) return _mysteryBoxs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mysteryBoxs);
  }

  @override
  final MysteryBoxModel? boxSelected;

  @override
  String toString() {
    return 'ChooseBoxState(mysteryBoxs: $mysteryBoxs, boxSelected: $boxSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseBoxStateImpl &&
            const DeepCollectionEquality()
                .equals(other._mysteryBoxs, _mysteryBoxs) &&
            (identical(other.boxSelected, boxSelected) ||
                other.boxSelected == boxSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_mysteryBoxs), boxSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseBoxStateImplCopyWith<_$ChooseBoxStateImpl> get copyWith =>
      __$$ChooseBoxStateImplCopyWithImpl<_$ChooseBoxStateImpl>(
          this, _$identity);
}

abstract class _ChooseBoxState extends ChooseBoxState {
  factory _ChooseBoxState(
      {required final List<MysteryBoxModel> mysteryBoxs,
      final MysteryBoxModel? boxSelected}) = _$ChooseBoxStateImpl;
  _ChooseBoxState._() : super._();

  @override
  List<MysteryBoxModel> get mysteryBoxs;
  @override
  MysteryBoxModel? get boxSelected;
  @override
  @JsonKey(ignore: true)
  _$$ChooseBoxStateImplCopyWith<_$ChooseBoxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

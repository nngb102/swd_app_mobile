// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kid_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KidProfileState {
  List<KidProfileModel> get kidProfileByUserIdModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KidProfileStateCopyWith<KidProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KidProfileStateCopyWith<$Res> {
  factory $KidProfileStateCopyWith(
          KidProfileState value, $Res Function(KidProfileState) then) =
      _$KidProfileStateCopyWithImpl<$Res, KidProfileState>;
  @useResult
  $Res call({List<KidProfileModel> kidProfileByUserIdModel});
}

/// @nodoc
class _$KidProfileStateCopyWithImpl<$Res, $Val extends KidProfileState>
    implements $KidProfileStateCopyWith<$Res> {
  _$KidProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kidProfileByUserIdModel = null,
  }) {
    return _then(_value.copyWith(
      kidProfileByUserIdModel: null == kidProfileByUserIdModel
          ? _value.kidProfileByUserIdModel
          : kidProfileByUserIdModel // ignore: cast_nullable_to_non_nullable
              as List<KidProfileModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KidProfileStateImplCopyWith<$Res>
    implements $KidProfileStateCopyWith<$Res> {
  factory _$$KidProfileStateImplCopyWith(_$KidProfileStateImpl value,
          $Res Function(_$KidProfileStateImpl) then) =
      __$$KidProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<KidProfileModel> kidProfileByUserIdModel});
}

/// @nodoc
class __$$KidProfileStateImplCopyWithImpl<$Res>
    extends _$KidProfileStateCopyWithImpl<$Res, _$KidProfileStateImpl>
    implements _$$KidProfileStateImplCopyWith<$Res> {
  __$$KidProfileStateImplCopyWithImpl(
      _$KidProfileStateImpl _value, $Res Function(_$KidProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kidProfileByUserIdModel = null,
  }) {
    return _then(_$KidProfileStateImpl(
      kidProfileByUserIdModel: null == kidProfileByUserIdModel
          ? _value._kidProfileByUserIdModel
          : kidProfileByUserIdModel // ignore: cast_nullable_to_non_nullable
              as List<KidProfileModel>,
    ));
  }
}

/// @nodoc

class _$KidProfileStateImpl extends _KidProfileState {
  _$KidProfileStateImpl(
      {required final List<KidProfileModel> kidProfileByUserIdModel})
      : _kidProfileByUserIdModel = kidProfileByUserIdModel,
        super._();

  final List<KidProfileModel> _kidProfileByUserIdModel;
  @override
  List<KidProfileModel> get kidProfileByUserIdModel {
    if (_kidProfileByUserIdModel is EqualUnmodifiableListView)
      return _kidProfileByUserIdModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kidProfileByUserIdModel);
  }

  @override
  String toString() {
    return 'KidProfileState(kidProfileByUserIdModel: $kidProfileByUserIdModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KidProfileStateImpl &&
            const DeepCollectionEquality().equals(
                other._kidProfileByUserIdModel, _kidProfileByUserIdModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_kidProfileByUserIdModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KidProfileStateImplCopyWith<_$KidProfileStateImpl> get copyWith =>
      __$$KidProfileStateImplCopyWithImpl<_$KidProfileStateImpl>(
          this, _$identity);
}

abstract class _KidProfileState extends KidProfileState {
  factory _KidProfileState(
          {required final List<KidProfileModel> kidProfileByUserIdModel}) =
      _$KidProfileStateImpl;
  _KidProfileState._() : super._();

  @override
  List<KidProfileModel> get kidProfileByUserIdModel;
  @override
  @JsonKey(ignore: true)
  _$$KidProfileStateImplCopyWith<_$KidProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

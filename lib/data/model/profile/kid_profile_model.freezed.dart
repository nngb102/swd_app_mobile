// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kid_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KidProfileModel _$KidProfileModelFromJson(Map<String, dynamic> json) {
  return _KidProfileModel.fromJson(json);
}

/// @nodoc
mixin _$KidProfileModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'themeId')
  int? get themeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'descriptionHobby')
  String? get descriptionHobby => throw _privateConstructorUsedError;
  @JsonKey(name: 'yob')
  String? get yob => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'material')
  String? get material => throw _privateConstructorUsedError;
  @JsonKey(name: 'typeOrigin')
  String? get typeOrigin => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KidProfileModelCopyWith<KidProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KidProfileModelCopyWith<$Res> {
  factory $KidProfileModelCopyWith(
          KidProfileModel value, $Res Function(KidProfileModel) then) =
      _$KidProfileModelCopyWithImpl<$Res, KidProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'themeId') int? themeId,
      @JsonKey(name: 'userId') int? userId,
      @JsonKey(name: 'fullName') String? fullName,
      @JsonKey(name: 'descriptionHobby') String? descriptionHobby,
      @JsonKey(name: 'yob') String? yob,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'material') String? material,
      @JsonKey(name: 'typeOrigin') String? typeOrigin,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$KidProfileModelCopyWithImpl<$Res, $Val extends KidProfileModel>
    implements $KidProfileModelCopyWith<$Res> {
  _$KidProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? themeId = freezed,
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? descriptionHobby = freezed,
    Object? yob = freezed,
    Object? gender = freezed,
    Object? color = freezed,
    Object? type = freezed,
    Object? material = freezed,
    Object? typeOrigin = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      themeId: freezed == themeId
          ? _value.themeId
          : themeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionHobby: freezed == descriptionHobby
          ? _value.descriptionHobby
          : descriptionHobby // ignore: cast_nullable_to_non_nullable
              as String?,
      yob: freezed == yob
          ? _value.yob
          : yob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOrigin: freezed == typeOrigin
          ? _value.typeOrigin
          : typeOrigin // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KidProfileModelImplCopyWith<$Res>
    implements $KidProfileModelCopyWith<$Res> {
  factory _$$KidProfileModelImplCopyWith(_$KidProfileModelImpl value,
          $Res Function(_$KidProfileModelImpl) then) =
      __$$KidProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'themeId') int? themeId,
      @JsonKey(name: 'userId') int? userId,
      @JsonKey(name: 'fullName') String? fullName,
      @JsonKey(name: 'descriptionHobby') String? descriptionHobby,
      @JsonKey(name: 'yob') String? yob,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'material') String? material,
      @JsonKey(name: 'typeOrigin') String? typeOrigin,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$KidProfileModelImplCopyWithImpl<$Res>
    extends _$KidProfileModelCopyWithImpl<$Res, _$KidProfileModelImpl>
    implements _$$KidProfileModelImplCopyWith<$Res> {
  __$$KidProfileModelImplCopyWithImpl(
      _$KidProfileModelImpl _value, $Res Function(_$KidProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? themeId = freezed,
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? descriptionHobby = freezed,
    Object? yob = freezed,
    Object? gender = freezed,
    Object? color = freezed,
    Object? type = freezed,
    Object? material = freezed,
    Object? typeOrigin = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$KidProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      themeId: freezed == themeId
          ? _value.themeId
          : themeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionHobby: freezed == descriptionHobby
          ? _value.descriptionHobby
          : descriptionHobby // ignore: cast_nullable_to_non_nullable
              as String?,
      yob: freezed == yob
          ? _value.yob
          : yob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOrigin: freezed == typeOrigin
          ? _value.typeOrigin
          : typeOrigin // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$KidProfileModelImpl extends _KidProfileModel {
  _$KidProfileModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'themeId') this.themeId,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'fullName') this.fullName,
      @JsonKey(name: 'descriptionHobby') this.descriptionHobby,
      @JsonKey(name: 'yob') this.yob,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'color') this.color,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'material') this.material,
      @JsonKey(name: 'typeOrigin') this.typeOrigin,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt})
      : super._();

  factory _$KidProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KidProfileModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'themeId')
  final int? themeId;
  @override
  @JsonKey(name: 'userId')
  final int? userId;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'descriptionHobby')
  final String? descriptionHobby;
  @override
  @JsonKey(name: 'yob')
  final String? yob;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'color')
  final String? color;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'material')
  final String? material;
  @override
  @JsonKey(name: 'typeOrigin')
  final String? typeOrigin;
  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'KidProfileModel(id: $id, themeId: $themeId, userId: $userId, fullName: $fullName, descriptionHobby: $descriptionHobby, yob: $yob, gender: $gender, color: $color, type: $type, material: $material, typeOrigin: $typeOrigin, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KidProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.themeId, themeId) || other.themeId == themeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.descriptionHobby, descriptionHobby) ||
                other.descriptionHobby == descriptionHobby) &&
            (identical(other.yob, yob) || other.yob == yob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.typeOrigin, typeOrigin) ||
                other.typeOrigin == typeOrigin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      themeId,
      userId,
      fullName,
      descriptionHobby,
      yob,
      gender,
      color,
      type,
      material,
      typeOrigin,
      status,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KidProfileModelImplCopyWith<_$KidProfileModelImpl> get copyWith =>
      __$$KidProfileModelImplCopyWithImpl<_$KidProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KidProfileModelImplToJson(
      this,
    );
  }
}

abstract class _KidProfileModel extends KidProfileModel {
  factory _KidProfileModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'themeId') final int? themeId,
          @JsonKey(name: 'userId') final int? userId,
          @JsonKey(name: 'fullName') final String? fullName,
          @JsonKey(name: 'descriptionHobby') final String? descriptionHobby,
          @JsonKey(name: 'yob') final String? yob,
          @JsonKey(name: 'gender') final String? gender,
          @JsonKey(name: 'color') final String? color,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'material') final String? material,
          @JsonKey(name: 'typeOrigin') final String? typeOrigin,
          @JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'createdAt') final String? createdAt,
          @JsonKey(name: 'updatedAt') final String? updatedAt}) =
      _$KidProfileModelImpl;
  _KidProfileModel._() : super._();

  factory _KidProfileModel.fromJson(Map<String, dynamic> json) =
      _$KidProfileModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'themeId')
  int? get themeId;
  @override
  @JsonKey(name: 'userId')
  int? get userId;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'descriptionHobby')
  String? get descriptionHobby;
  @override
  @JsonKey(name: 'yob')
  String? get yob;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'color')
  String? get color;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'material')
  String? get material;
  @override
  @JsonKey(name: 'typeOrigin')
  String? get typeOrigin;
  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$KidProfileModelImplCopyWith<_$KidProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

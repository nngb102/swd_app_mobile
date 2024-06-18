import 'package:freezed_annotation/freezed_annotation.dart';

part 'kid_profile_model.freezed.dart';
part 'kid_profile_model.g.dart';

@freezed
class KidProfileModel with _$KidProfileModel {
  @JsonSerializable(explicitToJson: true)
  factory KidProfileModel({
    @JsonKey(name: 'id') required int id,
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
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _KidProfileModel;

  factory KidProfileModel.fromJson(Map<String, dynamic> json) =>
      _$KidProfileModelFromJson(json);

  const KidProfileModel._();
}

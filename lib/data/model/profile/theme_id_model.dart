// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'theme_id_model.g.dart';

@JsonSerializable()
class ThemeIdModel {
  ThemeIdModel({
    required this.fullName,
    required this.descriptionHobby,
    required this.yob,
    required this.gender,
    required this.color,
    required this.type,
    required this.material,
    required this.toyOrigin,
    required this.themeId,
  });

  factory ThemeIdModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeIdModelFromJson(json);
  Map<String, dynamic> toJson() => _$ThemeIdModelToJson(this);

  @JsonKey(name: 'themeId')
  final int themeId;

  @JsonKey(name: 'fullName')
  final String fullName;

  @JsonKey(name: 'descriptionHobby')
  final String descriptionHobby;

  @JsonKey(name: 'yob')
  final String yob;

  @JsonKey(name: 'gender')
  final String gender;

  @JsonKey(name: 'color')
  final String color;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'material')
  final String material;

  @JsonKey(name: 'toyOrigin')
  final String toyOrigin;
}

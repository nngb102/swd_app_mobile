// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'theme_id_model.g.dart';

@JsonSerializable()
class ThemeIdModel {
  ThemeIdModel({
    required this.themeId,
  });

  factory ThemeIdModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeIdModelFromJson(json);
  Map<String, dynamic> toJson() => _$ThemeIdModelToJson(this);

  @JsonKey(name: 'themeId')
  final int themeId;
}

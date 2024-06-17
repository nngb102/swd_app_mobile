import 'package:freezed_annotation/freezed_annotation.dart';

part 'themes_model.freezed.dart';
part 'themes_model.g.dart';

@freezed
class ThemesModel with _$ThemesModel {
  @JsonSerializable(explicitToJson: true)
  factory ThemesModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ThemesModel;

  factory ThemesModel.fromJson(Map<String, dynamic> json) =>
      _$ThemesModelFromJson(json);

  const ThemesModel._();
}

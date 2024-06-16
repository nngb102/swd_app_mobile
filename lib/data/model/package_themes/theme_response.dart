import 'package:freezed_annotation/freezed_annotation.dart';

import 'themes_model.dart';

part 'theme_response.freezed.dart';
part 'theme_response.g.dart';

@freezed
class ThemeResponse with _$ThemeResponse {
  @JsonSerializable(explicitToJson: true)
  factory ThemeResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'themes') required List<ThemesModel> themes,
  }) = _ThemeResponse;

  factory ThemeResponse.fromJson(Map<String, dynamic> json) =>
      _$ThemeResponseFromJson(json);

  const ThemeResponse._();
}

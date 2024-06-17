import 'package:freezed_annotation/freezed_annotation.dart';

import 'mystery_box_model.dart';

part 'mystery_box_response.freezed.dart';
part 'mystery_box_response.g.dart';

@freezed
class MysteryBoxResponse with _$MysteryBoxResponse {
  @JsonSerializable(explicitToJson: true)
  factory MysteryBoxResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'mysteryBoxs') required List<MysteryBoxModel> mysteryBoxs,
  }) = _MysteryBoxResponse;

  factory MysteryBoxResponse.fromJson(Map<String, dynamic> json) =>
      _$MysteryBoxResponseFromJson(json);

  const MysteryBoxResponse._();
}

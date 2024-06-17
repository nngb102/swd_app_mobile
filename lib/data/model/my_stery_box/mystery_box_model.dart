import 'package:freezed_annotation/freezed_annotation.dart';

part 'mystery_box_model.freezed.dart';
part 'mystery_box_model.g.dart';

@freezed
class MysteryBoxModel with _$MysteryBoxModel {
  @JsonSerializable(explicitToJson: true)
  factory MysteryBoxModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'priceAvarage') String? priceAvarage,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'qrCode') String? qrCode,
    @JsonKey(name: 'quantityProInBox') String? quantityProInBox,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _MysteryBoxModel;

  factory MysteryBoxModel.fromJson(Map<String, dynamic> json) =>
      _$MysteryBoxModelFromJson(json);

  const MysteryBoxModel._();
}

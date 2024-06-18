import 'package:freezed_annotation/freezed_annotation.dart';

part 'adult_model.freezed.dart';
part 'adult_model.g.dart';

@freezed
class AdultModel with _$AdultModel {
  @JsonSerializable(explicitToJson: true)
  factory AdultModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'username') int? username,
    @JsonKey(name: 'fullName') int? fullName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'address') String? address,
  }) = _AdultModel;

  factory AdultModel.fromJson(Map<String, dynamic> json) =>
      _$AdultModelFromJson(json);

  const AdultModel._();
}

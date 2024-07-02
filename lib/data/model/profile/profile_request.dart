import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_request.freezed.dart';
part 'profile_request.g.dart';

@freezed
class ProfileRequest with _$ProfileRequest {
  @JsonSerializable(explicitToJson: true)
  factory ProfileRequest({
    @JsonKey(name: 'themeId') int? themeId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'descriptionHobby') String? descriptionHobby,
    @JsonKey(name: 'yob') String? yob,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'material') String? material,
    @JsonKey(name: 'typeOrigin') String? typeOrigin,
  }) = _ProfileRequest;

  factory ProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileRequestFromJson(json);

  const ProfileRequest._();
}

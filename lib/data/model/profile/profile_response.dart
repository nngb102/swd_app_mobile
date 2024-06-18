import 'package:freezed_annotation/freezed_annotation.dart';

import 'adult_model.dart';
import 'kid_profile_model.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  @JsonSerializable(explicitToJson: true)
  factory ProfileResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'kidProfiles') List<KidProfileModel>? kidProfiles,
    @JsonKey(name: 'adult') List<AdultModel>? adult,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  const ProfileResponse._();

  factory ProfileResponse.initial() => ProfileResponse(
        success: true,
        message: '',
        kidProfiles: [],
        adult: [],
      );
}

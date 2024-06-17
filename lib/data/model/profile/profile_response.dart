import 'package:freezed_annotation/freezed_annotation.dart';

import 'kid_profile_by_user_id_model.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  @JsonSerializable(explicitToJson: true)
  factory ProfileResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'kidProfilesByUserId')
    required List<KidProfileByUserIdModel> kidProfilesByUserId,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  const ProfileResponse._();

  factory ProfileResponse.initial() => ProfileResponse(
        success: true,
        message: '',
        kidProfilesByUserId: [],
      );
}

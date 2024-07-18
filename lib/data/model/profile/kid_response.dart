import 'package:freezed_annotation/freezed_annotation.dart';
import 'kid_profile_model.dart';

part 'kid_response.freezed.dart';
part 'kid_response.g.dart';

@freezed
class KidResponse with _$KidResponse {
  @JsonSerializable(explicitToJson: true)
  factory KidResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'kidProfiles') List<KidProfileModel>? kidProfiles,
  }) = _KidResponse;

  factory KidResponse.fromJson(Map<String, dynamic> json) =>
      _$KidResponseFromJson(json);

  const KidResponse._();

  factory KidResponse.initial() => KidResponse(
        success: true,
        message: '',
        kidProfiles: [],
      );
}

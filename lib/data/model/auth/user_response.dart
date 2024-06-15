import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  @JsonSerializable(explicitToJson: true)
  factory UserResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'status') required bool status,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  const UserResponse._();

  factory UserResponse.initial() => UserResponse(
        id: 0,
        username: '',
        password: '',
        fullName: '',
        email: '',
        phone: '',
        address: '',
        status: false,
      );
}

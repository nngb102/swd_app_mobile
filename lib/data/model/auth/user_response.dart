import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  @JsonSerializable(explicitToJson: true)
  factory UserResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'username')  String? username,
    @JsonKey(name: 'password')  String? password,
    @JsonKey(name: 'fullName')  String? fullName,
    @JsonKey(name: 'email')  String? email,
    @JsonKey(name: 'phone')  String? phone,
    @JsonKey(name: 'address')  String? address,
    @JsonKey(name: 'status')  bool? status,
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

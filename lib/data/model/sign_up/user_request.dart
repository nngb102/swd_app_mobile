import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_request.freezed.dart';
part 'user_request.g.dart';

@freezed
class UserRequest with _$UserRequest {
  @JsonSerializable(explicitToJson: true)
  factory UserRequest({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'status') required bool status,
  }) = _UserRequest;

  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);

  const UserRequest._();

  // factory UserRequest.initial() => UserRequest(
  //       id: 0,
  //       username: '',
  //       password: '',
  //       fullName: '',
  //       email: '',
  //       phone: '',
  //       address: '',
  //       status: false,
  //     );
}

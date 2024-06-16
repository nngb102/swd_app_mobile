/// like user model but without id

import 'package:json_annotation/json_annotation.dart';
part 'user_request.g.dart';

@JsonSerializable()
class UserRequest {
  UserRequest({
    required this.username,
    required this.password,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.address,
    required this.role,
    required this.status,
  });

  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UserRequestToJson(this);

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'fullName')
  final String fullName;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'address')
  final String address;

  @JsonKey(name: 'role')
  final String role;

  @JsonKey(name: 'status')
  final bool status;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_response.dart';

part 'auth_login.freezed.dart';
part 'auth_login.g.dart';

@freezed
class AuthLogin with _$AuthLogin {
  @JsonSerializable(explicitToJson: true)
  factory AuthLogin({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'user') required UserResponse user,
  }) = _AuthLogin;

  factory AuthLogin.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginFromJson(json);

  const AuthLogin._();

  factory AuthLogin.initial() => AuthLogin(
        success: false,
        message: '',
        accessToken: '',
        user: UserResponse.initial(),
      );
}

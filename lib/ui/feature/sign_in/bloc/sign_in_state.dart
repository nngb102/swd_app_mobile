import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/auth/auth_login.dart';

import '../../../../data/model/auth/user_response.dart';
import '../../../../data/model/sign_in/user.dart';

part 'sign_in_state.freezed.dart';

enum Status { init, inProgress, success }

@freezed
class SignInState with _$SignInState {
  factory SignInState({
    required String userName,
    required String password,
    required User user,
    required AuthLogin authLogin,
    required String? token,
  }) = _SignInState;

  const SignInState._();

  factory SignInState.initial() => SignInState(
        authLogin: AuthLogin(
          message: '',
          accessToken: '',
          success: true,
          user: UserResponse.initial(),
        ),
        userName: '',
        password: '',
        user: User(
          password: 'string',
          username: 'string',
        ),
        token: null,
      );
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/auth/auth_login.dart';

import '../../../../data/model/auth/user_response.dart';
import '../../../../data/model/sign_up/user_request.dart';

part 'sign_up_state.freezed.dart';

enum Status { init, inProgress, success }

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    required bool check,
    required String email,
    required String password,
    required String fullName,
    required String phone,
    required String address,
    required UserRequest userRequest,
    required AuthLogin authLogin,
    required String? token,
  }) = _SignInState;

  const SignUpState._();

  factory SignUpState.initial() => SignUpState(
        check: false,
        authLogin: AuthLogin(
          message: '',
          accessToken: '',
          success: true,
          user: UserResponse.initial(),
        ),
        email: '',
        password: '',
        fullName: '',
        phone: '',
        address: '',
        userRequest: UserRequest(
          username: '',
          password: '',
          fullName: '',
          email: '',
          phone: '',
          address: '',
          status: false,
          role: 'ADMIN',
        ),
        token: null,
      );
}

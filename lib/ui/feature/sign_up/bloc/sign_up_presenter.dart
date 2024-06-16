import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/sign_up/user_request.dart';
import '../../../../data/model/source%20data/api_client.dart';
import '../../../base/custom_exception.dart';
import '../../../bloc/ui_presenter.dart';
import 'sign_up_state.dart';

class SignUpPresenter extends Cubit<SignUpState> {
  SignUpPresenter({
    required this.uiPresenter,
    @visibleForTesting SignUpState? state,
  }) : super(
          state ?? SignUpState.initial(),
        );
  final UiPresenter uiPresenter;

  ApiClient apiClient = ApiClient(Dio());
  void check() {
    emit(state.copyWith(check: !state.check));
  }

  void inputUserName(String email) {
    emit(state.copyWith(email: email));
  }

  void inputFullName(String email) {
    emit(state.copyWith(email: email));
  }

  void inputPassword(String password) {
    emit(state.copyWith(password: password));
  }

  void inputEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void inputPhone(String phone) {
    emit(state.copyWith(phone: phone));
  }

  void inputAddress(String address) {
    emit(state.copyWith(address: address));
  }

  Future<void> onTapSignUp({
    Function()? onSuccessCallBack,
    Function(CustomException error)? onErrorCallBack,
  }) async {
    final userRequest = UserRequest(
      username: state.email,
      password: state.password,
      fullName: state.email,
      email: state.email,
      phone: state.phone,
      address: state.address,
      status: false,
      role: 'ADMIN',
    );
    await Result.guardFuture(() async => apiClient.postRegister(userRequest))
        .then(
      (value) => value.when(
        success: (data) {
          onSuccessCallBack?.call();
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }
}

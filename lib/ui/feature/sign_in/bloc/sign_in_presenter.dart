import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';
import '../../../../data/model/auth/user_response.dart';
import '../../../../data/model/sign_in/user.dart';
import '../../../../data/model/source%20data/api_client.dart';
import '../../../base/custom_exception.dart';
import '../../../bloc/ui_presenter.dart';
import 'sign_in_state.dart';

class SignInPresenter extends Cubit<SignInState> {
  SignInPresenter({
    required this.uiPresenter,
    @visibleForTesting SignInState? state,
  }) : super(
          state ?? SignInState.initial(),
        );
  final UiPresenter uiPresenter;
  TextEditingController textEditingControllerUserName = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  ApiClient apiClient = ApiClient(Dio());

  void inputUserName(String userName) {
    emit(state.copyWith(userName: userName));
  }

  void inputPassword(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> onTapSignIn({
    Function()? onSuccessCallBack,
    Function(CustomException error)? onErrorCallBack,
  }) async {
    final user = User(username: state.userName, password: state.password);

    await Result.guardFuture(() async => apiClient.postLogIn(user)).then(
      (value) => value.when(
        success: (data) async {
          final token = data.accessToken;
          print('token : $token');
          if (token != null) {
            await saveUser(data.user);
            addToken(token);
            emit(
              state.copyWith(
                token: token,
              ),
            );
            onSuccessCallBack?.call();
          } else {
            onErrorCallBack?.call(CustomException(Exception(data.message)));
          }
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }

  void addToken(String token) {
    uiPresenter.addToken(token);
  }

  Future<void> saveUser(UserResponse? user) async {
    uiPresenter.saveUser(user);
  }

  Future<void> callBack(Function showToast) async {
    await showToast.call();
  }
}

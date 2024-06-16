import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/sign_in/user.dart';
import '../../../../data/model/source%20data/api_client.dart';
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

  Future<void> onTapSignIn() async {
    final user = User(username: state.userName, password: state.password);
    final authLogin = await apiClient.postLogIn(user);

    final token = authLogin.accessToken;
    print(token);
    emit(state.copyWith(token: token));
  }

  void addToken() {
    uiPresenter.addToken(state.token);
  }

  Future<void> callBack(Function showToast) async {
    await showToast.call();
  }
}

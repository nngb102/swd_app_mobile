import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/source%20data/api_client.dart';
import '../../../base/custom_exception.dart';
import 'choose_box_state.dart';

class ChooseBoxPresenter extends Cubit<ChooseBoxState> {
  ChooseBoxPresenter({
    @visibleForTesting ChooseBoxState? state,
  }) : super(
          state ?? ChooseBoxState.initial(),
        );

  ApiClient apiClient = ApiClient(Dio());

  Future<void> getTheme(
      Function(CustomException error)? onErrorCallBack) async {
    await Result.guardFuture(() async => apiClient.getThemes()).then(
      (value) => value.when(
        success: (data) {
          final themes = data.themes.reversed.toList();
          emit(state.copyWith(themes: themes));
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }
}

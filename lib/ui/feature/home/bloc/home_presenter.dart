import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/source%20data/api_client.dart';
import '../../../base/custom_exception.dart';
import 'home_state.dart';

class HomePresenter extends Cubit<HomeState> {
  HomePresenter({
    @visibleForTesting HomeState? state,
  }) : super(
          state ?? HomeState.initial(),
        );
  ApiClient apiClient = ApiClient(Dio());

  Future<void> getPackage(
      Function(CustomException error)? onErrorCallBack) async {
    await Result.guardFuture(() async => apiClient.getPackage('', 1)).then(
      (value) => value.when(
        success: (data) {
          final packages = data.packages.reversed.toList();
          emit(state.copyWith(packages: packages));
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/source%20data/api_client.dart';
import '../../../../injection/injector.dart';
import '../../../base/custom_exception.dart';
import '../../../bloc/ui_presenter.dart';
import 'orders_state.dart';

class OrdersPresenter extends Cubit<OrdersState> {
  OrdersPresenter({
    required this.uiPresenter,
    @visibleForTesting OrdersState? state,
  }) : super(
          state ?? OrdersState.initial(),
        );
  final UiPresenter uiPresenter;

  ApiClient apiClient =
      ApiClient(Dio(), authToken: injector.get<UiPresenter>().state.token);

  Future<void> getPackageOrders({
    Function(CustomException error)? onErrorCallBack,
  }) async {
    await Result.guardFuture(() async => apiClient.getPackageOrderByUserId())
        .then(
      (value) => value.when(
        success: (data) {
          final packageOrders = data.packageOrders;
          emit(
            state.copyWith(
              packageOrders: packageOrders ?? [],
            ),
          );
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }
}

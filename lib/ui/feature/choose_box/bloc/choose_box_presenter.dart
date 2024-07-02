import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/my_stery_box/mystery_box_model.dart';
import '../../../../data/model/order_package/order_package.dart';
import '../../../../data/model/source%20data/api_client.dart';
import '../../../../injection/injector.dart';
import '../../../base/custom_exception.dart';
import '../../../bloc/ui_presenter.dart';
import 'choose_box_state.dart';

class ChooseBoxPresenter extends Cubit<ChooseBoxState> {
  ChooseBoxPresenter({
    @visibleForTesting ChooseBoxState? state,
  }) : super(
          state ?? ChooseBoxState.initial(),
        );

  ApiClient apiClient =
      ApiClient(Dio(), authToken: injector.get<UiPresenter>().state.token);

  Future<void> getMysteryBox(
      Function(CustomException error)? onErrorCallBack) async {
    await Result.guardFuture(() async => apiClient.getMysteryBox()).then(
      (value) => value.when(
        success: (data) {
          final mysteryBoxs = data.mysteryBoxs;

          emit(state.copyWith(mysteryBoxs: mysteryBoxs));
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }

  Future<void> addOrderPackage(
      {required int kidId,
      required int packageId,
      required String nameOfKid,
      required Function() onSuccessCallBack,
      Function(CustomException error)? onErrorCallBack}) async {
    final user = injector.get<UiPresenter>().state.user;
    final totalPrice = state.boxSelected?.priceAvarage ?? '500000';
    final orderPackage = OrderPackage(
      kidId: kidId.toString(),
      totalPrice: double.parse(totalPrice),
      nameOfAdult: user?.fullName ?? '',
      nameOfKid: nameOfKid,
      phone: user?.phone ?? '',
      email: user?.email ?? '',
      additionalNotes: 'This is a sample additional note',
    );
    await Result.guardFuture(() async => apiClient.addOrderPackage(
          packageId.toString(),
          orderPackage,
        )).then(
      (value) => value.when(
        success: (data) {
          onSuccessCallBack.call();
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }

  void chooseBox(MysteryBoxModel boxSelected) {
    emit(state.copyWith(boxSelected: boxSelected));
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/profile/theme_id_model.dart';
import '../../../../data/model/source%20data/api_client.dart';
import '../../../../injection/injector.dart';
import '../../../base/custom_exception.dart';
import '../../../bloc/ui_presenter.dart';
import 'kid_create_state.dart';

class KidCreatePresenter extends Cubit<KidCreateState> {
  KidCreatePresenter({
    required this.uiPresenter,
    @visibleForTesting KidCreateState? state,
  }) : super(
          state ?? KidCreateState.initial(),
        );
  final UiPresenter uiPresenter;

  ApiClient apiClient =
      ApiClient(Dio(), authToken: injector.get<UiPresenter>().state.token);

  void inputFullName(String fullName) {
    emit(state.copyWith(fullName: fullName));
  }

  void inputHobby(String hobby) {
    emit(state.copyWith(hobby: hobby));
  }

  void inputColor(String color) {
    emit(state.copyWith(color: color));
  }

  void inputGender(String gender) {
    emit(state.copyWith(gender: gender));
  }

  void inputMadeIn(String madeIn) {
    emit(state.copyWith(madeIn: madeIn));
  }

  void inputType(String type) {
    emit(state.copyWith(type: type));
  }

  void inputMaterial(String material) {
    emit(state.copyWith(material: material));
  }

  void inputBirth(String birth) {
    emit(state.copyWith(birth: birth));
  }

  Future<void> onTapCreateKid({
    Function()? onSuccessCallBack,
    Function(CustomException error)? onErrorCallBack,
  }) async {
    final kid = ThemeIdModel(
      fullName: state.fullName,
      descriptionHobby: state.hobby,
      yob: state.birth,
      gender: state.gender,
      color: state.color,
      type: state.type,
      material: state.material,
      toyOrigin: state.madeIn,
      themeId: 1,
    );
    await Result.guardFuture(
      () async => apiClient.updateProfile(
        uiPresenter.state.user?.id ?? 1,
        kid,
      ),
    ).then(
      (value) => value.when(
        success: (data) {
          onSuccessCallBack?.call();
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }
}

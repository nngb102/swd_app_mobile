import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/package_themes/themes_model.dart';
import '../../../../data/model/profile/kid_profile_by_user_id_model.dart';
import '../../../../data/model/source%20data/api_client.dart';
import '../../../../injection/injector.dart';
import '../../../base/custom_exception.dart';
import '../../../bloc/ui_presenter.dart';
import 'choose_theme_and_kid_state.dart';

class ChooseThemeAndKidPresenter extends Cubit<ChooseThemeAndKidState> {
  ChooseThemeAndKidPresenter({
    @visibleForTesting ChooseThemeAndKidState? state,
  }) : super(
          state ?? ChooseThemeAndKidState.initial(),
        );

  ApiClient apiClient =
      ApiClient(Dio(), authToken: injector.get<UiPresenter>().state.token);

  Future<void> getTheme(
      Function(CustomException error)? onErrorCallBack) async {
    await Result.guardFuture(() async => apiClient.getThemes('', 1)).then(
      (value) => value.when(
        success: (data) {
          final themes = data.themes.reversed.toList();

          emit(state.copyWith(themes: themes));
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }

  Future<void> getKid(Function(CustomException error)? onErrorCallBack) async {
    await Result.guardFuture(() async => apiClient.getProfiles()).then(
      (value) => value.when(
        success: (data) {
          final kidProfileByUserIdModel = data.kidProfilesByUserId;
          emit(
              state.copyWith(kidProfileByUserIdModel: kidProfileByUserIdModel));
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }

  void chooseTheme(ThemesModel themeSelected) {
    emit(state.copyWith(themeSelected: themeSelected));
  }

  void chooseKid(KidProfileByUserIdModel kidSelected) {
    emit(state.copyWith(kidSelected: kidSelected));
  }
}

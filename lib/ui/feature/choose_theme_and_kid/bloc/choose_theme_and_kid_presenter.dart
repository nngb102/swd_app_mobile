import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/package_themes/themes_model.dart';
import '../../../../data/model/profile/kid_profile_model.dart';
import '../../../../data/model/profile/theme_id_model.dart';
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

  Future<void> getKid({
    required Function() onSuccess,
    Function(CustomException error)? onErrorCallBack,
  }) async {
    await Result.guardFuture(() async => apiClient.getChooseProfile()).then(
      (value) => value.when(
        success: (data) {
          final kidProfileByUserIdModel = data.kidProfiles;
          emit(
            state.copyWith(
              kidProfileByUserIdModel: kidProfileByUserIdModel ?? [],
            ),
          );

          if (kidProfileByUserIdModel == null ||
              kidProfileByUserIdModel.isEmpty) {
            return onSuccess.call();
          }
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }

  Future<void> updateProfile(
      {Function()? onSuccessCallBack,
      Function(CustomException error)? onErrorCallBack}) async {
    await Result.guardFuture(
      () async => apiClient.updateProfile(
        state.kidSelected?.id ?? 1,
        ThemeIdModel(
            themeId: state.themeSelected?.id ?? 0,
            fullName: state.kidSelected?.fullName ?? '',
            descriptionHobby: state.kidSelected?.descriptionHobby ?? '',
            yob: state.kidSelected?.yob ?? '',
            gender: state.kidSelected?.gender ?? '',
            color: state.kidSelected?.color ?? '',
            type: state.kidSelected?.type ?? '',
            material: state.kidSelected?.material ?? '',
            toyOrigin: state.kidSelected?.typeOrigin ?? ''),
      ),
    ).then(
      (value) => value.when(
        success: (data) {
          onSuccessCallBack?.call();
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
    onSuccessCallBack?.call();
  }

  void chooseTheme(ThemesModel themeSelected) {
    emit(state.copyWith(themeSelected: themeSelected));
  }

  void chooseKid(KidProfileModel kidSelected) {
    emit(state.copyWith(kidSelected: kidSelected));
  }
}

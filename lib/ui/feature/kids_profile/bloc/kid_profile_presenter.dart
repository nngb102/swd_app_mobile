import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/source%20data/api_client.dart';
import '../../../../injection/injector.dart';
import '../../../base/custom_exception.dart';
import '../../../bloc/ui_presenter.dart';
import 'kid_profile_state.dart';

class KidProfilePresenter extends Cubit<KidProfileState> {
  KidProfilePresenter({
    required this.uiPresenter,
    @visibleForTesting KidProfileState? state,
  }) : super(
          state ?? KidProfileState.initial(),
        );
  final UiPresenter uiPresenter;

  ApiClient apiClient =
      ApiClient(Dio(), authToken: injector.get<UiPresenter>().state.token);

  Future<void> getKid({
    Function(CustomException error)? onErrorCallBack,
  }) async {
    await Result.guardFuture(() async => apiClient.getProfiles()).then(
      (value) => value.when(
        success: (data) {
          final kidProfileByUserIdModel = data.kidProfiles;
          emit(
            state.copyWith(
              kidProfileByUserIdModel: kidProfileByUserIdModel ?? [],
            ),
          );
        },
        failure: (error) => onErrorCallBack?.call(error),
      ),
    );
  }
}

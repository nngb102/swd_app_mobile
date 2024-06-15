import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ui_state.dart';

class UiPresenter extends Cubit<UiState> {
  UiPresenter({
    @visibleForTesting UiState? state,
  }) : super(state ?? UiState.initial());

  void addToken(String? token) {
    emit(state.copyWith(token: token));
  }
}

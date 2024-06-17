import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/auth/user_response.dart';
part 'ui_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UiState with _$UiState {
  factory UiState({
    required String? token,
    @Default(null) UserResponse? user,
  }) = _UiState;

  const UiState._();

  factory UiState.initial() => UiState(token: null);
}

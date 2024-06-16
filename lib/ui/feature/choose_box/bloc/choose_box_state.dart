import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/package_themes/themes_model.dart';

part 'choose_box_state.freezed.dart';

enum Status { init, inProgress, success }

@freezed
class ChooseBoxState with _$ChooseBoxState {
  factory ChooseBoxState({
    required List<ThemesModel> themes,
  }) = _ChooseBoxState;

  const ChooseBoxState._();

  factory ChooseBoxState.initial() => ChooseBoxState(themes: []);
}

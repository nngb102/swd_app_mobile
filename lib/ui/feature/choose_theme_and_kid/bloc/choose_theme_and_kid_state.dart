import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/package_themes/themes_model.dart';
import '../../../../data/model/profile/kid_profile_model.dart';

part 'choose_theme_and_kid_state.freezed.dart';

enum Status { init, inProgress, success }

@freezed
class ChooseThemeAndKidState with _$ChooseThemeAndKidState {
  factory ChooseThemeAndKidState({
    required List<ThemesModel> themes,
    required List<KidProfileModel> kidProfileByUserIdModel,
    ThemesModel? themeSelected,
    KidProfileModel? kidSelected,
  }) = _ChooseThemeAndKidState;

  const ChooseThemeAndKidState._();

  factory ChooseThemeAndKidState.initial() => ChooseThemeAndKidState(
        themes: [],
        kidProfileByUserIdModel: [],
      );
}

extension ChooseThemeAndKidStateExt on ChooseThemeAndKidState {
  bool get isEnable => kidSelected != null && themeSelected != null;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/my_stery_box/mystery_box_model.dart';

part 'choose_box_state.freezed.dart';

@freezed
class ChooseBoxState with _$ChooseBoxState {
  factory ChooseBoxState(
      {required List<MysteryBoxModel> mysteryBoxs,
      MysteryBoxModel? boxSelected}) = _ChooseBoxState;

  const ChooseBoxState._();

  factory ChooseBoxState.initial() => ChooseBoxState(mysteryBoxs: []);
}

extension ChooseBoxStateExt on ChooseBoxState {
  bool get isEnable => boxSelected != null;
}

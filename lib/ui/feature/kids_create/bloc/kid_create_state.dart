import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/profile/theme_id_model.dart';

part 'kid_create_state.freezed.dart';

@freezed
class KidCreateState with _$KidCreateState {
  factory KidCreateState({
    required String fullName,
    required String hobby,
    required String birth,
    required String color,
    required String gender,
    required String type,
    required String material,
    required String madeIn,
    required ThemeIdModel themeIdModel,
  }) = _KidCreateState;

  const KidCreateState._();

  factory KidCreateState.initial() => KidCreateState(
        fullName: '',
        hobby: '',
        birth: '',
        color: '',
        gender: '',
        type: '',
        material: '',
        madeIn: '',
        themeIdModel: ThemeIdModel(
            fullName: '',
            descriptionHobby: '',
            yob: '',
            gender: '',
            color: '',
            type: '',
            material: '',
            toyOrigin: '',
            themeId: 1),
      );
}

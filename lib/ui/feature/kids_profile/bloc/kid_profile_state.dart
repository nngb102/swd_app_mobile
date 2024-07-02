import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/profile/kid_profile_model.dart';

part 'kid_profile_state.freezed.dart';

@freezed
class KidProfileState with _$KidProfileState {
  factory KidProfileState({
    required List<KidProfileModel> kidProfileByUserIdModel,
  }) = _KidProfileState;

  const KidProfileState._();

  factory KidProfileState.initial() => KidProfileState(
        kidProfileByUserIdModel: [],
      );
}

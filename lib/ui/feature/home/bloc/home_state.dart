import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/home/package_model.dart';

part 'home_state.freezed.dart';

enum DetailStatus { init, inProgress, success }

@Freezed(makeCollectionsUnmodifiable: false)
class HomeState with _$HomeState {
  factory HomeState({
    required List<Package> packages,
  }) = _HomeState;

  const HomeState._();

  factory HomeState.initial() => HomeState(
        packages: [],
      );
}

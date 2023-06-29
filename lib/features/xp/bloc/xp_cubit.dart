import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petevolution/utils/mixins/cubit_maybe_emit_mixin.dart';

part 'xp_cubit.freezed.dart';
part 'xp_cubit.g.dart';

@freezed
class XpState with _$XpState {
  const factory XpState({
    @Default(1) int currentLevel,
    @Default(0) int currentXP,
  }) = _XpState;

  factory XpState.fromJson(Map<String, dynamic> json) =>
      _$XpStateFromJson(json);
}

class XpCubit extends HydratedCubit<XpState> with CubitMaybeEmit {
  XpCubit() : super(const XpState());

  void awardXP(int xpPoints) async {
    final userXpAfterAward = state.currentXP + xpPoints;
    if (state.currentXP + xpPoints >= maxXpForLevel()) {
      levelUp(currentXp: userXpAfterAward);
    } else {
      emit(state.copyWith(currentXP: userXpAfterAward));
    }
  }

  void reset() {
    emit(state.copyWith(currentLevel: 1, currentXP: 0));
  }

  void levelUp({required int currentXp}) async {
    emit(
      state.copyWith(
        currentLevel: state.currentLevel + 1,
        currentXP: currentXp,
      ),
    );
  }

  int maxXpForLevel({int? level}) {
    final currentLevel = level ?? state.currentLevel;

    if (currentLevel == 0) {
      return 0;
    }
    return (100 * pow(1.2, currentLevel).toDouble()).toInt();
  }

  @override
  XpState? fromJson(Map<String, dynamic> json) => XpState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(XpState state) => state.toJson();
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petevolution/utils/mixins/cubit_maybe_emit_mixin.dart';

part 'food_cubit.freezed.dart';
part 'food_cubit.g.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState({
    List<String>? availableFood,
    @Default(false) bool isLoading,
  }) = _FoodState;

  factory FoodState.fromJson(Map<String, dynamic> json) =>
      _$FoodStateFromJson(json);
}

class FoodCubit extends HydratedCubit<FoodState> with CubitMaybeEmit {
  FoodCubit() : super(const FoodState()) {
    loadFoodList();
  }

  Future<void> loadFoodList() async {
    print('HERE');
    emit(state.copyWith(isLoading: true));
    List<String> foodList = [];
    await Future.delayed(const Duration(seconds: 2));
    emit(
      state.copyWith(
        availableFood: foodList,
        isLoading: false,
      ),
    );
  }

  @override
  FoodState? fromJson(Map<String, dynamic> json) => FoodState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(FoodState state) => state.toJson();
}

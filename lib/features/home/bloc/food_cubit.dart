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
    emit(state.copyWith(isLoading: true));
    final foodList = <String>[];
    foodList
      ..add(
        'https://pngimg.com/uploads/dog_food/dog_food_PNG3.png',
      )
      ..add(
        'https://www.pngkey.com/png/full/112-1121805_food-bag-dr-garys-best-breed-dog-food.png',
      );
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

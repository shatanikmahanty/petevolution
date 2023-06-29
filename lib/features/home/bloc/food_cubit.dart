import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/features/app/app.dart';
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
  final FirebaseStorageRepository _firebaseStorageRepository;

  FoodCubit(this._firebaseStorageRepository) : super(const FoodState()) {
    loadFoodList();
  }

  Future<void> loadFoodList() async {
    emit(state.copyWith(isLoading: true));
    final foodList = <String>[];

    final foodListRef =
        await _firebaseStorageRepository.listAll(kDogFoodImagesPath);

    for (final foodRef in foodListRef.items) {
      final downloadUrl = await foodRef.getDownloadURL();
      foodList.add(downloadUrl);
    }

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

  void addFood(String downloadUrl) {
    final foodList = List<String>.from(state.availableFood ?? []);
    foodList.add(downloadUrl);
    emit(
      state.copyWith(
        availableFood: foodList,
      ),
    );
  }
}

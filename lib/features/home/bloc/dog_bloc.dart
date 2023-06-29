import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'dog_bloc.freezed.dart';

class DogBloc extends HydratedBloc<DogEvent, DogState> {
  DogBloc() : super(const DogState.initial()) {
    on<DogEvent>((event, emit) {
      event.when(
        reset: () {
          emit(const DogState.initial());
        },
        run: () {
          emit(const DogState.running());
        },
        sleep: () {
          emit(DogState.sleeping(DateTime.now()));
        },
        eat: () {
          emit(const DogState.eating());
        },
        stand: () {
          emit(const DogState.standing());
        },
      );
    });
  }

  @override
  DogState? fromJson(Map<String, dynamic> json) => state.when(
        initial: () => const DogState.initial(),
        running: () => const DogState.running(),
        sleeping: (sleepStartTime) =>
            DogState.sleeping(DateTime.parse(json['sleepStartTime'] as String)),
        eating: () => const DogState.eating(),
        standing: () => const DogState.standing(),
      );

  @override
  Map<String, dynamic>? toJson(DogState state) => state.maybeWhen(
        sleeping: (sleepStartTime) => <String, dynamic>{
          'sleepStartTime': sleepStartTime?.toIso8601String(),
        },
        orElse: () => null,
      );
}

@freezed
class DogState with _$DogState {
  const factory DogState.initial() = _Initial;

  const factory DogState.running() = _Running;

  const factory DogState.sleeping(
    DateTime? sleepStartTime,
  ) = _Sleeping;

  const factory DogState.eating() = _Eating;

  const factory DogState.standing() = _Standing;
}

@freezed
class DogEvent with _$DogEvent {
  const factory DogEvent.reset() = _Reset;

  const factory DogEvent.run() = _Run;

  const factory DogEvent.sleep() = _Sleep;

  const factory DogEvent.eat() = _Eat;

  const factory DogEvent.stand() = _Stand;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() running,
    required TResult Function(DateTime? sleepStartTime) sleeping,
    required TResult Function() eating,
    required TResult Function() standing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? running,
    TResult? Function(DateTime? sleepStartTime)? sleeping,
    TResult? Function()? eating,
    TResult? Function()? standing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? running,
    TResult Function(DateTime? sleepStartTime)? sleeping,
    TResult Function()? eating,
    TResult Function()? standing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Sleeping value) sleeping,
    required TResult Function(_Eating value) eating,
    required TResult Function(_Standing value) standing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Sleeping value)? sleeping,
    TResult? Function(_Eating value)? eating,
    TResult? Function(_Standing value)? standing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Sleeping value)? sleeping,
    TResult Function(_Eating value)? eating,
    TResult Function(_Standing value)? standing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogStateCopyWith<$Res> {
  factory $DogStateCopyWith(DogState value, $Res Function(DogState) then) =
      _$DogStateCopyWithImpl<$Res, DogState>;
}

/// @nodoc
class _$DogStateCopyWithImpl<$Res, $Val extends DogState>
    implements $DogStateCopyWith<$Res> {
  _$DogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DogStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DogState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() running,
    required TResult Function(DateTime? sleepStartTime) sleeping,
    required TResult Function() eating,
    required TResult Function() standing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? running,
    TResult? Function(DateTime? sleepStartTime)? sleeping,
    TResult? Function()? eating,
    TResult? Function()? standing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? running,
    TResult Function(DateTime? sleepStartTime)? sleeping,
    TResult Function()? eating,
    TResult Function()? standing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Sleeping value) sleeping,
    required TResult Function(_Eating value) eating,
    required TResult Function(_Standing value) standing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Sleeping value)? sleeping,
    TResult? Function(_Eating value)? eating,
    TResult? Function(_Standing value)? standing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Sleeping value)? sleeping,
    TResult Function(_Eating value)? eating,
    TResult Function(_Standing value)? standing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DogState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_RunningCopyWith<$Res> {
  factory _$$_RunningCopyWith(
          _$_Running value, $Res Function(_$_Running) then) =
      __$$_RunningCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RunningCopyWithImpl<$Res>
    extends _$DogStateCopyWithImpl<$Res, _$_Running>
    implements _$$_RunningCopyWith<$Res> {
  __$$_RunningCopyWithImpl(_$_Running _value, $Res Function(_$_Running) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Running implements _Running {
  const _$_Running();

  @override
  String toString() {
    return 'DogState.running()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Running);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() running,
    required TResult Function(DateTime? sleepStartTime) sleeping,
    required TResult Function() eating,
    required TResult Function() standing,
  }) {
    return running();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? running,
    TResult? Function(DateTime? sleepStartTime)? sleeping,
    TResult? Function()? eating,
    TResult? Function()? standing,
  }) {
    return running?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? running,
    TResult Function(DateTime? sleepStartTime)? sleeping,
    TResult Function()? eating,
    TResult Function()? standing,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Sleeping value) sleeping,
    required TResult Function(_Eating value) eating,
    required TResult Function(_Standing value) standing,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Sleeping value)? sleeping,
    TResult? Function(_Eating value)? eating,
    TResult? Function(_Standing value)? standing,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Sleeping value)? sleeping,
    TResult Function(_Eating value)? eating,
    TResult Function(_Standing value)? standing,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class _Running implements DogState {
  const factory _Running() = _$_Running;
}

/// @nodoc
abstract class _$$_SleepingCopyWith<$Res> {
  factory _$$_SleepingCopyWith(
          _$_Sleeping value, $Res Function(_$_Sleeping) then) =
      __$$_SleepingCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? sleepStartTime});
}

/// @nodoc
class __$$_SleepingCopyWithImpl<$Res>
    extends _$DogStateCopyWithImpl<$Res, _$_Sleeping>
    implements _$$_SleepingCopyWith<$Res> {
  __$$_SleepingCopyWithImpl(
      _$_Sleeping _value, $Res Function(_$_Sleeping) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sleepStartTime = freezed,
  }) {
    return _then(_$_Sleeping(
      freezed == sleepStartTime
          ? _value.sleepStartTime
          : sleepStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Sleeping implements _Sleeping {
  const _$_Sleeping(this.sleepStartTime);

  @override
  final DateTime? sleepStartTime;

  @override
  String toString() {
    return 'DogState.sleeping(sleepStartTime: $sleepStartTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sleeping &&
            (identical(other.sleepStartTime, sleepStartTime) ||
                other.sleepStartTime == sleepStartTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sleepStartTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SleepingCopyWith<_$_Sleeping> get copyWith =>
      __$$_SleepingCopyWithImpl<_$_Sleeping>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() running,
    required TResult Function(DateTime? sleepStartTime) sleeping,
    required TResult Function() eating,
    required TResult Function() standing,
  }) {
    return sleeping(sleepStartTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? running,
    TResult? Function(DateTime? sleepStartTime)? sleeping,
    TResult? Function()? eating,
    TResult? Function()? standing,
  }) {
    return sleeping?.call(sleepStartTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? running,
    TResult Function(DateTime? sleepStartTime)? sleeping,
    TResult Function()? eating,
    TResult Function()? standing,
    required TResult orElse(),
  }) {
    if (sleeping != null) {
      return sleeping(sleepStartTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Sleeping value) sleeping,
    required TResult Function(_Eating value) eating,
    required TResult Function(_Standing value) standing,
  }) {
    return sleeping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Sleeping value)? sleeping,
    TResult? Function(_Eating value)? eating,
    TResult? Function(_Standing value)? standing,
  }) {
    return sleeping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Sleeping value)? sleeping,
    TResult Function(_Eating value)? eating,
    TResult Function(_Standing value)? standing,
    required TResult orElse(),
  }) {
    if (sleeping != null) {
      return sleeping(this);
    }
    return orElse();
  }
}

abstract class _Sleeping implements DogState {
  const factory _Sleeping(final DateTime? sleepStartTime) = _$_Sleeping;

  DateTime? get sleepStartTime;
  @JsonKey(ignore: true)
  _$$_SleepingCopyWith<_$_Sleeping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EatingCopyWith<$Res> {
  factory _$$_EatingCopyWith(_$_Eating value, $Res Function(_$_Eating) then) =
      __$$_EatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EatingCopyWithImpl<$Res>
    extends _$DogStateCopyWithImpl<$Res, _$_Eating>
    implements _$$_EatingCopyWith<$Res> {
  __$$_EatingCopyWithImpl(_$_Eating _value, $Res Function(_$_Eating) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Eating implements _Eating {
  const _$_Eating();

  @override
  String toString() {
    return 'DogState.eating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Eating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() running,
    required TResult Function(DateTime? sleepStartTime) sleeping,
    required TResult Function() eating,
    required TResult Function() standing,
  }) {
    return eating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? running,
    TResult? Function(DateTime? sleepStartTime)? sleeping,
    TResult? Function()? eating,
    TResult? Function()? standing,
  }) {
    return eating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? running,
    TResult Function(DateTime? sleepStartTime)? sleeping,
    TResult Function()? eating,
    TResult Function()? standing,
    required TResult orElse(),
  }) {
    if (eating != null) {
      return eating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Sleeping value) sleeping,
    required TResult Function(_Eating value) eating,
    required TResult Function(_Standing value) standing,
  }) {
    return eating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Sleeping value)? sleeping,
    TResult? Function(_Eating value)? eating,
    TResult? Function(_Standing value)? standing,
  }) {
    return eating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Sleeping value)? sleeping,
    TResult Function(_Eating value)? eating,
    TResult Function(_Standing value)? standing,
    required TResult orElse(),
  }) {
    if (eating != null) {
      return eating(this);
    }
    return orElse();
  }
}

abstract class _Eating implements DogState {
  const factory _Eating() = _$_Eating;
}

/// @nodoc
abstract class _$$_StandingCopyWith<$Res> {
  factory _$$_StandingCopyWith(
          _$_Standing value, $Res Function(_$_Standing) then) =
      __$$_StandingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StandingCopyWithImpl<$Res>
    extends _$DogStateCopyWithImpl<$Res, _$_Standing>
    implements _$$_StandingCopyWith<$Res> {
  __$$_StandingCopyWithImpl(
      _$_Standing _value, $Res Function(_$_Standing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Standing implements _Standing {
  const _$_Standing();

  @override
  String toString() {
    return 'DogState.standing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Standing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() running,
    required TResult Function(DateTime? sleepStartTime) sleeping,
    required TResult Function() eating,
    required TResult Function() standing,
  }) {
    return standing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? running,
    TResult? Function(DateTime? sleepStartTime)? sleeping,
    TResult? Function()? eating,
    TResult? Function()? standing,
  }) {
    return standing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? running,
    TResult Function(DateTime? sleepStartTime)? sleeping,
    TResult Function()? eating,
    TResult Function()? standing,
    required TResult orElse(),
  }) {
    if (standing != null) {
      return standing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Running value) running,
    required TResult Function(_Sleeping value) sleeping,
    required TResult Function(_Eating value) eating,
    required TResult Function(_Standing value) standing,
  }) {
    return standing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Running value)? running,
    TResult? Function(_Sleeping value)? sleeping,
    TResult? Function(_Eating value)? eating,
    TResult? Function(_Standing value)? standing,
  }) {
    return standing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Running value)? running,
    TResult Function(_Sleeping value)? sleeping,
    TResult Function(_Eating value)? eating,
    TResult Function(_Standing value)? standing,
    required TResult orElse(),
  }) {
    if (standing != null) {
      return standing(this);
    }
    return orElse();
  }
}

abstract class _Standing implements DogState {
  const factory _Standing() = _$_Standing;
}

/// @nodoc
mixin _$DogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() run,
    required TResult Function() sleep,
    required TResult Function() eat,
    required TResult Function() stand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? run,
    TResult? Function()? sleep,
    TResult? Function()? eat,
    TResult? Function()? stand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? run,
    TResult Function()? sleep,
    TResult Function()? eat,
    TResult Function()? stand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Run value) run,
    required TResult Function(_Sleep value) sleep,
    required TResult Function(_Eat value) eat,
    required TResult Function(_Stand value) stand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Run value)? run,
    TResult? Function(_Sleep value)? sleep,
    TResult? Function(_Eat value)? eat,
    TResult? Function(_Stand value)? stand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Run value)? run,
    TResult Function(_Sleep value)? sleep,
    TResult Function(_Eat value)? eat,
    TResult Function(_Stand value)? stand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogEventCopyWith<$Res> {
  factory $DogEventCopyWith(DogEvent value, $Res Function(DogEvent) then) =
      _$DogEventCopyWithImpl<$Res, DogEvent>;
}

/// @nodoc
class _$DogEventCopyWithImpl<$Res, $Val extends DogEvent>
    implements $DogEventCopyWith<$Res> {
  _$DogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$DogEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'DogEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() run,
    required TResult Function() sleep,
    required TResult Function() eat,
    required TResult Function() stand,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? run,
    TResult? Function()? sleep,
    TResult? Function()? eat,
    TResult? Function()? stand,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? run,
    TResult Function()? sleep,
    TResult Function()? eat,
    TResult Function()? stand,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Run value) run,
    required TResult Function(_Sleep value) sleep,
    required TResult Function(_Eat value) eat,
    required TResult Function(_Stand value) stand,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Run value)? run,
    TResult? Function(_Sleep value)? sleep,
    TResult? Function(_Eat value)? eat,
    TResult? Function(_Stand value)? stand,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Run value)? run,
    TResult Function(_Sleep value)? sleep,
    TResult Function(_Eat value)? eat,
    TResult Function(_Stand value)? stand,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements DogEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_RunCopyWith<$Res> {
  factory _$$_RunCopyWith(_$_Run value, $Res Function(_$_Run) then) =
      __$$_RunCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RunCopyWithImpl<$Res> extends _$DogEventCopyWithImpl<$Res, _$_Run>
    implements _$$_RunCopyWith<$Res> {
  __$$_RunCopyWithImpl(_$_Run _value, $Res Function(_$_Run) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Run implements _Run {
  const _$_Run();

  @override
  String toString() {
    return 'DogEvent.run()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Run);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() run,
    required TResult Function() sleep,
    required TResult Function() eat,
    required TResult Function() stand,
  }) {
    return run();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? run,
    TResult? Function()? sleep,
    TResult? Function()? eat,
    TResult? Function()? stand,
  }) {
    return run?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? run,
    TResult Function()? sleep,
    TResult Function()? eat,
    TResult Function()? stand,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Run value) run,
    required TResult Function(_Sleep value) sleep,
    required TResult Function(_Eat value) eat,
    required TResult Function(_Stand value) stand,
  }) {
    return run(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Run value)? run,
    TResult? Function(_Sleep value)? sleep,
    TResult? Function(_Eat value)? eat,
    TResult? Function(_Stand value)? stand,
  }) {
    return run?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Run value)? run,
    TResult Function(_Sleep value)? sleep,
    TResult Function(_Eat value)? eat,
    TResult Function(_Stand value)? stand,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(this);
    }
    return orElse();
  }
}

abstract class _Run implements DogEvent {
  const factory _Run() = _$_Run;
}

/// @nodoc
abstract class _$$_SleepCopyWith<$Res> {
  factory _$$_SleepCopyWith(_$_Sleep value, $Res Function(_$_Sleep) then) =
      __$$_SleepCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SleepCopyWithImpl<$Res>
    extends _$DogEventCopyWithImpl<$Res, _$_Sleep>
    implements _$$_SleepCopyWith<$Res> {
  __$$_SleepCopyWithImpl(_$_Sleep _value, $Res Function(_$_Sleep) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Sleep implements _Sleep {
  const _$_Sleep();

  @override
  String toString() {
    return 'DogEvent.sleep()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Sleep);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() run,
    required TResult Function() sleep,
    required TResult Function() eat,
    required TResult Function() stand,
  }) {
    return sleep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? run,
    TResult? Function()? sleep,
    TResult? Function()? eat,
    TResult? Function()? stand,
  }) {
    return sleep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? run,
    TResult Function()? sleep,
    TResult Function()? eat,
    TResult Function()? stand,
    required TResult orElse(),
  }) {
    if (sleep != null) {
      return sleep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Run value) run,
    required TResult Function(_Sleep value) sleep,
    required TResult Function(_Eat value) eat,
    required TResult Function(_Stand value) stand,
  }) {
    return sleep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Run value)? run,
    TResult? Function(_Sleep value)? sleep,
    TResult? Function(_Eat value)? eat,
    TResult? Function(_Stand value)? stand,
  }) {
    return sleep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Run value)? run,
    TResult Function(_Sleep value)? sleep,
    TResult Function(_Eat value)? eat,
    TResult Function(_Stand value)? stand,
    required TResult orElse(),
  }) {
    if (sleep != null) {
      return sleep(this);
    }
    return orElse();
  }
}

abstract class _Sleep implements DogEvent {
  const factory _Sleep() = _$_Sleep;
}

/// @nodoc
abstract class _$$_EatCopyWith<$Res> {
  factory _$$_EatCopyWith(_$_Eat value, $Res Function(_$_Eat) then) =
      __$$_EatCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EatCopyWithImpl<$Res> extends _$DogEventCopyWithImpl<$Res, _$_Eat>
    implements _$$_EatCopyWith<$Res> {
  __$$_EatCopyWithImpl(_$_Eat _value, $Res Function(_$_Eat) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Eat implements _Eat {
  const _$_Eat();

  @override
  String toString() {
    return 'DogEvent.eat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Eat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() run,
    required TResult Function() sleep,
    required TResult Function() eat,
    required TResult Function() stand,
  }) {
    return eat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? run,
    TResult? Function()? sleep,
    TResult? Function()? eat,
    TResult? Function()? stand,
  }) {
    return eat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? run,
    TResult Function()? sleep,
    TResult Function()? eat,
    TResult Function()? stand,
    required TResult orElse(),
  }) {
    if (eat != null) {
      return eat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Run value) run,
    required TResult Function(_Sleep value) sleep,
    required TResult Function(_Eat value) eat,
    required TResult Function(_Stand value) stand,
  }) {
    return eat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Run value)? run,
    TResult? Function(_Sleep value)? sleep,
    TResult? Function(_Eat value)? eat,
    TResult? Function(_Stand value)? stand,
  }) {
    return eat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Run value)? run,
    TResult Function(_Sleep value)? sleep,
    TResult Function(_Eat value)? eat,
    TResult Function(_Stand value)? stand,
    required TResult orElse(),
  }) {
    if (eat != null) {
      return eat(this);
    }
    return orElse();
  }
}

abstract class _Eat implements DogEvent {
  const factory _Eat() = _$_Eat;
}

/// @nodoc
abstract class _$$_StandCopyWith<$Res> {
  factory _$$_StandCopyWith(_$_Stand value, $Res Function(_$_Stand) then) =
      __$$_StandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StandCopyWithImpl<$Res>
    extends _$DogEventCopyWithImpl<$Res, _$_Stand>
    implements _$$_StandCopyWith<$Res> {
  __$$_StandCopyWithImpl(_$_Stand _value, $Res Function(_$_Stand) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Stand implements _Stand {
  const _$_Stand();

  @override
  String toString() {
    return 'DogEvent.stand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Stand);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() run,
    required TResult Function() sleep,
    required TResult Function() eat,
    required TResult Function() stand,
  }) {
    return stand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? run,
    TResult? Function()? sleep,
    TResult? Function()? eat,
    TResult? Function()? stand,
  }) {
    return stand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? run,
    TResult Function()? sleep,
    TResult Function()? eat,
    TResult Function()? stand,
    required TResult orElse(),
  }) {
    if (stand != null) {
      return stand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Run value) run,
    required TResult Function(_Sleep value) sleep,
    required TResult Function(_Eat value) eat,
    required TResult Function(_Stand value) stand,
  }) {
    return stand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Run value)? run,
    TResult? Function(_Sleep value)? sleep,
    TResult? Function(_Eat value)? eat,
    TResult? Function(_Stand value)? stand,
  }) {
    return stand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Run value)? run,
    TResult Function(_Sleep value)? sleep,
    TResult Function(_Eat value)? eat,
    TResult Function(_Stand value)? stand,
    required TResult orElse(),
  }) {
    if (stand != null) {
      return stand(this);
    }
    return orElse();
  }
}

abstract class _Stand implements DogEvent {
  const factory _Stand() = _$_Stand;
}

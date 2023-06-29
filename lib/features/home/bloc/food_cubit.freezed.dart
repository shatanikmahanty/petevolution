// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodState _$FoodStateFromJson(Map<String, dynamic> json) {
  return _FoodState.fromJson(json);
}

/// @nodoc
mixin _$FoodState {
  List<String>? get availableFood => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodStateCopyWith<FoodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodStateCopyWith<$Res> {
  factory $FoodStateCopyWith(FoodState value, $Res Function(FoodState) then) =
      _$FoodStateCopyWithImpl<$Res, FoodState>;
  @useResult
  $Res call({List<String>? availableFood, bool isLoading});
}

/// @nodoc
class _$FoodStateCopyWithImpl<$Res, $Val extends FoodState>
    implements $FoodStateCopyWith<$Res> {
  _$FoodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableFood = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      availableFood: freezed == availableFood
          ? _value.availableFood
          : availableFood // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodStateCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory _$$_FoodStateCopyWith(
          _$_FoodState value, $Res Function(_$_FoodState) then) =
      __$$_FoodStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? availableFood, bool isLoading});
}

/// @nodoc
class __$$_FoodStateCopyWithImpl<$Res>
    extends _$FoodStateCopyWithImpl<$Res, _$_FoodState>
    implements _$$_FoodStateCopyWith<$Res> {
  __$$_FoodStateCopyWithImpl(
      _$_FoodState _value, $Res Function(_$_FoodState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableFood = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_FoodState(
      availableFood: freezed == availableFood
          ? _value._availableFood
          : availableFood // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodState implements _FoodState {
  const _$_FoodState(
      {final List<String>? availableFood, this.isLoading = false})
      : _availableFood = availableFood;

  factory _$_FoodState.fromJson(Map<String, dynamic> json) =>
      _$$_FoodStateFromJson(json);

  final List<String>? _availableFood;
  @override
  List<String>? get availableFood {
    final value = _availableFood;
    if (value == null) return null;
    if (_availableFood is EqualUnmodifiableListView) return _availableFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'FoodState(availableFood: $availableFood, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodState &&
            const DeepCollectionEquality()
                .equals(other._availableFood, _availableFood) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_availableFood), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodStateCopyWith<_$_FoodState> get copyWith =>
      __$$_FoodStateCopyWithImpl<_$_FoodState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodStateToJson(
      this,
    );
  }
}

abstract class _FoodState implements FoodState {
  const factory _FoodState(
      {final List<String>? availableFood, final bool isLoading}) = _$_FoodState;

  factory _FoodState.fromJson(Map<String, dynamic> json) =
      _$_FoodState.fromJson;

  @override
  List<String>? get availableFood;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_FoodStateCopyWith<_$_FoodState> get copyWith =>
      throw _privateConstructorUsedError;
}

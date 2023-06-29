// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

XpState _$XpStateFromJson(Map<String, dynamic> json) {
  return _XpState.fromJson(json);
}

/// @nodoc
mixin _$XpState {
  int get currentLevel => throw _privateConstructorUsedError;
  int get currentXP => throw _privateConstructorUsedError;
  String? get capturedImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $XpStateCopyWith<XpState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XpStateCopyWith<$Res> {
  factory $XpStateCopyWith(XpState value, $Res Function(XpState) then) =
      _$XpStateCopyWithImpl<$Res, XpState>;
  @useResult
  $Res call({int currentLevel, int currentXP, String? capturedImagePath});
}

/// @nodoc
class _$XpStateCopyWithImpl<$Res, $Val extends XpState>
    implements $XpStateCopyWith<$Res> {
  _$XpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLevel = null,
    Object? currentXP = null,
    Object? capturedImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      currentXP: null == currentXP
          ? _value.currentXP
          : currentXP // ignore: cast_nullable_to_non_nullable
              as int,
      capturedImagePath: freezed == capturedImagePath
          ? _value.capturedImagePath
          : capturedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_XpStateCopyWith<$Res> implements $XpStateCopyWith<$Res> {
  factory _$$_XpStateCopyWith(
          _$_XpState value, $Res Function(_$_XpState) then) =
      __$$_XpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentLevel, int currentXP, String? capturedImagePath});
}

/// @nodoc
class __$$_XpStateCopyWithImpl<$Res>
    extends _$XpStateCopyWithImpl<$Res, _$_XpState>
    implements _$$_XpStateCopyWith<$Res> {
  __$$_XpStateCopyWithImpl(_$_XpState _value, $Res Function(_$_XpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLevel = null,
    Object? currentXP = null,
    Object? capturedImagePath = freezed,
  }) {
    return _then(_$_XpState(
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      currentXP: null == currentXP
          ? _value.currentXP
          : currentXP // ignore: cast_nullable_to_non_nullable
              as int,
      capturedImagePath: freezed == capturedImagePath
          ? _value.capturedImagePath
          : capturedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_XpState implements _XpState {
  const _$_XpState(
      {this.currentLevel = 1, this.currentXP = 0, this.capturedImagePath});

  factory _$_XpState.fromJson(Map<String, dynamic> json) =>
      _$$_XpStateFromJson(json);

  @override
  @JsonKey()
  final int currentLevel;
  @override
  @JsonKey()
  final int currentXP;
  @override
  final String? capturedImagePath;

  @override
  String toString() {
    return 'XpState(currentLevel: $currentLevel, currentXP: $currentXP, capturedImagePath: $capturedImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_XpState &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel) &&
            (identical(other.currentXP, currentXP) ||
                other.currentXP == currentXP) &&
            (identical(other.capturedImagePath, capturedImagePath) ||
                other.capturedImagePath == capturedImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentLevel, currentXP, capturedImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_XpStateCopyWith<_$_XpState> get copyWith =>
      __$$_XpStateCopyWithImpl<_$_XpState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_XpStateToJson(
      this,
    );
  }
}

abstract class _XpState implements XpState {
  const factory _XpState(
      {final int currentLevel,
      final int currentXP,
      final String? capturedImagePath}) = _$_XpState;

  factory _XpState.fromJson(Map<String, dynamic> json) = _$_XpState.fromJson;

  @override
  int get currentLevel;
  @override
  int get currentXP;
  @override
  String? get capturedImagePath;
  @override
  @JsonKey(ignore: true)
  _$$_XpStateCopyWith<_$_XpState> get copyWith =>
      throw _privateConstructorUsedError;
}

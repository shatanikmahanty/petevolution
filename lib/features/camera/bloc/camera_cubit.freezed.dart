// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraState {
  List<CameraDescription> get availableCameras =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get capturedImagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call(
      {List<CameraDescription> availableCameras,
      bool isLoading,
      String? capturedImagePath});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableCameras = null,
    Object? isLoading = null,
    Object? capturedImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      availableCameras: null == availableCameras
          ? _value.availableCameras
          : availableCameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      capturedImagePath: freezed == capturedImagePath
          ? _value.capturedImagePath
          : capturedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CameraStateCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$_CameraStateCopyWith(
          _$_CameraState value, $Res Function(_$_CameraState) then) =
      __$$_CameraStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CameraDescription> availableCameras,
      bool isLoading,
      String? capturedImagePath});
}

/// @nodoc
class __$$_CameraStateCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$_CameraState>
    implements _$$_CameraStateCopyWith<$Res> {
  __$$_CameraStateCopyWithImpl(
      _$_CameraState _value, $Res Function(_$_CameraState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableCameras = null,
    Object? isLoading = null,
    Object? capturedImagePath = freezed,
  }) {
    return _then(_$_CameraState(
      availableCameras: null == availableCameras
          ? _value._availableCameras
          : availableCameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      capturedImagePath: freezed == capturedImagePath
          ? _value.capturedImagePath
          : capturedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CameraState implements _CameraState {
  const _$_CameraState(
      {final List<CameraDescription> availableCameras = const [],
      this.isLoading = false,
      this.capturedImagePath})
      : _availableCameras = availableCameras;

  final List<CameraDescription> _availableCameras;
  @override
  @JsonKey()
  List<CameraDescription> get availableCameras {
    if (_availableCameras is EqualUnmodifiableListView)
      return _availableCameras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableCameras);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? capturedImagePath;

  @override
  String toString() {
    return 'CameraState(availableCameras: $availableCameras, isLoading: $isLoading, capturedImagePath: $capturedImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraState &&
            const DeepCollectionEquality()
                .equals(other._availableCameras, _availableCameras) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.capturedImagePath, capturedImagePath) ||
                other.capturedImagePath == capturedImagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_availableCameras),
      isLoading,
      capturedImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      __$$_CameraStateCopyWithImpl<_$_CameraState>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  const factory _CameraState(
      {final List<CameraDescription> availableCameras,
      final bool isLoading,
      final String? capturedImagePath}) = _$_CameraState;

  @override
  List<CameraDescription> get availableCameras;
  @override
  bool get isLoading;
  @override
  String? get capturedImagePath;
  @override
  @JsonKey(ignore: true)
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

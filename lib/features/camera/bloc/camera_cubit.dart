import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petevolution/utils/mixins/cubit_maybe_emit_mixin.dart';

part 'camera_cubit.freezed.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    @Default([]) List<CameraDescription> availableCameras,
    @Default(false) bool isLoading,
    String? capturedImagePath,
  }) = _CameraState;
}

class CameraCubit extends Cubit<CameraState> with CubitMaybeEmit {
  CameraCubit() : super(const CameraState()) {
    loadCameras();
  }

  Future<void> loadCameras() async {
    emit(state.copyWith(isLoading: true));
    final cameras = await availableCameras();
    emit(
      state.copyWith(
        availableCameras: cameras,
        isLoading: false,
      ),
    );
  }

  void onImageCapture(String path) async {
    emit(state.copyWith(capturedImagePath: path));
  }

  void clearCapturedImage() {
    emit(state.copyWith(capturedImagePath: null));
  }
}

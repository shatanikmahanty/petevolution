import 'dart:io';

import 'package:camera/camera.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/features/app/data/repositories/firebase_storage_repository.dart';
import 'package:petevolution/features/camera/bloc/camera_cubit.dart';
import 'package:petevolution/features/home/bloc/food_cubit.dart';
import 'package:progress_builder/progress_builder.dart';

class CaptureControls extends StatefulWidget {
  const CaptureControls({
    super.key,
    this.cameraController,
  });

  final CameraController? cameraController;

  @override
  State<CaptureControls> createState() => _CaptureControlsState();
}

class _CaptureControlsState extends State<CaptureControls> {
  XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    final controller = widget.cameraController;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: imageFile != null
          ? [
              CircularProgressBuilder(
                builder: (context, action, error) => _CaptureControl(
                  onTap: action,
                  icon: Icons.done,
                ),
                action: (progressCallback) async {
                  final foodCubit = context.read<FoodCubit>();
                  final downloadUrl = await context
                      .read<FirebaseStorageRepository>()
                      .uploadFile(
                        kDogFoodImagesPath,
                        File(imageFile!.path),
                      );
                  foodCubit.addFood(downloadUrl);
                },
                onSuccess: () {
                  DjangoflowAppSnackbar.showInfo('Meal added!');
                  context.router.pop();
                },
              ),
            ]
          : [
              _CaptureControl(
                onTap: controller != null && controller.value.isInitialized
                    ? onTakePictureButtonPressed
                    : null,
                icon: Icons.camera_outlined,
              ),
              _CaptureControl(
                onTap: widget.cameraController == null
                    ? null
                    : onPausePreviewButtonPressed,
                icon: controller != null && controller.value.isPreviewPaused
                    ? Icons.play_circle_outline_rounded
                    : Icons.pause_circle_outline,
              ),
            ],
    );
  }

  void onTakePictureButtonPressed() {
    takePicture().then((XFile? file) {
      if (file != null) {
        imageFile = file;
        context.read<CameraCubit>().onImageCapture(file.path);
        setState(() {});
      }
    });
  }

  Future<void> onPausePreviewButtonPressed() async {
    final CameraController? controller = widget.cameraController;

    if (controller == null || !controller.value.isInitialized) {
      DjangoflowAppSnackbar.showError('Camera not found');
      return;
    }

    if (controller.value.isPreviewPaused) {
      await controller.resumePreview();
    } else {
      await controller.pausePreview();
    }
  }

  Future<XFile?> takePicture() async {
    final CameraController? controller = widget.cameraController;
    if (controller == null || !controller.value.isInitialized) {
      DjangoflowAppSnackbar.showError('Error: select a camera first.');
      return null;
    }

    if (controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    final XFile file = await controller.takePicture();
    return file;
  }
}

class _CaptureControl extends StatelessWidget {
  const _CaptureControl({
    this.onTap,
    required this.icon,
  });

  final VoidCallback? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: kPadding * 5,
          child: Icon(
            icon,
            size: kPadding * 5,
          ),
        ),
      );
}

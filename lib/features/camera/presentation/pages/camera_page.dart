import 'dart:async';

import 'package:camera/camera.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/configurations/constants/assets.gen.dart';
import 'package:petevolution/features/camera/bloc/camera_cubit.dart';
import 'package:petevolution/features/camera/presentation/camera_preview.dart';
import 'package:petevolution/features/camera/presentation/capture_controls.dart';

/// Camera example home widget.
@RoutePage()
class CameraExampleHome extends StatefulWidget {
  /// Default Constructor
  const CameraExampleHome({super.key});

  @override
  State<CameraExampleHome> createState() => _CameraExampleHomeState();
}

class _CameraExampleHomeState extends State<CameraExampleHome>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  CameraController? controller;

  @override
  void initState() {
    super.initState();

    final widgetsBinding = WidgetsBinding.instance;
    widgetsBinding.addObserver(this);
    widgetsBinding.addPostFrameCallback((timeStamp) {
      final availableCameras =
          context.read<CameraCubit>().state.availableCameras;
      _initializeCameraController(availableCameras[0]);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCameraController(cameraController.description);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Capture a meal'),
        ),
        body: BlocConsumer<CameraCubit, CameraState>(
          listener: (context, state) {
            if (state.availableCameras.isNotEmpty) {
              _initializeCameraController(state.availableCameras.first);
            }
          },
          listenWhen: (previous, current) =>
              previous.isLoading != current.isLoading,
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: kPadding * 3),
                  Assets.images.dogHungry.image(
                    width: MediaQuery.of(context).size.width / 3,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: kPadding * 3),
                  Padding(
                    padding: const EdgeInsets.all(kPadding),
                    child: Center(
                      child: CameraPreviewWidget(
                        controller: controller,
                        imagePath: state.capturedImagePath,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kPadding * 4,
                    ),
                    child: CaptureControls(
                      cameraController: controller,
                    ),
                  ),
                ],
              );
            }
          },
        ),
      );

  String timestamp() => DateTime.now().millisecondsSinceEpoch.toString();

  void showInSnackBar(String message) {
    DjangoflowAppSnackbar.showInfo(message);
  }

  Future<void> _initializeCameraController(
    CameraDescription cameraDescription,
  ) async {
    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.max,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );
    controller = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (cameraController.value.hasError) {
        showInSnackBar(
            'Camera error ${cameraController.value.errorDescription}');
      }
    });

    try {
      await cameraController.initialize();

      await cameraController.setZoomLevel(1);
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied':
          showInSnackBar('You have denied camera access.');
          break;
        case 'CameraAccessDeniedWithoutPrompt':
          // iOS only
          showInSnackBar('Please go to Settings app to enable camera access.');
          break;
        case 'CameraAccessRestricted':
          // iOS only
          showInSnackBar('Camera access is restricted.');
          break;
        default:
          _showCameraException(e);
          break;
      }
    }

    if (mounted) {
      setState(() {});
    }
  }

  void _showCameraException(CameraException e) {
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }
}

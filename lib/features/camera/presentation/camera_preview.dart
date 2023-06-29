import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:petevolution/configurations/configurations.dart';

class CameraPreviewWidget extends StatelessWidget {
  const CameraPreviewWidget({super.key, this.controller, this.imagePath});

  final CameraController? controller;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (controller == null || controller?.value == null) {
      return const Text('Preparing Camera...');
    } else {
      String? capturedImagePath = imagePath;
      return SizedBox(
        width: size.width * 0.7,
        height: size.width * .78,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kPadding * 50),
          child: capturedImagePath != null
              ? Image.file(
                  File(
                    capturedImagePath,
                  ),
                  fit: BoxFit.cover,
                )
              : AspectRatio(
                  aspectRatio: 1 / controller!.value.aspectRatio,
                  child: CameraPreview(
                    controller!,
                  ),
                ),
        ),
      );
    }
  }
}

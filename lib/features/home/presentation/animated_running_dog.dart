import 'dart:math';

import 'package:flutter/material.dart';
import 'package:petevolution/configurations/constants/assets.gen.dart';

class AnimatedDog extends StatefulWidget {
  const AnimatedDog({super.key});

  @override
  State<AnimatedDog> createState() => _AnimatedDogState();
}

class _AnimatedDogState extends State<AnimatedDog>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> offset;
  double angle = 0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    angle = pi;
    offset = Tween<Offset>(begin: Offset.zero, end: const Offset(2, 0.0))
        .animate(animationController);
    offset.addListener(
      () {
        if (offset.value.dx > 1.8) {
          angle = 0;
          setState(() {});
          animationController.reverse();
        } else if (offset.value.dx == 0) {
          angle = pi;
          setState(() {});
          animationController.forward();
        }
      },
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SlideTransition(
      position: offset,
      child: Transform(
          transform: Matrix4.rotationY(angle),
          alignment: Alignment.topLeft,
          child: Assets.images.dogRunning.image(
            width: size.width / 2,
            height: size.width / 2,
            fit: BoxFit.contain,
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/configurations/constants/assets.gen.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (context, index) => LongPressDraggable<int>(
          feedback: Assets.images.dogIdle.image(
            height: kPadding * 10,
            fit: BoxFit.contain,
          ),
          childWhenDragging: const Offstage(),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Assets.images.bowl.image(fit: BoxFit.fill),
              Positioned(
                bottom: kPadding * 4,
                child: Assets.images.dogIdle.image(
                  height: kPadding * 10,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      );
}

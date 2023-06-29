import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/configurations/constants/assets.gen.dart';
import 'package:petevolution/features/home/bloc/food_cubit.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<FoodCubit, FoodState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.availableFood == null) {
            return const Offstage();
          } else if (state.availableFood!.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(
                kPadding * 3,
              ),
              child: Column(
                children: [
                  Assets.images.bowl.image(
                    height: kPadding * 10,
                    width: kPadding * 10,
                    fit: BoxFit.fill,
                  ),
                  const Text('No food available. Add some!'),
                  const SizedBox(height: kPadding * 3),
                ],
              ),
            );
          } else {
            return SizedBox(
              height: kPadding * 16,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: kPadding * 3),
                itemBuilder: (context, index) => LongPressDraggable<int>(
                  feedback: CachedNetworkImage(
                    imageUrl: state.availableFood![index],
                    height: kPadding * 10,
                    width: kPadding * 14,
                    fit: BoxFit.contain,
                  ),
                  // childWhenDragging: const Offstage(),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Assets.images.bowl.image(fit: BoxFit.fill),
                      Positioned(
                        bottom: kPadding * 3,
                        child: CachedNetworkImage(
                          imageUrl: state.availableFood![index],
                          height: kPadding * 8,
                          width: kPadding * 8,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: state.availableFood!.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
              ),
            );
          }
        },
      );
}

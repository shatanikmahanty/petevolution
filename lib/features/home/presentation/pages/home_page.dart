import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/configurations/constants/assets.gen.dart';
import 'package:petevolution/features/camera/bloc/camera_cubit.dart';
import 'package:petevolution/features/home/bloc/dog_bloc.dart';
import 'package:petevolution/features/home/bloc/food_cubit.dart';
import 'package:petevolution/features/home/home.dart';
import 'package:petevolution/features/home/presentation/animated_running_dog.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => DogBloc(),
      child: Builder(
          builder: (context) => SingleChildScrollView(
                padding: const EdgeInsets.all(kPadding * 2),
                child: Column(
                  children: [
                    BlocBuilder<DogBloc, DogState>(
                      builder: (context, state) {
                        late AssetGenImage dogImage;
                        const assetImages = Assets.images;
                        bool isRunningDog = false;
                        state.when(
                          initial: () {
                            dogImage = assetImages.dogIdle;
                          },
                          running: () {
                            isRunningDog = true;
                          },
                          sleeping: (_) {
                            dogImage = assetImages.dogSleeping;
                          },
                          eating: () {
                            dogImage = assetImages.dogHungry;
                          },
                          standing: () {
                            dogImage = assetImages.dogStanding;
                          },
                        );

                        if (isRunningDog) {
                          return const AnimatedDog();
                        }

                        final image = dogImage.image(
                          width: size.width / 2,
                          height: size.width / 2,
                          fit: BoxFit.contain,
                        );
                        return image;
                      },
                    ),
                    BlocProvider<FoodCubit>(
                      create: (_) => FoodCubit(),
                      child: Column(
                        children: [
                          _Heading(
                            heading: 'Food',
                            trailing: BlocBuilder<CameraCubit, CameraState>(
                              builder: (context, state) {
                                if (state.isLoading) {
                                  return const Offstage();
                                }
                                return IconButton(
                                  onPressed: () {
                                    if (state.availableCameras.isEmpty) {
                                      DjangoflowAppSnackbar.showError(
                                        'No Cameras found in device',
                                      );
                                    }
                                    context
                                        .read<CameraCubit>()
                                        .clearCapturedImage();
                                    context.router
                                        .push(const CameraExampleHome());
                                  },
                                  icon: const Icon(Icons.add),
                                );
                              },
                            ),
                          ),
                          const FoodList(),
                        ],
                      ),
                    ),
                    const _Heading(heading: 'Stats'),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: kPadding * 2)
                              .copyWith(
                        bottom: kPadding * 2,
                        top: kPadding,
                      ),
                      child: Card(
                        color: Colors.white,
                        elevation: kPadding / 1.5,
                        shadowColor: theme.primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kPadding * 3,
                            vertical: kPadding * 2,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.bolt,
                                size: kPadding * 5,
                                color: theme.primaryColor,
                              ),
                              const SizedBox(
                                width: kPadding * 4,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'XP',
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '75/100',
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: theme.primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: kPadding / 2,
                                    ),
                                    SliderTheme(
                                      data: SliderThemeData(
                                        trackShape: CustomTrackShape(),
                                      ),
                                      child: Slider(
                                        value: 75,
                                        max: 100,
                                        min: 0,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    PetActivity(
                      xp: '5',
                      name: 'Feed',
                      icon: FontAwesomeIcons.bowlRice,
                      interactionIcon: Icons.info_outline,
                      onPressed: () {
                        DjangoflowAppSnackbar.showInfo(
                          'Long tap on a food an drag towards pet to feed',
                        );
                      },
                    ),
                    Container(
                      height: kPadding / 3,
                      margin:
                          const EdgeInsets.symmetric(horizontal: kPadding * 2),
                      width: double.infinity,
                      color: theme.primaryColor.withOpacity(0.1),
                    ),
                    BlocBuilder<DogBloc, DogState>(
                      builder: (context, state) => PetActivity(
                        xp: '10',
                        name: 'Run',
                        icon: Icons.pets,
                        isActive: state.maybeWhen(
                          running: () => true,
                          orElse: () => false,
                        ),
                        onPressed: () {
                          state.maybeWhen(
                            running: () {
                              context
                                  .read<DogBloc>()
                                  .add(const DogEvent.reset());
                            },
                            initial: () {
                              context.read<DogBloc>().add(const DogEvent.run());
                            },
                            orElse: () {
                              DjangoflowAppSnackbar.showInfo('Can\'t Run Now');
                            },
                          );
                        },
                        interactionIcon: state.whenOrNull(
                          running: () => Icons.stop,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight ?? 0;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class _Heading extends StatelessWidget {
  const _Heading({required this.heading, this.trailing});

  final String heading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final headingText = Text(
      heading,
      style: theme.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
        alignment: Alignment.topLeft,
        child: trailing == null
            ? headingText
            : Row(
                children: [
                  headingText,
                  const Spacer(),
                  trailing!,
                ],
              ));
  }
}

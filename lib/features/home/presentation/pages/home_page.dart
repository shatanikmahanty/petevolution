import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/configurations/constants/assets.gen.dart';
import 'package:petevolution/features/camera/bloc/camera_cubit.dart';
import 'package:petevolution/features/home/bloc/dog_bloc.dart';
import 'package:petevolution/features/home/home.dart';
import 'package:petevolution/features/home/presentation/animated_running_dog.dart';
import 'package:petevolution/features/xp/bloc/xp_cubit.dart';
import 'package:petevolution/features/xp/xp.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider<DogBloc>(
          create: (context) => DogBloc(),
        ),
        BlocProvider<XpCubit>(
          create: (context) => XpCubit(),
        ),
      ],
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

                        bool canFeed = false;

                        state.when(
                          initial: () {
                            dogImage = assetImages.dogIdle;
                            canFeed = true;
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

                        final image = isRunningDog
                            ? const AnimatedDog()
                            : dogImage.image(
                                width: size.width / 2,
                                height: size.width / 2,
                                fit: BoxFit.contain,
                              );

                        if (canFeed) {
                          return DragTarget<int>(
                            builder: (
                              context,
                              candidateData,
                              rejectedData,
                            ) =>
                                image,
                            onAccept: (details) async {
                              final dogBloc = context.read<DogBloc>();

                              dogBloc.add(const DogEvent.eat());
                              context.read<XpCubit>().awardXP(15);
                              await Future.delayed(
                                const Duration(seconds: 2),
                              );

                              dogBloc.add(const DogEvent.reset());
                            },
                            onWillAccept: (data) => canFeed,
                          );
                        }

                        return image;
                      },
                    ),
                    Column(
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
                    _Heading(
                      heading: 'Stats',
                      trailing: Chip(
                        label: Text(
                          'Lvl ${context.watch<XpCubit>().state.currentLevel}',
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: kPadding * 2)
                              .copyWith(
                        bottom: kPadding * 2,
                        top: kPadding,
                      ),
                    ),
                    const XpCard(),
                    PetActivity(
                      xp: '15',
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
                              context.read<XpCubit>().awardXP(10);
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

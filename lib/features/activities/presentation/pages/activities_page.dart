import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/configurations/constants/assets.gen.dart';

@RoutePage()
class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(kPadding * 2),
      child: Column(
        children: [
          Assets.images.dogIdle.image(
            width: size.width / 2,
            height: size.width / 2,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding * 2),
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
                      FontAwesomeIcons.heartCircleBolt,
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
                                'Health',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '75',
                                style: theme.textTheme.titleMedium?.copyWith(
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
            onPressed: () {},
            isActive: true,
          ),
          Container(
            height: kPadding / 3,
            margin: const EdgeInsets.symmetric(horizontal: kPadding * 2),
            width: double.infinity,
            color: theme.primaryColor.withOpacity(0.1),
          ),
          PetActivity(
            xp: '5',
            name: 'Walk',
            icon: Icons.pets,
            onPressed: () {},
          ),
        ],
      ),
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

class PetActivity extends StatelessWidget {
  const PetActivity({
    super.key,
    required this.xp,
    required this.name,
    required this.icon,
    required this.onPressed,
    this.isActive = false,
  });

  final String xp;
  final String name;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: kPadding * 3,
              bottom: kPadding * 3,
              top: kPadding * 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: kPadding * 4,
                  color: isActive
                      ? theme.primaryColor
                      : theme.primaryColor.withOpacity(kPadding / 20),
                ),
                const SizedBox(
                  width: kPadding * 3,
                ),
                Text(
                  name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: kPadding / 3,
          height: kPadding * 8,
          color: theme.primaryColor.withOpacity(0.1),
        ),
        const SizedBox(
          width: kPadding * 3,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              right: kPadding * 3,
              bottom: kPadding * 3,
              top: kPadding * 3,
            ),
            child: Row(
              children: [
                Text(
                  '$xp XP ⚡',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.arrow_circle_right_outlined,
                    size: kPadding * 4,
                    color: theme.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/features/xp/bloc/xp_cubit.dart';

class XpCard extends StatelessWidget {
  const XpCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<XpCubit, XpState>(
      builder: (context, state) {
        final xpCubit = context.read<XpCubit>();
        final maxXpForCurrentLevel = xpCubit.maxXpForLevel();

        return Card(
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
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '${state.currentXP}/${maxXpForCurrentLevel.toInt()}',
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
                          value: state.currentXP.toDouble(),
                          max: xpCubit.maxXpForLevel().toDouble(),
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
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

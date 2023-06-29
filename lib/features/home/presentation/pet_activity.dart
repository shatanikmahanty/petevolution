import 'package:flutter/material.dart';
import 'package:petevolution/configurations/configurations.dart';

class PetActivity extends StatelessWidget {
  const PetActivity({
    super.key,
    required this.xp,
    required this.name,
    required this.icon,
    this.onPressed,
    this.isActive = false,
    this.interactionIcon,
  });

  final String xp;
  final String name;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool isActive;
  final IconData? interactionIcon;

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
                  '$xp ⚡',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                if (onPressed != null)
                  IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      interactionIcon ?? Icons.play_circle_outline_rounded,
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

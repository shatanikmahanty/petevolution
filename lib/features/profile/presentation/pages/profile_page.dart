import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/configurations/constants/assets.gen.dart';
import 'package:url_launcher/url_launcher_string.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: const EdgeInsets.all(kPadding * 2),
        child: Column(
          children: [
            const _WakeDogEaster(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kPadding * 4),
              child: Text(
                'Shhhh! Don\'t wake the dog! 😉',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            _ProfileListTile(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LicensePage(),
                  ),
                );
              },
              icon: FontAwesomeIcons.gavel,
              text: 'Open Source Licenses',
            ),
            const SizedBox(height: kPadding * 4),
            _ProfileListTile(
              onPressed: () {
                launchUrlString(
                  'https://www.savethedogs.eu/en/',
                );
              },
              icon: FontAwesomeIcons.handsPraying,
              text: 'Help save the dogs',
            ),
            const SizedBox(height: kPadding * 6),
            GestureDetector(
              onTap: () {
                launchUrlString(
                  'https://github.com/shatanikmahanty/petevolution/',
                );
              },
              child: Text(
                'Made with ❤️ by Shatanik Mahanty',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      );
}

class _ProfileListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onPressed;

  const _ProfileListTile({
    required this.text,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;

    return ListTile(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: primaryColor,
          width: kPadding / 8,
        ),
        borderRadius: BorderRadius.circular(
          kPadding * 2,
        ),
      ),
      contentPadding: const EdgeInsets.all(
        kPadding * 2,
      ),
      onTap: onPressed,
      leading: Icon(
        icon,
        color: primaryColor,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      trailing: Icon(
        FontAwesomeIcons.chevronRight,
        color: primaryColor,
      ),
    );
  }
}

class _WakeDogEaster extends StatefulWidget {
  const _WakeDogEaster();

  @override
  State<_WakeDogEaster> createState() => _WakeDogEasterState();
}

class _WakeDogEasterState extends State<_WakeDogEaster> {
  bool isAwake = false;

  Future<void> _wakeDog() async {
    setState(() {
      isAwake = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isAwake = false;
    });
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onDoubleTap: isAwake ? null : _wakeDog,
        child:
            (!isAwake ? Assets.images.dogSleeping : Assets.images.dogStanding)
                .image(
          height: MediaQuery.of(context).size.width / 2.4,
          width: MediaQuery.of(context).size.width / 1.5,
          fit: BoxFit.contain,
        ),
      );
}

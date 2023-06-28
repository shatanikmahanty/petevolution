import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/features/app/presentation/petevolution_app_bar.dart';

@RoutePage()
class AppHomePage extends StatelessWidget with AutoRouteWrapper {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          ProfileRoute(),
        ],
        transitionBuilder: (context, child, animation) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.fastOutSlowIn;

          if ((context.tabsRouter.previousIndex ?? 0) <
              context.tabsRouter.activeIndex) {
            return SlideTransition(
              position: animation.drive(
                Tween(begin: begin, end: end).chain(
                  CurveTween(
                    curve: curve,
                  ),
                ),
              ),
              child: child,
            );
          } else {
            return SlideTransition(
              position: animation.drive(
                Tween(begin: -begin, end: -end).chain(
                  CurveTween(curve: curve),
                ),
              ),
              child: child,
            );
          }
        },
        animationCurve: Curves.easeInOut,
        resizeToAvoidBottomInset: false,
        appBarBuilder: (context, tabsRouter) => PetEvolutionAppBar(
          centerTitle: true,
          appBarTitleText: getAppBarTextFromIndex(tabsRouter.activeIndex),
        ),
        bottomNavigationBuilder: (context, tabsRouter) {
          const iconPadding = EdgeInsets.symmetric(vertical: kPadding);
          return SafeArea(
            bottom: true,
            child: SizedBox(
              child: BottomNavigationBar(
                onTap: (value) => tabsRouter.setActiveIndex(value),
                currentIndex: tabsRouter.activeIndex,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: iconPadding,
                      child: Icon(
                        tabsRouter.activeIndex == 0
                            ? Icons.rice_bowl
                            : Icons.rice_bowl_outlined,
                      ),
                    ),
                    label: 'Feed',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: iconPadding,
                      child: Icon(
                        tabsRouter.activeIndex == 1
                            ? FontAwesomeIcons.shieldDog
                            : FontAwesomeIcons.dog,
                      ),
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          );
        },
      );

  String getAppBarTextFromIndex(int index) {
    switch (index) {
      case 0:
        return 'Feed';

      case 1:
        return 'Profile';

      default:
        return '';
    }
  }

  @override
  Widget wrappedRoute(BuildContext context) => this;
}

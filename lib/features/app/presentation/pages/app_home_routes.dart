import 'package:petevolution/configurations/configurations.dart';

final appHomeRoutes = [
  AutoRoute(
    initial: true,
    path: 'activities',
    page: ActivitiesRoute.page,
  ),
  AutoRoute(
    path: 'profile',
    page: ProfileRoute.page,
  ),
];

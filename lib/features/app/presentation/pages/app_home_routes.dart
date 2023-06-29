import 'package:petevolution/configurations/configurations.dart';

final appHomeRoutes = [
  AutoRoute(
    initial: true,
    path: 'home',
    page: HomeRoute.page,
  ),
  AutoRoute(
    path: 'profile',
    page: ProfileRoute.page,
  ),
];

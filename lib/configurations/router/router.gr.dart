// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:petevolution/features/activities/presentation/pages/activities_page.dart'
    deferred as _i1;
import 'package:petevolution/features/app/presentation/pages/app_home_page.dart'
    deferred as _i2;
import 'package:petevolution/features/profile/presentation/pages/profile_page.dart'
    deferred as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ActivitiesRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.ActivitiesPage(),
        ),
      );
    },
    AppHomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DeferredWidget(
          _i2.loadLibrary,
          () => _i4.WrappedRoute(child: _i2.AppHomePage()),
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.ProfilePage(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ActivitiesPage]
class ActivitiesRoute extends _i4.PageRouteInfo<void> {
  const ActivitiesRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ActivitiesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivitiesRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AppHomePage]
class AppHomeRoute extends _i4.PageRouteInfo<void> {
  const AppHomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AppHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

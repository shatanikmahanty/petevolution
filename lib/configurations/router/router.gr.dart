// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:petevolution/features/app/presentation/pages/app_home_page.dart'
    deferred as _i1;
import 'package:petevolution/features/camera/presentation/pages/camera_page.dart'
    deferred as _i4;
import 'package:petevolution/features/home/presentation/pages/home_page.dart'
    deferred as _i2;
import 'package:petevolution/features/profile/presentation/pages/profile_page.dart'
    deferred as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppHomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i1.loadLibrary,
          () => _i5.WrappedRoute(child: _i1.AppHomePage()),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.HomePage(),
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.ProfilePage(),
        ),
      );
    },
    CameraExampleHome.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.CameraExampleHome(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AppHomePage]
class AppHomeRoute extends _i5.PageRouteInfo<void> {
  const AppHomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AppHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CameraExampleHome]
class CameraExampleHome extends _i5.PageRouteInfo<void> {
  const CameraExampleHome({List<_i5.PageRouteInfo>? children})
      : super(
          CameraExampleHome.name,
          initialChildren: children,
        );

  static const String name = 'CameraExampleHome';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

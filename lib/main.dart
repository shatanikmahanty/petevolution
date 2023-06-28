import 'dart:async';

import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'configurations/configurations.dart';
import 'pet_evolution_app_builder.dart';

Future<void> main() async {
  // Runs the runApp method
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      debugPrint('Exception Caught -- $exception');
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        DjangoflowAppSnackbar.showError(
          exception.toString(),
        );
      });
    },
    rootWidgetBuilder: (appBuilder) async {
      String? initialDeepLink;
      final appLinksRepository = AppLinksRepository();
      if (!kIsWeb) {
        initialDeepLink = (await appLinksRepository.getInitialLink())?.path;
      }

      // initialize router
      final router = AppRouter();

      return appBuilder(
        PetEvolutionAppBuilder(
          appRouter: router,
          initialDeepLink: initialDeepLink,
          appLinksRepository: appLinksRepository,
        ),
      );
    },
  );
}

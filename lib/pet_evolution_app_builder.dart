import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:petevolution/configurations/configurations.dart';
import 'package:petevolution/features/app/app.dart';

class PetEvolutionAppBuilder extends AppBuilder {
  PetEvolutionAppBuilder({
    super.key,
    super.onDispose,
    required AppRouter appRouter,
    required AppLinksRepository appLinksRepository,
    final String? initialDeepLink,
  }) : super(
          onInitState: (context) {},
          repositoryProviders: [
            RepositoryProvider<AppLinksRepository>.value(
              value: appLinksRepository,
            ),
          ],
          providers: [
            BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
            BlocProvider<AppLinksCubit>(
              create: (context) => AppLinksCubit(
                null,
                context.read<AppLinksRepository>(),
              ),
              lazy: false,
            ),
          ],
          builder: (context) => AppCubitConsumer(
            listenWhen: (previous, current) =>
                previous.environment != current.environment,
            listener: (context, state) async {},
            builder: (context, appState) => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              scaffoldMessengerKey: DjangoflowAppSnackbar.scaffoldMessengerKey,
              title: kAppTitle,
              routeInformationParser: RouteParser(
                appRouter.matcher,
                includePrefixMatches: true,
              ),
              theme: AppTheme.light,
              darkTheme: AppTheme.dark,
              themeMode: appState.themeMode,
              locale: Locale(appState.locale, ''),
              supportedLocales: const [
                Locale('en', ''),
              ],
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              routerDelegate: appRouter.delegate(
                deepLinkBuilder: (_) => initialDeepLink != null
                    ? DeepLink.path(initialDeepLink)
                    : const DeepLink(
                        [
                          AppHomeRoute(),
                        ],
                      ),
                // List of global navigation obsersers here
                // SentryNavigationObserver
                // navigatorObservers: () => {RouteObserver()},
              ),
              builder: (context, child) => AppResponsiveLayoutBuilder(
                child: SandboxBanner(
                  isSandbox: appState.environment == AppEnvironment.sandbox,
                  child: child != null
                      ? kIsWeb
                          ? child
                          : AppLinksCubitListener(
                              listenWhen: (previous, current) =>
                                  current != null,
                              listener: (context, appLink) {
                                final path = appLink?.path;
                                if (path != null) {
                                  appRouter.navigateNamed(
                                    path,
                                    onFailure: (failure) {
                                      appRouter.navigate(
                                        const AppHomeRoute(),
                                      );
                                    },
                                  );
                                }
                              },
                              child: child,
                            )
                      : const Offstage(),
                ),
              ),
            ),
          ),
        );
}

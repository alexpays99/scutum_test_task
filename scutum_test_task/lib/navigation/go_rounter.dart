import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scutum_test_task/navigation/bottom_navigation_bar.dart';

import 'router_paths.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _tasksKey = GlobalKey<NavigatorState>(debugLabel: 'tasks');
final _weatherKey = GlobalKey<NavigatorState>(debugLabel: 'wather');

class GoRouterNavigation {
  GoRouter initGoRoute() {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: RoutePaths.home,
      navigatorKey: _rootNavigatorKey,
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state, navigationShell) {
            return BottomNavigationBarWidget(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              navigatorKey: _tasksKey,
              routes: [
                GoRoute(
                  path: RoutePaths.home,
                  name: RoutePaths.home,
                  pageBuilder: (context, state) => const NoTransitionPage(
                    // child: HomePage(),
                    child: SizedBox.shrink(),
                  ),
                  routes: <RouteBase>[
                    GoRoute(
                      path: RoutePaths.artistInfo,
                      name: RoutePaths.artistInfo,
                      builder: (context, state) {
                        final artistExtra = state.extra;
                        // if (artistExtra is ArtistBaseInfoEntity) {
                        //   return ArtistInfoPage(artist: artistExtra);
                        // }
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _weatherKey,
              routes: [
                GoRoute(
                  path: RoutePaths.favourite,
                  name: RoutePaths.favourite,
                  pageBuilder: (context, state) => const NoTransitionPage(
                    // child: FavouritePage(),
                    child: SizedBox.shrink(),
                  ),
                  routes: <RouteBase>[
                    GoRoute(
                      path: RoutePaths.favouriteInfo,
                      name: RoutePaths.favouriteInfo,
                      pageBuilder: (context, state) => const NoTransitionPage(
                        // child: FavouriteInfoPage(),
                        child: SizedBox.shrink(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

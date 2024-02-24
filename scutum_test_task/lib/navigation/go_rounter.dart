import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scutum_test_task/feature/tasks/presentation/tasks_page.dart';
import 'package:scutum_test_task/navigation/bottom_navigation_bar.dart';

import '../feature/weather/presentation/weather_page.dart';
import 'router_paths.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _tasksKey = GlobalKey<NavigatorState>(debugLabel: 'tasks');
final _weatherKey = GlobalKey<NavigatorState>(debugLabel: 'wather');

class GoRouterNavigation {
  GoRouter initGoRoute() {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: RoutePaths.tasks,
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
                  path: RoutePaths.tasks,
                  name: RoutePaths.tasks,
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: TasksPage(),
                  ),
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
                    child: WeatherPage(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

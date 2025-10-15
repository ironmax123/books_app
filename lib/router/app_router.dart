import 'package:book_app/ui/home/home_screen.dart';
import 'package:book_app/ui/main_scaffold.dart';
import 'package:book_app/ui/saved/saved_screen.dart';
import 'package:go_router/go_router.dart';

import '../ui/details/details_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScaffold(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/saved',
              name: 'saved',
              builder: (context, state) => const SavedScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/details',
      name: 'details',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>?;
        return DetailsScreen(
          coverUrl: extra?['coverUrl'] as String? ?? '',
          description: extra?['description'] as String? ?? '',
          author: extra?['author'] as String? ?? '',
          title: extra?['title'] as String? ?? '',
        );
      },
    ),
  ],
);

class Routes {
  Routes._();
  static const home = '/home';
  static const saved = '/saved';
  static const details = '/details';
}

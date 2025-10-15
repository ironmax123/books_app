import 'package:book_app/ui/main_scaffold.dart';
import 'package:go_router/go_router.dart';

import '../ui/details/details_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'main',
      builder: (context, state) => const MainScaffold(),
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
  static const main = '/';
  static const details = '/details';
}

import 'package:book_app/ui/home/home_screen.dart';
import 'package:book_app/ui/saved/saved_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'saved',
          name: 'saved',
          builder: (context, state) => const SavedScreen(),
        ),
      ],
    ),
  ],
);
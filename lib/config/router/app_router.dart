import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/buttons',
        builder: (context, state) => const ButtonsScreen(),
      ),
      GoRoute(
        path: '/cards',
        builder: (context, state) => const CardsScreen(),
      ),
    ],
  );
  return appRouter;
});

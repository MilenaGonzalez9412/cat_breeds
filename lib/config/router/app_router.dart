import 'package:cat_breeds/features/landing/presentation/pages/landing_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: LandingPage.name,
      builder: (context, state) => LandingPage(),
    ),
  ],
);

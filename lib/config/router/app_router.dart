import 'package:cat_breeds/features/landing/data/models/cat_breed.dart';
import 'package:cat_breeds/features/landing/presentation/pages/cat_breed_detail_page.dart';
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
    GoRoute(
      path: '/breed-detail',
      name: CatBreedDetailPage.name,
      builder:
          (context, state) =>
              CatBreedDetailPage(catBreed: state.extra as CatBreed),
    ),

    GoRoute(path: '/', redirect: (_, __) => '/'),
  ],
);

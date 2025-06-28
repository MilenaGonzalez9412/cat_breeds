import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/providers.dart';
import '../widgets/breed_search_bar.dart';

class LandingPage extends StatelessWidget {
  static const name = 'landing-page';

  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _LandingPage());
  }
}

class _LandingPage extends ConsumerStatefulWidget {
  const _LandingPage();

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<_LandingPage> {
  @override
  Widget build(BuildContext context) {
    final catBreedsAsync = ref.watch(catBreedsProvider);

    return catBreedsAsync.when(
      data: (catBreeds) {
        return Column(
          children: [
            BreedSearchBar(),
            Expanded(
              child: ListView.builder(
                itemCount: catBreeds.length,
                itemBuilder: (context, index) {
                  final catBreed = catBreeds[index];
                  return ListTile(title: Text(catBreed.name));
                },
              ),
            ),
          ],
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text('Error: $error, $stackTrace'));
      },
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}

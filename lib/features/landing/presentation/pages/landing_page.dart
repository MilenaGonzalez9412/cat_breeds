import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/providers.dart';

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
  final _searchBreedsController = TextEditingController();

  @override
  void dispose() {
    _searchBreedsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredBreedsAsync = ref.watch(filteredBreedsProvider);

    return filteredBreedsAsync.when(
      data: (catBreeds) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (value) {
                  ref.read(searchBreedsQueryProvider.notifier).state = value;
                },
                controller: _searchBreedsController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Search breed',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),

            // BreedSearchBar(

            // ),
            Expanded(
              child: ListView.builder(
                itemCount: catBreeds.length,
                itemBuilder: (context, index) {
                  final catBreed = catBreeds[index];
                  return Card(
                    shadowColor: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(catBreed.name),
                            TextButton(
                              onPressed:
                                  () => context.push(
                                    '/breed-detail',
                                    extra: catBreed,
                                  ),
                              child: Text('Mas detalles'),
                            ),
                          ],
                        ),
                        catBreed.image != null
                            ? Image.network(
                              catBreed.image!.url,
                              loadingBuilder: (
                                context,
                                child,
                                loadingProgress,
                              ) {
                                if (loadingProgress != null) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return child;
                              },
                            )
                            : Image.network(
                              'https://i.pinimg.com/736x/1f/f7/4b/1ff74b5a68ff857ec39654e33a4306d3.jpg',
                            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Pais de Origen'),
                            Text('Inteligencia'),
                          ],
                        ),
                      ],
                    ),
                  );
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

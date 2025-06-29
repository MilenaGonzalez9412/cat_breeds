import 'package:cat_breeds/common_widgets/custom_text_display.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/providers.dart';
import '../widgets/breed_search_field.dart';

class LandingPage extends StatelessWidget {
  static const name = 'landing-page';

  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Cat Breeds'))),
      body: _LandingPage(),
    );
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
            BreedSearchField(searchBreedsController: _searchBreedsController),
            catBreeds.isNotEmpty
                ? Expanded(
                  child: ListView.builder(
                    itemCount: catBreeds.length,
                    itemBuilder: (context, index) {
                      final catBreed = catBreeds[index];
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    catBreed.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextButton.icon(
                                    label: Text('More details'),
                                    onPressed: () {
                                      context.push(
                                        '/breed-detail',
                                        extra: catBreed,
                                      );
                                      _searchBreedsController.clear();
                                      ref
                                          .read(
                                            searchBreedsQueryProvider.notifier,
                                          )
                                          .state = '';
                                    },
                                    icon: Icon(Icons.pets),
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
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextDisplay(
                                    title: 'Country Origin: ',
                                    content: catBreed.origin,
                                  ),
                                  CustomTextDisplay(
                                    title: 'Intelligence: ',
                                    content: catBreed.intelligence.toString(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
                : Center(child: Text('No cat breeds found ')),
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

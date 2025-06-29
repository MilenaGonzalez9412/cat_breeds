import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/cat_breed.dart';
import '../../data/providers/providers.dart';

final catBreedsProvider = FutureProvider<List<CatBreed>>((ref) {
  final catBreedRepository = ref.watch(catBreedsRepositoryProvider);
  return catBreedRepository.getCatBreeds();
});

final searchBreedsQueryProvider = StateProvider<String>((ref) => '');

final filteredBreedsProvider = Provider<AsyncValue<List<CatBreed>>>((ref) {
  final breedsAsync = ref.watch(catBreedsProvider);
  final searchQuery = ref.watch(searchBreedsQueryProvider).toLowerCase();

  return breedsAsync.when(
    data: (breeds) {
      if (searchQuery.isEmpty) {
        return AsyncValue.data(breeds);
      } else {
        final filteredList =
            breeds.where((breed) {
              return breed.name.toLowerCase().contains(searchQuery);
            }).toList();
        return AsyncValue.data(filteredList);
      }
    },
    error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
    loading: () => AsyncValue.loading(),
  );
});

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/cat_breed.dart';
import '../../data/providers/providers.dart';

final catBreedsProvider = FutureProvider<List<CatBreed>>((ref) {
  final catBreedRepository = ref.watch(catBreedsRepositoryProvider);
  return catBreedRepository.getCatBreeds();
});

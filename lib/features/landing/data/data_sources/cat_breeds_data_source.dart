import '../models/cat_breed.dart';

abstract class CatBreedsDataSource {
  Future<List<CatBreed>> getCatBreeds();
}

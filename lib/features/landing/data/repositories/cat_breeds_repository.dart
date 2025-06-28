import '../data_sources/cat_breeds_data_source.dart';
import '../models/cat_breed.dart';

class CatBreedsRepository {
  final CatBreedsDataSource _catBreedsDataSource;

  CatBreedsRepository(this._catBreedsDataSource);

  Future<List<CatBreed>> getCatBreeds() async {
    return _catBreedsDataSource.getCatBreeds();
  }
}

import 'package:cat_breeds/config/constants.dart';
import 'package:dio/dio.dart';

import '../models/cat_breed.dart';
import '../models/cat_breeds_response.dart';
import 'cat_breeds_data_source.dart';

class CatBreedsDataSourceApi implements CatBreedsDataSource {
  //TODO: Create a file inly for this implementation
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://api.thecatapi.com/v1/',
      queryParameters: {'api_key': Constants.theCatApiKey},
    ),
  );

  @override
  Future<List<CatBreed>> getCatBreeds() async {
    final response = await dio.get('breeds');
    final data = response.data;

    final List<CatBreed> catBreeds =
        (data as List)
            .map((catBreed) => CatBreedsResponse.fromJson(catBreed).toEntity())
            .toList();

    return catBreeds;
  }
}

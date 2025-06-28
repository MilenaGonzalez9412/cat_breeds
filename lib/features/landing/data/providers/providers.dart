import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_sources/cat_breeds_data_source_api.dart';
import '../repositories/cat_breeds_repository.dart';

final catBreedsRepositoryProvider = Provider((ref) {
  return CatBreedsRepository(CatBreedsDataSourceApi());
});

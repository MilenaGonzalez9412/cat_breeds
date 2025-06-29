import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed.freezed.dart';

@freezed
abstract class CatBreed with _$CatBreed {
  const factory CatBreed({
    required String id,
    required String name,
    required String description,
    required String origin,
    required String countryCodes,
    required String countryCode,
    required int intelligence,
    required int adaptability,
    required String lifeSpan,
    required String? referenceImageId,
    required CatImage? image,
  }) = _CatBreed;
}

@freezed
abstract class CatImage with _$CatImage {
  const factory CatImage({
    required String id,
    required int width,
    required int height,
    required String url,
  }) = _CatImage;
}

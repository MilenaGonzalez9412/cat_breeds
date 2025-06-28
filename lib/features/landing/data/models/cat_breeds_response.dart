// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cat_breed.dart';

part 'cat_breeds_response.freezed.dart';
part 'cat_breeds_response.g.dart';

@Freezed(copyWith: false, toJson: false)
abstract class CatBreedsResponse with _$CatBreedsResponse {
  const CatBreedsResponse._();
  const factory CatBreedsResponse({
    required String id,
    required String name,
    required String description,
    required String origin,
    @JsonKey(name: 'country_codes') required String countryCodes,
    @JsonKey(name: 'country_code') required String countryCode,
    required int intelligence,
    required int adaptability,
    @JsonKey(name: 'life_span') required String lifeSpan,
    @JsonKey(name: 'reference_image_id') required String? referenceImageId,
    required ImageResponse? image,
  }) = _CatBreedsResponse;

  factory CatBreedsResponse.fromJson(Map<String, dynamic> json) =>
      _$CatBreedsResponseFromJson(json);

  CatBreed toEntity() => CatBreed(
    id: id,
    name: name,
    description: description,
    origin: origin,
    countryCodes: countryCodes,
    countryCode: countryCode,
    intelligence: intelligence,
    adaptability: adaptability,
    lifeSpan: lifeSpan,
    referenceImageId: referenceImageId ?? 'No Reference Image Found',
    image: image?.toEntity(),
  );
}

@Freezed(copyWith: false, toJson: false)
abstract class ImageResponse with _$ImageResponse {
  const ImageResponse._();
  const factory ImageResponse({
    required String id,
    required int width,
    required int height,
    required String url,
  }) = _ImageResponse;

  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseFromJson(json);

  Image toEntity() => Image(id: id, width: width, height: height, url: url);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breeds_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatBreedsResponse _$CatBreedsResponseFromJson(Map<String, dynamic> json) =>
    _CatBreedsResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      origin: json['origin'] as String,
      countryCodes: json['country_codes'] as String,
      countryCode: json['country_code'] as String,
      intelligence: (json['intelligence'] as num).toInt(),
      adaptability: (json['adaptability'] as num).toInt(),
      lifeSpan: json['life_span'] as String,
      referenceImageId: json['reference_image_id'] as String?,
      image:
          json['image'] == null
              ? null
              : ImageResponse.fromJson(json['image'] as Map<String, dynamic>),
    );

_ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) =>
    _ImageResponse(
      id: json['id'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      url: json['url'] as String,
    );

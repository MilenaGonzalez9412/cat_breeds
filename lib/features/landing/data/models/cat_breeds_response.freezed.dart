// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breeds_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatBreedsResponse {

 String get id; String get name; String get description; String get origin;@JsonKey(name: 'country_codes') String get countryCodes;@JsonKey(name: 'country_code') String get countryCode; int get intelligence; int get adaptability;@JsonKey(name: 'life_span') String get lifeSpan;@JsonKey(name: 'reference_image_id') String? get referenceImageId; CatImageResponse? get image;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatBreedsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.countryCodes, countryCodes) || other.countryCodes == countryCodes)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.referenceImageId, referenceImageId) || other.referenceImageId == referenceImageId)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,origin,countryCodes,countryCode,intelligence,adaptability,lifeSpan,referenceImageId,image);

@override
String toString() {
  return 'CatBreedsResponse(id: $id, name: $name, description: $description, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, intelligence: $intelligence, adaptability: $adaptability, lifeSpan: $lifeSpan, referenceImageId: $referenceImageId, image: $image)';
}


}




/// @nodoc
@JsonSerializable(createToJson: false)

class _CatBreedsResponse extends CatBreedsResponse {
  const _CatBreedsResponse({required this.id, required this.name, required this.description, required this.origin, @JsonKey(name: 'country_codes') required this.countryCodes, @JsonKey(name: 'country_code') required this.countryCode, required this.intelligence, required this.adaptability, @JsonKey(name: 'life_span') required this.lifeSpan, @JsonKey(name: 'reference_image_id') required this.referenceImageId, required this.image}): super._();
  factory _CatBreedsResponse.fromJson(Map<String, dynamic> json) => _$CatBreedsResponseFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String origin;
@override@JsonKey(name: 'country_codes') final  String countryCodes;
@override@JsonKey(name: 'country_code') final  String countryCode;
@override final  int intelligence;
@override final  int adaptability;
@override@JsonKey(name: 'life_span') final  String lifeSpan;
@override@JsonKey(name: 'reference_image_id') final  String? referenceImageId;
@override final  CatImageResponse? image;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatBreedsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.countryCodes, countryCodes) || other.countryCodes == countryCodes)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.referenceImageId, referenceImageId) || other.referenceImageId == referenceImageId)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,origin,countryCodes,countryCode,intelligence,adaptability,lifeSpan,referenceImageId,image);

@override
String toString() {
  return 'CatBreedsResponse(id: $id, name: $name, description: $description, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, intelligence: $intelligence, adaptability: $adaptability, lifeSpan: $lifeSpan, referenceImageId: $referenceImageId, image: $image)';
}


}





/// @nodoc
mixin _$CatImageResponse {

 String get id; int get width; int get height; String get url;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatImageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,width,height,url);

@override
String toString() {
  return 'CatImageResponse(id: $id, width: $width, height: $height, url: $url)';
}


}




/// @nodoc
@JsonSerializable(createToJson: false)

class _CatImageResponse extends CatImageResponse {
  const _CatImageResponse({required this.id, required this.width, required this.height, required this.url}): super._();
  factory _CatImageResponse.fromJson(Map<String, dynamic> json) => _$CatImageResponseFromJson(json);

@override final  String id;
@override final  int width;
@override final  int height;
@override final  String url;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatImageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,width,height,url);

@override
String toString() {
  return 'CatImageResponse(id: $id, width: $width, height: $height, url: $url)';
}


}




// dart format on

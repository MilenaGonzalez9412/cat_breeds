// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatBreed {

 String get id; String get name; String get description; String get origin; String get countryCodes; String get countryCode; int get intelligence; int get adaptability; String get lifeSpan; String? get referenceImageId; Image? get image;
/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatBreedCopyWith<CatBreed> get copyWith => _$CatBreedCopyWithImpl<CatBreed>(this as CatBreed, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatBreed&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.countryCodes, countryCodes) || other.countryCodes == countryCodes)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.referenceImageId, referenceImageId) || other.referenceImageId == referenceImageId)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,origin,countryCodes,countryCode,intelligence,adaptability,lifeSpan,referenceImageId,image);

@override
String toString() {
  return 'CatBreed(id: $id, name: $name, description: $description, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, intelligence: $intelligence, adaptability: $adaptability, lifeSpan: $lifeSpan, referenceImageId: $referenceImageId, image: $image)';
}


}

/// @nodoc
abstract mixin class $CatBreedCopyWith<$Res>  {
  factory $CatBreedCopyWith(CatBreed value, $Res Function(CatBreed) _then) = _$CatBreedCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String origin, String countryCodes, String countryCode, int intelligence, int adaptability, String lifeSpan, String? referenceImageId, Image? image
});


$ImageCopyWith<$Res>? get image;

}
/// @nodoc
class _$CatBreedCopyWithImpl<$Res>
    implements $CatBreedCopyWith<$Res> {
  _$CatBreedCopyWithImpl(this._self, this._then);

  final CatBreed _self;
  final $Res Function(CatBreed) _then;

/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? origin = null,Object? countryCodes = null,Object? countryCode = null,Object? intelligence = null,Object? adaptability = null,Object? lifeSpan = null,Object? referenceImageId = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,countryCodes: null == countryCodes ? _self.countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,lifeSpan: null == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String,referenceImageId: freezed == referenceImageId ? _self.referenceImageId : referenceImageId // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Image?,
  ));
}
/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $ImageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc


class _CatBreed implements CatBreed {
  const _CatBreed({required this.id, required this.name, required this.description, required this.origin, required this.countryCodes, required this.countryCode, required this.intelligence, required this.adaptability, required this.lifeSpan, required this.referenceImageId, required this.image});
  

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String origin;
@override final  String countryCodes;
@override final  String countryCode;
@override final  int intelligence;
@override final  int adaptability;
@override final  String lifeSpan;
@override final  String? referenceImageId;
@override final  Image? image;

/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatBreedCopyWith<_CatBreed> get copyWith => __$CatBreedCopyWithImpl<_CatBreed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatBreed&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.countryCodes, countryCodes) || other.countryCodes == countryCodes)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.referenceImageId, referenceImageId) || other.referenceImageId == referenceImageId)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,origin,countryCodes,countryCode,intelligence,adaptability,lifeSpan,referenceImageId,image);

@override
String toString() {
  return 'CatBreed(id: $id, name: $name, description: $description, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, intelligence: $intelligence, adaptability: $adaptability, lifeSpan: $lifeSpan, referenceImageId: $referenceImageId, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CatBreedCopyWith<$Res> implements $CatBreedCopyWith<$Res> {
  factory _$CatBreedCopyWith(_CatBreed value, $Res Function(_CatBreed) _then) = __$CatBreedCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String origin, String countryCodes, String countryCode, int intelligence, int adaptability, String lifeSpan, String? referenceImageId, Image? image
});


@override $ImageCopyWith<$Res>? get image;

}
/// @nodoc
class __$CatBreedCopyWithImpl<$Res>
    implements _$CatBreedCopyWith<$Res> {
  __$CatBreedCopyWithImpl(this._self, this._then);

  final _CatBreed _self;
  final $Res Function(_CatBreed) _then;

/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? origin = null,Object? countryCodes = null,Object? countryCode = null,Object? intelligence = null,Object? adaptability = null,Object? lifeSpan = null,Object? referenceImageId = freezed,Object? image = freezed,}) {
  return _then(_CatBreed(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,countryCodes: null == countryCodes ? _self.countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,lifeSpan: null == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String,referenceImageId: freezed == referenceImageId ? _self.referenceImageId : referenceImageId // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Image?,
  ));
}

/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $ImageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}

/// @nodoc
mixin _$Image {

 String get id; int get width; int get height; String get url;
/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageCopyWith<Image> get copyWith => _$ImageCopyWithImpl<Image>(this as Image, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image&&(identical(other.id, id) || other.id == id)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,id,width,height,url);

@override
String toString() {
  return 'Image(id: $id, width: $width, height: $height, url: $url)';
}


}

/// @nodoc
abstract mixin class $ImageCopyWith<$Res>  {
  factory $ImageCopyWith(Image value, $Res Function(Image) _then) = _$ImageCopyWithImpl;
@useResult
$Res call({
 String id, int width, int height, String url
});




}
/// @nodoc
class _$ImageCopyWithImpl<$Res>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._self, this._then);

  final Image _self;
  final $Res Function(Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? width = null,Object? height = null,Object? url = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _Image implements Image {
  const _Image({required this.id, required this.width, required this.height, required this.url});
  

@override final  String id;
@override final  int width;
@override final  int height;
@override final  String url;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageCopyWith<_Image> get copyWith => __$ImageCopyWithImpl<_Image>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Image&&(identical(other.id, id) || other.id == id)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,id,width,height,url);

@override
String toString() {
  return 'Image(id: $id, width: $width, height: $height, url: $url)';
}


}

/// @nodoc
abstract mixin class _$ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) _then) = __$ImageCopyWithImpl;
@override @useResult
$Res call({
 String id, int width, int height, String url
});




}
/// @nodoc
class __$ImageCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(this._self, this._then);

  final _Image _self;
  final $Res Function(_Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? width = null,Object? height = null,Object? url = null,}) {
  return _then(_Image(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

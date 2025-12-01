// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsRestaurantModelImpl _$$DetailsRestaurantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailsRestaurantModelImpl(
      id: (json['id'] as num).toInt(),
      etablishement: json['etablishement'] as String,
      street: json['street'] as String,
      postalCode: json['postalCode'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      description: json['description'] as String,
      openingHours: (json['openingHours'] as List<dynamic>)
          .map((e) => OpeningHourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String,
      phone: json['phone'] as String,
      website: json['website'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      forms: (json['forms'] as List<dynamic>)
          .map((e) => FormModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      characteristics: (json['characteristics'] as List<dynamic>)
          .map((e) => CharacteristicsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailsRestaurantModelImplToJson(
        _$DetailsRestaurantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'etablishement': instance.etablishement,
      'street': instance.street,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'country': instance.country,
      'location': instance.location,
      'description': instance.description,
      'openingHours': instance.openingHours,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'images': instance.images,
      'forms': instance.forms,
      'characteristics': instance.characteristics,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$OpeningHourModelImpl _$$OpeningHourModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpeningHourModelImpl(
      day: json['day'] as String,
      open: json['open'] as String,
      close: json['close'] as String,
    );

Map<String, dynamic> _$$OpeningHourModelImplToJson(
        _$OpeningHourModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'open': instance.open,
      'close': instance.close,
    };

_$FormModelImpl _$$FormModelImplFromJson(Map<String, dynamic> json) =>
    _$FormModelImpl(
      id: (json['id'] as num).toInt(),
      image1: json['image1'] as String,
      image2: json['image2'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      entrance: json['entrance'] as String,
      dishe: json['dishe'] as String,
      dessert: json['dessert'] as String,
      drink: json['drink'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$FormModelImplToJson(_$FormModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image1': instance.image1,
      'image2': instance.image2,
      'name': instance.name,
      'description': instance.description,
      'entrance': instance.entrance,
      'dishe': instance.dishe,
      'dessert': instance.dessert,
      'drink': instance.drink,
      'price': instance.price,
    };

_$CharacteristicsModelImpl _$$CharacteristicsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacteristicsModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CharacteristicsModelImplToJson(
        _$CharacteristicsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

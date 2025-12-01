// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_restaurant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsRestaurantDtoImpl _$$DetailsRestaurantDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailsRestaurantDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      etablishement: json['etablishement'] as String?,
      street: json['street'] as String?,
      postalCode: json['postalCode'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      location: json['location'] == null
          ? null
          : LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      description: json['description'] as String?,
      openingHours: (json['openingHours'] as List<dynamic>?)
          ?.map((e) => OpeningHourDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      forms: (json['forms'] as List<dynamic>?)
              ?.map((e) => FormDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      characteristics: (json['characteristics'] as List<dynamic>?)
          ?.map((e) => CharacteristicsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailsRestaurantDtoImplToJson(
        _$DetailsRestaurantDtoImpl instance) =>
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

_$LocationDtoImpl _$$LocationDtoImplFromJson(Map<String, dynamic> json) =>
    _$LocationDtoImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationDtoImplToJson(_$LocationDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$OpeningHourDtoImpl _$$OpeningHourDtoImplFromJson(Map<String, dynamic> json) =>
    _$OpeningHourDtoImpl(
      day: json['day'] as String?,
      open: json['open'] as String?,
      close: json['close'] as String?,
    );

Map<String, dynamic> _$$OpeningHourDtoImplToJson(
        _$OpeningHourDtoImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'open': instance.open,
      'close': instance.close,
    };

_$FormDtoImpl _$$FormDtoImplFromJson(Map<String, dynamic> json) =>
    _$FormDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      image1: json['image1'] as String?,
      image2: json['image2'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      entrance: json['entrance'] as String?,
      dishe: json['dishe'] as String?,
      dessert: json['dessert'] as String?,
      drink: json['drink'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$FormDtoImplToJson(_$FormDtoImpl instance) =>
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

_$CharacteristicsDtoImpl _$$CharacteristicsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacteristicsDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CharacteristicsDtoImplToJson(
        _$CharacteristicsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

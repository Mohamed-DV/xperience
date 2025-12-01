// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_hotel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsHotelDtoImpl _$$DetailsHotelDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailsHotelDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      street: json['street'] as String?,
      postalCode: (json['postalCode'] as num?)?.toInt(),
      city: json['city'] as String?,
      country: json['country'] as String?,
      location: json['location'] == null
          ? null
          : LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      type: json['type'] as String?,
      nbrBedroom: (json['nbrBedroom'] as num?)?.toInt(),
      nbrTravelers: (json['nbrTravelers'] as num?)?.toInt(),
      nbrSingleBed: (json['nbrSingleBed'] as num?)?.toInt(),
      nbrDoubleBed: (json['nbrDoubleBed'] as num?)?.toInt(),
      assets: (json['assets'] as List<dynamic>?)
          ?.map((e) => AssetDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipements: (json['equipements'] as List<dynamic>?)
          ?.map((e) => EquipmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailsHotelDtoImplToJson(
        _$DetailsHotelDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'street': instance.street,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'country': instance.country,
      'location': instance.location,
      'type': instance.type,
      'nbrBedroom': instance.nbrBedroom,
      'nbrTravelers': instance.nbrTravelers,
      'nbrSingleBed': instance.nbrSingleBed,
      'nbrDoubleBed': instance.nbrDoubleBed,
      'assets': instance.assets,
      'equipements': instance.equipements,
      'images': instance.images,
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

_$AssetDtoImpl _$$AssetDtoImplFromJson(Map<String, dynamic> json) =>
    _$AssetDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$AssetDtoImplToJson(_$AssetDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

_$EquipmentDtoImpl _$$EquipmentDtoImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$EquipmentDtoImplToJson(_$EquipmentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

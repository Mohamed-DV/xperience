// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelDtoImpl _$$HotelDtoImplFromJson(Map<String, dynamic> json) =>
    _$HotelDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      type: json['type'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HotelDtoImplToJson(_$HotelDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'city': instance.city,
      'country': instance.country,
      'type': instance.type,
      'images': instance.images,
    };

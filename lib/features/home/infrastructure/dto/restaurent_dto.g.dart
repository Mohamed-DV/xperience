// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurent_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurentDtoImpl _$$RestaurentDtoImplFromJson(Map<String, dynamic> json) =>
    _$RestaurentDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      etablishement: json['etablishement'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RestaurentDtoImplToJson(_$RestaurentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'etablishement': instance.etablishement,
      'city': instance.city,
      'country': instance.country,
      'images': instance.images,
    };

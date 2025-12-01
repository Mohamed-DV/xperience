// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurentModelImpl _$$RestaurentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurentModelImpl(
      id: (json['id'] as num).toInt(),
      etablishement: json['etablishement'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RestaurentModelImplToJson(
        _$RestaurentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'etablishement': instance.etablishement,
      'city': instance.city,
      'country': instance.country,
      'images': instance.images,
    };

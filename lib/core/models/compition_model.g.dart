// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompitionModelImpl _$$CompitionModelImplFromJson(Map<String, dynamic> json) =>
    _$CompitionModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      distance: (json['distance'] as num).toDouble(),
      meetDate: json['meetDate'] as String,
      meetAddress: json['meetAddress'] as String,
      meetCity: json['meetCity'] as String,
      meetCountry: json['meetCountry'] as String,
      eventType: json['eventType'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as String,
      isReserved: json['isReserved'] as bool?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      isFav: json['isFav'] as bool?,
    );

Map<String, dynamic> _$$CompitionModelImplToJson(
        _$CompitionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'distance': instance.distance,
      'meetDate': instance.meetDate,
      'meetAddress': instance.meetAddress,
      'meetCity': instance.meetCity,
      'meetCountry': instance.meetCountry,
      'eventType': instance.eventType,
      'images': instance.images,
      'price': instance.price,
      'isReserved': instance.isReserved,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'isFav': instance.isFav,
    };

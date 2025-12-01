// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventType: json['eventType'] as String,
      meetDate: json['meetDate'] as String?,
      time: json['time'] as String?,
      meetCity: json['meetCity'] as String?,
      country: json['country'] as String?,
      meetCountry: json['meetCountry'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      website: json['website'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      isFav: json['isFav'] as bool?,
      isReserved: json['isReserved'] as bool?,
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'images': instance.images,
      'eventType': instance.eventType,
      'meetDate': instance.meetDate,
      'time': instance.time,
      'meetCity': instance.meetCity,
      'country': instance.country,
      'meetCountry': instance.meetCountry,
      'description': instance.description,
      'price': instance.price,
      'website': instance.website,
      'phone': instance.phone,
      'email': instance.email,
      'duration': instance.duration,
      'isFav': instance.isFav,
      'isReserved': instance.isReserved,
    };

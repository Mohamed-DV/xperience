// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityModelImpl _$$ActivityModelImplFromJson(Map<String, dynamic> json) =>
    _$ActivityModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      discipline: json['discipline'] as String?,
      distance: json['distance'] as String,
      description: json['description'] as String,
      participantNumber: (json['participantNumber'] as num).toInt(),
      street: json['street'] as String,
      city: json['city'] as String,
      eventType: json['eventType'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      country: json['country'] as String,
      price: json['price'] as String,
      isReserved: json['isReserved'] as bool?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      isFav: json['isFav'] as bool?,
    );

Map<String, dynamic> _$$ActivityModelImplToJson(_$ActivityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'discipline': instance.discipline,
      'distance': instance.distance,
      'description': instance.description,
      'participantNumber': instance.participantNumber,
      'street': instance.street,
      'city': instance.city,
      'eventType': instance.eventType,
      'images': instance.images,
      'country': instance.country,
      'price': instance.price,
      'isReserved': instance.isReserved,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'isFav': instance.isFav,
    };

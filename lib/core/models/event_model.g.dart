// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      discipline: json['discipline'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      level: json['level'] as String?,
      distance: (json['distance'] as num?)?.toInt(),
      participantNumber: (json['participantNumber'] as num?)?.toInt(),
      prerequisites: json['prerequisites'] as String?,
      meetDate: json['meetDate'] as String?,
      meetAddress: json['meetAddress'] as String?,
      meetPostalcode: (json['meetPostalcode'] as num?)?.toInt(),
      meetCity: json['meetCity'] as String?,
      meetCountry: json['meetCountry'] as String?,
      startDate: json['startDate'] as String?,
      startAddress: json['startAddress'] as String?,
      eventType: json['eventType'] as String?,
      meetLocation: json['meetLocation'] == null
          ? null
          : LocationModel.fromJson(
              json['meetLocation'] as Map<String, dynamic>),
      startLocation: json['startLocation'] == null
          ? null
          : LocationModel.fromJson(
              json['startLocation'] as Map<String, dynamic>),
      description: json['description'] as String?,
      price: json['price'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map(
              (e) => CompetitionImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      isFav: json['isFav'] as bool?,
      isReserved: json['isReserved'] as bool?,
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'discipline': instance.discipline,
      'date': instance.date,
      'time': instance.time,
      'level': instance.level,
      'distance': instance.distance,
      'participantNumber': instance.participantNumber,
      'prerequisites': instance.prerequisites,
      'meetDate': instance.meetDate,
      'meetAddress': instance.meetAddress,
      'meetPostalcode': instance.meetPostalcode,
      'meetCity': instance.meetCity,
      'meetCountry': instance.meetCountry,
      'startDate': instance.startDate,
      'startAddress': instance.startAddress,
      'eventType': instance.eventType,
      'meetLocation': instance.meetLocation,
      'startLocation': instance.startLocation,
      'description': instance.description,
      'price': instance.price,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'images': instance.images,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'duration': instance.duration,
      'isFav': instance.isFav,
      'isReserved': instance.isReserved,
    };

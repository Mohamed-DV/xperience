// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationModelImpl _$$ReservationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationModelImpl(
      id: (json['id'] as num).toInt(),
      reservationDate: json['reservationDate'] as String?,
      status: json['status'] as String?,
      participantCount: (json['participantCount'] as num?)?.toInt(),
      fromDate: json['fromDate'] as String?,
      toDate: json['toDate'] as String?,
      fromHour: json['fromHour'] as String?,
      toHour: json['toHour'] as String?,
      totalPrice: json['totalPrice'] as String?,
      notes: json['notes'] as String?,
      teamName: json['teamName'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      activity: json['activity'] == null
          ? null
          : ActivitysModel.fromJson(json['activity'] as Map<String, dynamic>),
      competition: json['competition'] == null
          ? null
          : CompitionsModel.fromJson(
              json['competition'] as Map<String, dynamic>),
      event: json['event'] == null
          ? null
          : EventModel.fromJson(json['event'] as Map<String, dynamic>),
      isCancelled: json['isCancelled'] as bool?,
      isUpdated: json['isUpdated'] as bool?,
    );

Map<String, dynamic> _$$ReservationModelImplToJson(
        _$ReservationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservationDate': instance.reservationDate,
      'status': instance.status,
      'participantCount': instance.participantCount,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'fromHour': instance.fromHour,
      'toHour': instance.toHour,
      'totalPrice': instance.totalPrice,
      'notes': instance.notes,
      'teamName': instance.teamName,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'activity': instance.activity,
      'competition': instance.competition,
      'event': instance.event,
      'isCancelled': instance.isCancelled,
      'isUpdated': instance.isUpdated,
    };

_$CompetitionImageModelImpl _$$CompetitionImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompetitionImageModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$CompetitionImageModelImplToJson(
        _$CompetitionImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$CompitionsModelImpl _$$CompitionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompitionsModelImpl(
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
      eventType: json['eventType'] as String?,
      startAddress: json['startAddress'] as String?,
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
    );

Map<String, dynamic> _$$CompitionsModelImplToJson(
        _$CompitionsModelImpl instance) =>
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
      'eventType': instance.eventType,
      'startAddress': instance.startAddress,
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
    };

_$ActivityImageModelImpl _$$ActivityImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityImageModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$ActivityImageModelImplToJson(
        _$ActivityImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

_$OpeningHourModelImpl _$$OpeningHourModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpeningHourModelImpl(
      day: json['day'] as String?,
      open: json['open'] as String?,
      close: json['close'] as String?,
    );

Map<String, dynamic> _$$OpeningHourModelImplToJson(
        _$OpeningHourModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'open': instance.open,
      'close': instance.close,
    };

_$ActivitysModelImpl _$$ActivitysModelImplFromJson(Map<String, dynamic> json) =>
    _$ActivitysModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      distance: json['distance'] as String?,
      time: json['time'] as String?,
      level: json['level'] as String?,
      participantNumber: (json['participantNumber'] as num?)?.toInt(),
      prerequisites: json['prerequisites'] as String?,
      street: json['street'] as String?,
      postalCode: (json['postalCode'] as num?)?.toInt(),
      city: json['city'] as String?,
      eventType: json['eventType'] as String?,
      country: json['country'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      description: json['description'] as String?,
      price: json['price'] as String?,
      openingHours: (json['openingHours'] as List<dynamic>?)
          ?.map((e) => OpeningHourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ActivityImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$ActivitysModelImplToJson(
        _$ActivitysModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'distance': instance.distance,
      'time': instance.time,
      'level': instance.level,
      'participantNumber': instance.participantNumber,
      'prerequisites': instance.prerequisites,
      'street': instance.street,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'eventType': instance.eventType,
      'country': instance.country,
      'location': instance.location,
      'description': instance.description,
      'price': instance.price,
      'openingHours': instance.openingHours,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'images': instance.images,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

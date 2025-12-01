// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelReservationModelImpl _$$HotelReservationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelReservationModelImpl(
      id: (json['id'] as num).toInt(),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      reservationDate: json['reservationDate'] as String,
      status: json['status'] as String,
      participantCount: (json['participantCount'] as num).toInt(),
      fromDate: json['fromDate'] as String?,
      toDate: json['toDate'] as String?,
      fromHour: json['fromHour'] as String?,
      toHour: json['toHour'] as String?,
      totalPrice: json['totalPrice'] as String,
      accomodation: AccomodationModel.fromJson(
          json['accomodation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelReservationModelImplToJson(
        _$HotelReservationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'reservationDate': instance.reservationDate,
      'status': instance.status,
      'participantCount': instance.participantCount,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'fromHour': instance.fromHour,
      'toHour': instance.toHour,
      'totalPrice': instance.totalPrice,
      'accomodation': instance.accomodation,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      status: json['status'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      birthDate: json['birthDate'] as String,
      country: json['country'] as String,
      picture: json['picture'] as String?,
      role: json['role'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'status': instance.status,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthDate': instance.birthDate,
      'country': instance.country,
      'picture': instance.picture,
      'role': instance.role,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

_$AccomodationModelImpl _$$AccomodationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccomodationModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      street: json['street'] as String,
      postalCode: (json['postalCode'] as num).toInt(),
      city: json['city'] as String,
      country: json['country'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      type: json['type'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assets: (json['assets'] as List<dynamic>)
          .map((e) => AssetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipements: (json['equipements'] as List<dynamic>)
          .map((e) => EquipmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nbrBedroom: (json['nbrBedroom'] as num).toInt(),
      nbrTravelers: (json['nbrTravelers'] as num).toInt(),
      nbrSingleBed: (json['nbrSingleBed'] as num).toInt(),
      nbrDoubleBed: (json['nbrDoubleBed'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$$AccomodationModelImplToJson(
        _$AccomodationModelImpl instance) =>
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
      'images': instance.images,
      'assets': instance.assets,
      'equipements': instance.equipements,
      'nbrBedroom': instance.nbrBedroom,
      'nbrTravelers': instance.nbrTravelers,
      'nbrSingleBed': instance.nbrSingleBed,
      'nbrDoubleBed': instance.nbrDoubleBed,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

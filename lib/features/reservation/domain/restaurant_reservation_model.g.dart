// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantReservationModelImpl _$$RestaurantReservationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantReservationModelImpl(
      id: (json['id'] as num).toInt(),
      reservationDate: json['reservationDate'] as String,
      status: json['status'] as String,
      participantCount: (json['participantCount'] as num).toInt(),
      totalPrice: json['totalPrice'] as String,
      restaurant: DetailsRestaurantDto.fromJson(
          json['restaurant'] as Map<String, dynamic>),
      reservationTime: json['reservationTime'] as String,
      typeReservation: json['typeReservation'] as String,
    );

Map<String, dynamic> _$$RestaurantReservationModelImplToJson(
        _$RestaurantReservationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservationDate': instance.reservationDate,
      'status': instance.status,
      'participantCount': instance.participantCount,
      'totalPrice': instance.totalPrice,
      'restaurant': instance.restaurant,
      'reservationTime': instance.reservationTime,
      'typeReservation': instance.typeReservation,
    };

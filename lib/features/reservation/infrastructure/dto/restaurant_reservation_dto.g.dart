// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_reservation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantReservationDtoImpl _$$RestaurantReservationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantReservationDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      reservationDate: json['reservationDate'] as String?,
      status: json['status'] as String?,
      participantCount: (json['participantCount'] as num?)?.toInt(),
      totalPrice: json['totalPrice'] as String?,
      reservationTime: json['reservationTime'] as String?,
      typeReservation: json['typeReservation'] as String?,
      restaurant: DetailsRestaurantDto.fromJson(
          json['restaurant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RestaurantReservationDtoImplToJson(
        _$RestaurantReservationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservationDate': instance.reservationDate,
      'status': instance.status,
      'participantCount': instance.participantCount,
      'totalPrice': instance.totalPrice,
      'reservationTime': instance.reservationTime,
      'typeReservation': instance.typeReservation,
      'restaurant': instance.restaurant,
    };

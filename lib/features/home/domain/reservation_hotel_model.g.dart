// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationHotelModelImpl _$$ReservationHotelModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationHotelModelImpl(
      eventId: (json['eventId'] as num?)?.toInt(),
      type: json['type'] as String?,
      reservationDate: json['reservationDate'] as String?,
      reservationTime: json['reservationTime'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      participantCount: (json['participantCount'] as num?)?.toInt() ?? 1,
      fromDate: json['fromDate'] as String?,
      toDate: json['toDate'] as String?,
    );

Map<String, dynamic> _$$ReservationHotelModelImplToJson(
        _$ReservationHotelModelImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'type': instance.type,
      'reservationDate': instance.reservationDate,
      'reservationTime': instance.reservationTime,
      'totalPrice': instance.totalPrice,
      'participantCount': instance.participantCount,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
    };

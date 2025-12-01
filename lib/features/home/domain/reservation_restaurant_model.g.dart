// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationRestaurantModelImpl _$$ReservationRestaurantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationRestaurantModelImpl(
      eventId: (json['eventId'] as num?)?.toInt(),
      type: json['type'] as String?,
      reservationDate: json['reservationDate'] as String?,
      reservationTime: json['reservationTime'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      participantCount: (json['participantCount'] as num?)?.toInt() ?? 0,
      fromDate: json['fromDate'] as String?,
      toDate: json['toDate'] as String?,
      forms: (json['forms'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      selectedForms: (json['selectedForms'] as List<dynamic>?)
              ?.map((e) => FormModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      typeReservation: json['typeReservation'] as String? ?? "emporter",
    );

Map<String, dynamic> _$$ReservationRestaurantModelImplToJson(
        _$ReservationRestaurantModelImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'type': instance.type,
      'reservationDate': instance.reservationDate,
      'reservationTime': instance.reservationTime,
      'totalPrice': instance.totalPrice,
      'participantCount': instance.participantCount,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'forms': instance.forms,
      'selectedForms': instance.selectedForms,
      'typeReservation': instance.typeReservation,
    };

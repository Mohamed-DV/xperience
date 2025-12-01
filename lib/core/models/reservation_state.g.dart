// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationStateImpl _$$ReservationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      isLoadingReservation: json['isLoadingReservation'] as bool? ?? true,
      isCancelLoading: json['isCancelLoading'] as bool? ?? false,
      selectedId: (json['selectedId'] as num?)?.toInt() ?? 0,
      selectedType: json['selectedType'] as String? ?? '',
      reservationDate: json['reservationDate'] as String? ?? '',
      fromHour: json['fromHour'] as String? ?? '',
      toHour: json['toHour'] as String? ?? '',
      totalPrice: json['totalPrice'] as String? ?? '',
      childrenCount: (json['childrenCount'] as num?)?.toInt() ?? 0,
      adultsCount: (json['adultsCount'] as num?)?.toInt() ?? 1,
      participantCount: (json['participantCount'] as num?)?.toInt() ?? 0,
      isLanched: json['isLanched'] as bool? ?? false,
      reservations: (json['reservations'] as List<dynamic>?)
              ?.map((e) => ReservationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      doAgainReservations: (json['doAgainReservations'] as List<dynamic>?)
              ?.map((e) => ReservationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedReservation: json['selectedReservation'] == null
          ? null
          : ReservationModel.fromJson(
              json['selectedReservation'] as Map<String, dynamic>),
      compition: json['compition'] == null
          ? null
          : CompitionModel.fromJson(json['compition'] as Map<String, dynamic>),
      activity: json['activity'] == null
          ? null
          : ActivityModel.fromJson(json['activity'] as Map<String, dynamic>),
      event: json['event'] == null
          ? null
          : EventModel.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReservationStateImplToJson(
        _$ReservationStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'isLoadingReservation': instance.isLoadingReservation,
      'isCancelLoading': instance.isCancelLoading,
      'selectedId': instance.selectedId,
      'selectedType': instance.selectedType,
      'reservationDate': instance.reservationDate,
      'fromHour': instance.fromHour,
      'toHour': instance.toHour,
      'totalPrice': instance.totalPrice,
      'childrenCount': instance.childrenCount,
      'adultsCount': instance.adultsCount,
      'participantCount': instance.participantCount,
      'isLanched': instance.isLanched,
      'reservations': instance.reservations,
      'doAgainReservations': instance.doAgainReservations,
      'selectedReservation': instance.selectedReservation,
      'compition': instance.compition,
      'activity': instance.activity,
      'event': instance.event,
    };

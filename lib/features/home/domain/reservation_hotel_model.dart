import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/features/home/domain/details_restaurant_model.dart';

part 'reservation_hotel_model.freezed.dart';
part 'reservation_hotel_model.g.dart';

@freezed
class ReservationHotelModel with _$ReservationHotelModel {
  const ReservationHotelModel._();
  const factory ReservationHotelModel({
    int? eventId,
    String? type,
    String? reservationDate,
    String? reservationTime,
    double? totalPrice,
    @Default(1) int participantCount,
    String? fromDate,
    String? toDate,
  }) = _ReservationHotelModel;

  factory ReservationHotelModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationHotelModelFromJson(json);
  factory ReservationHotelModel.empty() =>
      const ReservationHotelModel();

}

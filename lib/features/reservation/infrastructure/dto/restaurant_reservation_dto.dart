import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/dto/details_restaurant_dto.dart';
import 'package:spots_xplorer_app/features/reservation/domain/restaurant_reservation_model.dart';

part 'restaurant_reservation_dto.freezed.dart';
part 'restaurant_reservation_dto.g.dart';

@freezed
class RestaurantReservationDto with _$RestaurantReservationDto {
  const RestaurantReservationDto._();
  const factory RestaurantReservationDto({
    int? id,
    String? reservationDate,
    String? status,
    int? participantCount,
    String? totalPrice,

    String? reservationTime,
    String? typeReservation,
    required DetailsRestaurantDto restaurant,
  }) = _RestaurantReservationDto;

  factory RestaurantReservationDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurantReservationDtoFromJson(json);

  RestaurantReservationModel toDomain() {
    return RestaurantReservationModel(
      id: id ?? -1,
      reservationDate: reservationDate ?? '',

      status: status ?? '',
      participantCount: participantCount ?? 0,
      reservationTime: reservationTime ?? '',
      typeReservation: typeReservation ?? '',
      totalPrice: totalPrice ?? '',
      restaurant: restaurant,
    );
  }
}

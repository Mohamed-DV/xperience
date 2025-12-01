import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/dto/details_restaurant_dto.dart';

part 'restaurant_reservation_model.freezed.dart';
part 'restaurant_reservation_model.g.dart';

@freezed
class RestaurantReservationModel with _$RestaurantReservationModel {
  const factory RestaurantReservationModel({
    required int id,
    required String reservationDate,
    required String status,
    required int participantCount,
    required String totalPrice,
    required DetailsRestaurantDto restaurant,
    required String reservationTime,
    required String typeReservation,
  }) = _RestaurantReservationModel;

  factory RestaurantReservationModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantReservationModelFromJson(json);

  factory RestaurantReservationModel.empty() =>  RestaurantReservationModel(
        id: 0,
        reservationDate: '',
        status: '',
        participantCount: 0,
        totalPrice: '',
        reservationTime: '',
        typeReservation: '',
        restaurant: DetailsRestaurantDto.empty(),
      );
}

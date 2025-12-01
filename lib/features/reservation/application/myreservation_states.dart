import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/features/reservation/domain/hotel_reservation_model.dart';
import 'package:spots_xplorer_app/features/reservation/domain/restaurant_reservation_model.dart';

part 'myreservation_states.freezed.dart';

@freezed
class MyreservationStates with _$MyreservationStates {
  const MyreservationStates._();
  const factory MyreservationStates.initial() = _Initial;
  const factory MyreservationStates.failure(String failure) = _Failure;

  //Get Resraurnt
  const factory MyreservationStates.getReservationResruantSuccess(
    List<RestaurantReservationModel> restaurent,
  ) = _GetReservationResruantSuccess;

  const factory MyreservationStates.getReservationResruantFailure() =
      _GetReservationResruantFailure;

       //Get Hotel
  const factory MyreservationStates.getReservationHotelSuccess(
    List<HotelReservationModel> hotel,
  ) = _GetReservationHotelSuccess;

  const factory MyreservationStates.getReservationHotelFailure() =
      _GetReservationHotelFailure;
}

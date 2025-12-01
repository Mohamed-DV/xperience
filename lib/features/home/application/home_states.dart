import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/features/home/domain/details_hotel_model.dart';

import 'package:spots_xplorer_app/features/home/domain/details_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/domain/hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/restaurent_model.dart';

part 'home_states.freezed.dart';

@freezed
class HomeStates with _$HomeStates {
  const HomeStates._();
  const factory HomeStates.initial() = _Initial;
  const factory HomeStates.failure(String failure) = _Failure;
  //Get Resraurnt
  const factory HomeStates.getResruantSuccess(
    List<RestaurentModel> restaurent,
  ) = _GetResruantSuccess;
  // Get Details Resraurnt
       const factory HomeStates.getDetailsResruantSuccess(
    DetailsRestaurantModel restaurent,
  ) = _GetDetailsResruantSuccess;
        const factory HomeStates.getDetailsResruantFailure(
   
  ) = _GetDetailsResruantFailure;
 

  //Get Hotel
  const factory HomeStates.getHotelSuccess(
    List<HotelModel> hotel,
  ) = _GetHotelSuccess;
  const factory HomeStates.getHotelFailure(String message) =
      _GetHotelFailure;

       // Get Details Hotel
       const factory HomeStates.getDetailsHotelSuccess(
    DetailsHotelModel hotel,
  ) = _GetDetailsHotelSuccess;
        const factory HomeStates.getDetailsHotelFailure(
   
  ) = _GetDetailsHotelFailure;

      // create Restaurant Reservation States 
  const factory HomeStates.createRestaurantReservationSuccess(
  ) = _CreateRestaurantReservationSuccess;
  const factory HomeStates.createRestaurantReservationFailure(String message) =
      _CreateRestaurantReservationFailure;
           // create hotel Reservation States 
  const factory HomeStates.createHotelReservationSuccess(
  ) = _CreateHotelReservationSuccess;
  const factory HomeStates.createHotelReservationFailure(String message) =
      _CreateHotelReservationFailure;
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/repository.dart';

import 'home_states.dart';

class HomeNotifier extends StateNotifier<HomeStates> {
  final HomeRepository _repository;

  HomeNotifier(this._repository) : super(const HomeStates.initial());
  Future<void> getRestaurant() async {
    state = const HomeStates.initial();

    final result = await _repository.getRestaurant();

    state = result.fold(
      (failure) =>
          HomeStates.getHotelFailure(failure.message ?? 'An error occurred'),
      (restaurant) => HomeStates.getResruantSuccess(restaurant),
    );
  }

  Future<void> getHotel() async {
    state = const HomeStates.initial();

    final result = await _repository.getHotel();

    state = result.fold(
      (failure) =>
          HomeStates.getHotelFailure(failure.message ?? 'An error occurred'),
      (hotel) => HomeStates.getHotelSuccess(hotel),
    );
  }

  Future<void> getDetailsResturant(String id) async {
    final result = await _repository.getDeatilsResturant(id);

    state = result.fold(
      (failure) => const HomeStates.getDetailsResruantFailure(),
      (restaurant) => HomeStates.getDetailsResruantSuccess(restaurant),
    );
  }

  Future<void> createRestaurantReservation(
    ReservationRestaurantModel reservation,
  ) async {
    final result = await _repository.createRestaurantReservation(reservation);

    state = result.fold(
      (failure) => HomeStates.createRestaurantReservationFailure(
        failure.message ?? 'An error occurred',
      ),
      (restaurant) => const HomeStates.createRestaurantReservationSuccess(),
    );
  }


  Future<void> createHotelReservation(
    ReservationHotelModel reservation,
  ) async {
    final result = await _repository.createHotelReservation(reservation);

    state = result.fold(
      (failure) => HomeStates.createHotelReservationFailure(
        failure.message ?? 'An error occurred',
      ),
      (restaurant) => const HomeStates.createHotelReservationSuccess(),
    );
  }

  Future<void> getDetailsHotel(String id) async {
    final result = await _repository.getDeatilsHotel(id);

    state = result.fold(
      (failure) => const HomeStates.getDetailsHotelFailure(),
      (restaurant) => HomeStates.getDetailsHotelSuccess(restaurant),
    );
  }
}

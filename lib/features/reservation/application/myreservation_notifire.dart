import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/features/reservation/infrastructure/reservation_repository.dart';

import 'myreservation_states.dart';

class MyreservatonNotifire extends StateNotifier<MyreservationStates> {
  final ReservationRepository _repository;

  MyreservatonNotifire(this._repository)
    : super(const MyreservationStates.initial());
  Future<void> getRestaurant() async {
    state = const MyreservationStates.initial();

    final result = await _repository.getRestaurantReservationn();

    state = result.fold(
      (failure) => const MyreservationStates.getReservationResruantFailure(),
      (restaurant) =>
          MyreservationStates.getReservationResruantSuccess(restaurant),
    );
  }

    Future<void> gethotel() async {
    state = const MyreservationStates.initial();

    final result = await _repository.getHotelReservationn();

    state = result.fold(
      (failure) => const MyreservationStates.getReservationHotelFailure(),
      (hotel) =>
          MyreservationStates.getReservationHotelSuccess(hotel),
    );
  }
}

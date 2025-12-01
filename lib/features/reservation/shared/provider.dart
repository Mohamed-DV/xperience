import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/core/shared/providers.dart';
import 'package:spots_xplorer_app/features/reservation/application/myreservation_states.dart';
import 'package:spots_xplorer_app/features/reservation/application/myreservation_notifire.dart';
import 'package:spots_xplorer_app/features/reservation/domain/hotel_reservation_model.dart';
import 'package:spots_xplorer_app/features/reservation/domain/restaurant_reservation_model.dart';
import 'package:spots_xplorer_app/features/reservation/infrastructure/reservation_remote_date_source.dart';
import 'package:spots_xplorer_app/features/reservation/infrastructure/reservation_repository.dart';


final myReservationRemoteRepositoryProvider = Provider<ReservationRemoteService>(
  (ref) => ReservationRemoteService(ref.watch(dioProvider)),
);

final myReservationRepository = Provider<ReservationRepository>(
  (ref) => ReservationRepository(ref.watch(myReservationRemoteRepositoryProvider)),
);

final myReservationNotifierProvider = StateNotifierProvider<MyreservatonNotifire, MyreservationStates>(
  (ref) => MyreservatonNotifire(ref.watch(myReservationRepository)),
);


final restoReservationModelProvider = StateProvider<RestaurantReservationModel>(
  (ref) => RestaurantReservationModel.empty(),
);
final hotelReservationModelProvider = StateProvider<HotelReservationModel>(
  (ref) => HotelReservationModel.empty(),
);

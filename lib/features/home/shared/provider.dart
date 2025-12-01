import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/core/models/reservation_model.dart';
import 'package:spots_xplorer_app/core/shared/providers.dart';
import 'package:spots_xplorer_app/features/home/application/home_notifire.dart';
import 'package:spots_xplorer_app/features/home/application/home_states.dart';
import 'package:spots_xplorer_app/features/home/domain/details_hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/details_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/domain/hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/domain/restaurent_model.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/remote_date_source.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/repository.dart';

enum HomeProvidersType { initial, search, restaurant }

final homeTypeState = StateProvider<HomeProvidersType>(
  (ref) => HomeProvidersType.initial,
);

enum RestoProvidersType { initial, reserve, formule }
enum HotelProvidersType { initial, reserve }

final restoTypeState = StateProvider<RestoProvidersType>(
  (ref) => RestoProvidersType.initial,
);

final hotelTypeState = StateProvider<HotelProvidersType>(
  (ref) => HotelProvidersType.initial,
);

final myhomeRemoteRepositoryProvider = Provider<HomeRemoteService>(
  (ref) => HomeRemoteService(ref.watch(dioProvider)),
);

final myhomeRepository = Provider<HomeRepository>(
  (ref) => HomeRepository(ref.watch(myhomeRemoteRepositoryProvider)),
);

final myhomeNotifierProvider = StateNotifierProvider<HomeNotifier, HomeStates>(
  (ref) => HomeNotifier(ref.watch(myhomeRepository)),
);

final restaurantProvider = StateProvider<List<ReservationModel>>((ref) => []);
final detailsRestoProvider = StateProvider<DetailsRestaurantModel>(
  (ref) => DetailsRestaurantModel.empty(),
);


final sharedIdProvider = StateProvider<String>((ref) => '');

final formsIdSelected = StateProvider<List<int>>((ref) => []);
final listhotelsProvider = StateProvider<List<HotelModel>>((ref) => []);
final listrestaurantProvider = StateProvider<List<RestaurentModel>>((ref) => []);

final reservationRestaurantProvider = StateProvider<ReservationRestaurantModel>(
  (ref) => ReservationRestaurantModel.empty(),
);

final reservationHotelProvider = StateProvider<ReservationHotelModel>(
  (ref) => ReservationHotelModel.empty(),
);
final detailsHotelModelProvider = StateProvider<DetailsHotelModel>(
  (ref) => DetailsHotelModel.empty(),
);

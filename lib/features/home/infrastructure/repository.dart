import 'package:dartz/dartz.dart';
import 'package:spots_xplorer_app/core/domain/failure.dart';
import 'package:spots_xplorer_app/core/infrastructure/helpers/repository_helper.dart';
import 'package:spots_xplorer_app/features/home/domain/details_hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/details_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/domain/hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/domain/restaurent_model.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/dto/hotel_dto.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/dto/restaurent_dto.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/remote_date_source.dart';

class HomeRepository with RepositoryHelper {
  final HomeRemoteService _remoteService;

  const HomeRepository(this._remoteService);

  Future<Either<Failure, List<RestaurentModel>>> getRestaurant() {
    return handleData(_remoteService.getRestaurent(), (response) async {
      final List<RestaurentModel> restaurent = [];
      final data = response.data;

      try {
        if (data != null && data['restaurants'] != null) {
          print('Data received: ${data['restaurants']}');
          final List<dynamic> dataList = data['restaurants'] as List<dynamic>;
          for (final item in dataList) {
            try {
              // Parse using DTO first for safety
              final dto = RestaurentDto.fromJson(item as Map<String, dynamic>);
              // Convert DTO to domain model
              final model = dto.toDomain();
              restaurent.add(model);
            } catch (e, s) {
              print('Error parsing reservation: $e $s');
            }
          }
        }
      } catch (e, s) {
        print('Error processing reservations data: $e $s');
      }

      return restaurent;
    });
  }

  Future<Either<Failure, List<HotelModel>>> getHotel() {
    return handleData(_remoteService.getHotel(), (response) async {
      final List<HotelModel> restaurent = [];
      final data = response.data;

      try {
        if (data != null && data['accomodations'] != null) {
          print('Data received: ${data['accomodations']}');
          final List<dynamic> dataList = data['accomodations'] as List<dynamic>;
          for (final item in dataList) {
            try {
              // Parse using DTO first for safety
              final dto = HotelDto.fromJson(item as Map<String, dynamic>);
              // Convert DTO to domain model
              final model = dto.toDomain();
              restaurent.add(model);
            } catch (e, s) {
              print('Error parsing reservation: $e $s');
            }
          }
        }
      } catch (e, s) {
        print('Error processing reservations data: $e $s');
      }

      return restaurent;
    });
  }

  Future<Either<Failure, DetailsRestaurantModel>> getDeatilsResturant(
    String id,
  ) {
    return handleData(_remoteService.getDetailsRestaurent(id), (
      response,
    ) async {
      final data = response.data;
      print('Data received: $data');
      return DetailsRestaurantModel.fromJson(data);
    });
  }

  Future<Either<Failure, void>> createRestaurantReservation(
    ReservationRestaurantModel reservation,
  ) {
    return handleData(_remoteService.createRestaurantReservation(reservation), (
      response,
    ) async {
      final data = response.data;
      print('Datae ===== > $data');
    });
  }
    Future<Either<Failure, void>> createHotelReservation(
    ReservationHotelModel reservation,
  ) {
    return handleData(_remoteService.createhotelReservation(reservation), (
      response,
    ) async {
      final data = response.data;
      print('Datae ===== > $data');
    });
  }


  Future<Either<Failure, DetailsHotelModel>> getDeatilsHotel(String id) {
    return handleData(_remoteService.getDetailsHotel(id), (response) async {
      final data = response.data;
      print('Data received: $data');
      return DetailsHotelModel.fromJson(data);
    });
  }
}

import 'package:dartz/dartz.dart';
import 'package:spots_xplorer_app/core/domain/failure.dart';
import 'package:spots_xplorer_app/core/infrastructure/helpers/repository_helper.dart';
import 'package:spots_xplorer_app/features/reservation/domain/hotel_reservation_model.dart';
import 'package:spots_xplorer_app/features/reservation/domain/restaurant_reservation_model.dart';
import 'package:spots_xplorer_app/features/reservation/infrastructure/dto/hotel_reservation_dto.dart';
import 'package:spots_xplorer_app/features/reservation/infrastructure/dto/restaurant_reservation_dto.dart';
import 'package:spots_xplorer_app/features/reservation/infrastructure/reservation_remote_date_source.dart';

class ReservationRepository with RepositoryHelper {
  final ReservationRemoteService _remoteService;

  const ReservationRepository(this._remoteService);
  Future<Either<Failure, List<RestaurantReservationModel>>> getRestaurantReservationn() {
    return handleData(_remoteService.getRestaurantReservationn(), (
      response,
    ) async {
      final List<RestaurantReservationModel> restaurent = [];
      final data = response.data;

      try {
        if (data != null && data != null) {
          print('Data received: $data');
          final List<dynamic> dataList = data as List<dynamic>;
          for (final item in dataList) {
            try {
              // Parse using DTO first for safety
              final dto = RestaurantReservationDto.fromJson(
                item as Map<String, dynamic>,
              );
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

   Future<Either<Failure, List<HotelReservationModel>>> getHotelReservationn() {
    return handleData(_remoteService.getHotelReservationn(), (
      response,
    ) async {
      final List<HotelReservationModel> restaurent = [];
      final data = response.data;

      try {
        if (data != null && data != null) {
          print('Data received: $data');
          final List<dynamic> dataList = data as List<dynamic>;
          for (final item in dataList) {
            try {
              // Parse using DTO first for safety
              final dto = HotelReservationDto.fromJson(
                item as Map<String, dynamic>,
              );
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
}

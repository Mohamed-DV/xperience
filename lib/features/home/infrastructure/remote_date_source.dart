// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:spots_xplorer_app/core/infrastructure/helpers/remote_service_helper.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_hotel_model.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_restaurant_model.dart';

class HomeRemoteService extends RemoteServiceHelper {
  final Dio _dio;

  HomeRemoteService(this._dio);
  Future<Response> getRestaurent() {
    return _dio.get("/home?type=restaurants");
  }

  Future<Response> getDetailsRestaurent(String id) {
    return _dio.get("/home/event/$id?type=restaurant");
  }

  Future<Response> getHotel() {
    return _dio.get("/home?type=accomodations");
  }

  Future<Response> getDetailsHotel(String id) {
    return _dio.get("/home/event/$id?type=accomodation");
  }

  Future<Response> createRestaurantReservation(
    ReservationRestaurantModel reservation,
  ) {
    return _dio.post(
      "/reservations/create",
      data: {
        "eventId": reservation.eventId,
        "type": "restaurant",
        "reservationDate": reservation.reservationDate,
        "reservationTime": reservation.reservationTime,
        "totalPrice": reservation.totalPrice,
        "participantCount": reservation.participantCount,
        "forms": reservation.forms,
        "typeReservation": reservation.typeReservation, // emporter | sur_place
      },
      options: Options(headers: {'Content-Type': 'multipart/form-data'}),
    );
  }
   Future<Response> createhotelReservation(
    ReservationHotelModel reservation,
  ) {
    return _dio.post(
      "/reservations/create",
      data: {
        "eventId": reservation.eventId,
        "type": "accomodation",
        "reservationDate": reservation.reservationDate,
        "totalPrice": reservation.totalPrice,
        "participantCount": reservation.participantCount,
       
      },
      options: Options(headers: {'Content-Type': 'multipart/form-data'}),
    );
  }
}

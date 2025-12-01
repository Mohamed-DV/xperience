// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:spots_xplorer_app/core/infrastructure/helpers/remote_service_helper.dart';

class ReservationRemoteService extends RemoteServiceHelper {
  final Dio _dio;

  ReservationRemoteService(this._dio);
  Future<Response> getRestaurantReservationn() {
    return _dio.get("/reservations?type=restaurant&status=pending");
  }
    Future<Response> getHotelReservationn() {
    return _dio.get("/reservations?type=accomodation&status=pending");
  }

}

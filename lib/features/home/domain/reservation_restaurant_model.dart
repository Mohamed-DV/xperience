import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/features/home/domain/details_restaurant_model.dart';

part 'reservation_restaurant_model.freezed.dart';
part 'reservation_restaurant_model.g.dart';

@freezed
class ReservationRestaurantModel with _$ReservationRestaurantModel {
  const ReservationRestaurantModel._();
  const factory ReservationRestaurantModel({
    int? eventId,
    String? type,
    String? reservationDate,
    String? reservationTime,
    double? totalPrice,
    @Default(0) int participantCount,
    String? fromDate,
    String? toDate,
    @Default([]) List<int> forms,
    @Default([]) List<FormModel> selectedForms,
    @Default("emporter") String typeReservation,
  }) = _ReservationRestaurantModel;

  factory ReservationRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationRestaurantModelFromJson(json);
  factory ReservationRestaurantModel.empty() =>
      const ReservationRestaurantModel();

  FormData toCustomerFormData() {
    final formData = FormData();
    formData.fields
      ..add(MapEntry('eventId', "$eventId"))
      ..add(MapEntry('type', type!))
      ..add(MapEntry('reservationDate', reservationDate!))
      ..add(MapEntry('totalPrice', "$totalPrice"))
      ..add(MapEntry('participantCount', "$participantCount"))
      ..add(MapEntry('forms', "$forms"))
      ..add(MapEntry('typeReservation', typeReservation));
    print('eventId ===> ${eventId.toString()}');
    print('type ===> ${type!}');
    print('reservationDate ===> ${reservationDate!}');
    print('totalPrice ===> ${totalPrice.toString()}');
    print('participantCount ===> ${participantCount.toString()}');
    print('forms ===> $forms');
    print('typeReservation ===> $typeReservation');
    return formData;
  }
}

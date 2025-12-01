import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';

part 'reservation_model.freezed.dart';
part 'reservation_model.g.dart';

@freezed
class ReservationModel with _$ReservationModel {
  const factory ReservationModel({
    required int id,
    required String reservationDate,
    required String status,
    String? title,
    String? fromHour,
    String? toHour,
    String? totalPrice,
    CompitionsModel? competition,
    ActivitysModel? activity,
    EventModel? event,
    bool? isCancelled,
    bool? isUpdated,
  }) = _ReservationModel;

  factory ReservationModel.fromJson(Map<String, Object?> json) =>
      _$ReservationModelFromJson(json);
}

@freezed
class CompetitionImageModel with _$CompetitionImageModel {
  const factory CompetitionImageModel({
    required int id,
    required String image,
    required String createdAt,
    required String updatedAt,
    String? deletedAt,
  }) = _CompetitionImageModel;

  factory CompetitionImageModel.fromJson(Map<String, dynamic> json) =>
      _$CompetitionImageModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String type,
    required List<double> coordinates,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

@freezed
class CompitionsModel with _$CompitionsModel {
  const factory CompitionsModel({
    required int id,
    required String title,
    required String discipline,
    required String date,
    required String time,
    required String level,
    required int distance,
    required int participantNumber,
    required String prerequisites,
    required String meetDate,
    required String meetAddress,
    required int meetPostalcode,
    required String meetCity,
    required String meetCountry,
    required String startDate,
    required String eventType,
    required String startAddress,
    required LocationModel meetLocation,
    required LocationModel startLocation,
    required String description,
    required String price,
    required String email,
    required String phone,
    required String website,
    required List<CompetitionImageModel> images,
    required String createdAt,
    required String updatedAt,
    String? deletedAt,
  }) = _CompitionsModel;

  factory CompitionsModel.fromJson(Map<String, dynamic> json) =>
      _$CompitionsModelFromJson(json);
}

@freezed
class ActivityImageModel with _$ActivityImageModel {
  const factory ActivityImageModel({
    required int id,
    required String image,
    required String createdAt,
    required String updatedAt,
    String? deletedAt,
  }) = _ActivityImageModel;

  factory ActivityImageModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityImageModelFromJson(json);
}

@freezed
class OpeningHourModel with _$OpeningHourModel {
  const factory OpeningHourModel({
    required String day,
    required String open,
    required String close,
  }) = _OpeningHourModel;

  factory OpeningHourModel.fromJson(Map<String, dynamic> json) =>
      _$OpeningHourModelFromJson(json);
}

@freezed
class ActivitysModel with _$ActivitysModel {
  const factory ActivitysModel({
    required int id,
    required String title,
    required String distance,
    required String time,
    required String level,
    required int participantNumber,
    required String prerequisites,
    required String street,
    required int postalCode,
    required String city,
    required String eventType,
    required String country,
    required LocationModel location,
    required String description,
    required String price,
    required List<OpeningHourModel> openingHours,
    required String email,
    required String phone,
    String? website,
    required List<ActivityImageModel> images,
    required String createdAt,
    required String updatedAt,
    String? deletedAt,
  }) = _ActivitysModel;

  factory ActivitysModel.fromJson(Map<String, dynamic> json) =>
      _$ActivitysModelFromJson(json);
}

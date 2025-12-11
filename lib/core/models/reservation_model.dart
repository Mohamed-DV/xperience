import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';

part 'reservation_model.freezed.dart';
part 'reservation_model.g.dart';

@freezed
class ReservationModel with _$ReservationModel {
  const factory ReservationModel({
    required int id,

    String? reservationDate,
    String? status,

    int? participantCount,

    String? fromDate,
    String? toDate,

    String? fromHour,
    String? toHour,

    String? totalPrice,
    String? notes,
    String? teamName,

    String? createdAt,
    String? updatedAt,

    ActivitysModel? activity,
    CompitionsModel? competition,
    EventModel? event,

    bool? isCancelled,
    bool? isUpdated,
  }) = _ReservationModel;

  factory ReservationModel.fromJson(Map<String, Object?> json) =>
      _$ReservationModelFromJson(json);
}


@freezed
@freezed
class CompetitionImageModel with _$CompetitionImageModel {
  const factory CompetitionImageModel({
    required int id,
    String? image,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _CompetitionImageModel;

  factory CompetitionImageModel.fromJson(Map<String, dynamic> json) =>
      _$CompetitionImageModelFromJson(json);
}


@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    String? type,
    List<double>? coordinates,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}


@freezed

class CompitionsModel with _$CompitionsModel {
  const factory CompitionsModel({
    required int id,

    String? title,
    String? discipline,
    String? date,
    String? time,
    String? level,

    int? distance,
    int? participantNumber,

    String? prerequisites,

    String? meetDate,
    String? meetAddress,
    int? meetPostalcode,
    String? meetCity,
    String? meetCountry,

    String? startDate,
    String? eventType,
    String? startAddress,

    LocationModel? meetLocation,
    LocationModel? startLocation,

    String? description,
    String? price,
    String? email,
    String? phone,
    String? website,

    List<CompetitionImageModel>? images,

    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _CompitionsModel;

  factory CompitionsModel.fromJson(Map<String, dynamic> json) =>
      _$CompitionsModelFromJson(json);
}



@freezed
class ActivityImageModel with _$ActivityImageModel {
  const factory ActivityImageModel({
    required int id,
    String? image,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _ActivityImageModel;

  factory ActivityImageModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityImageModelFromJson(json);
}


@freezed
@freezed
class OpeningHourModel with _$OpeningHourModel {
  const factory OpeningHourModel({
    String? day,
    String? open,
    String? close,
  }) = _OpeningHourModel;

  factory OpeningHourModel.fromJson(Map<String, dynamic> json) =>
      _$OpeningHourModelFromJson(json);
}


@freezed
class ActivitysModel with _$ActivitysModel {
  const factory ActivitysModel({
    required int id,

    String? title,
    String? distance,
    String? time,
    String? level,

    int? participantNumber,

    String? prerequisites,
    String? street,
    int? postalCode,
    String? city,

    String? eventType,
    String? country,

    LocationModel? location,

    String? description,
    String? price,

    List<OpeningHourModel>? openingHours,

    String? email,
    String? phone,
    String? website,

    List<ActivityImageModel>? images,

    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _ActivitysModel;

  factory ActivitysModel.fromJson(Map<String, dynamic> json) =>
      _$ActivitysModelFromJson(json);
}


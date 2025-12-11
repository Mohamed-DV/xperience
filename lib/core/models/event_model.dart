import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';
import 'package:spots_xplorer_app/core/models/reservation_model.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed

class EventModel with _$EventModel {
  const factory EventModel({
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
    String? startAddress,

    String? eventType,

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
int? duration,
    bool? isFav,
    bool? isReserved,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, Object?> json) =>
      _$EventModelFromJson(json);
}

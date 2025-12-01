import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required int id,
    required String title,
    required List<ImageModel> images,
    required String eventType,
    String? meetDate,
    String? time,
    String? meetCity,
    String? country,
    String? meetCountry,
    String? description,
    String? price,
    String? website,
    String? phone,
    String? email,
    int? duration,
    bool? isFav,
    bool? isReserved,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, Object?> json) =>
      _$EventModelFromJson(json);
}

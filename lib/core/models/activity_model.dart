import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    required int id,
    required String title,
    String? discipline,
    required String distance,
    required String description,
    required int participantNumber,
    required String street,
    required String city,
    required String eventType,
    required List<ImageModel> images,
    required String country,
    required String price,
    bool? isReserved,
    String? email,
    String? phone,
    String? website,
    bool? isFav,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, Object?> json) =>
      _$ActivityModelFromJson(json);

  factory ActivityModel.empty() => const ActivityModel(
    id: 0,
    title: '',
    discipline: '',
    distance: '',
    description: '',
    participantNumber: 0,
    street: '',
    city: '',
    eventType: '',
    images: [],
    country: '',
    price: '',
    isReserved: false,
  );
}

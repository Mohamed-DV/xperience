import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';

part 'hotel_model.freezed.dart';
part 'hotel_model.g.dart';

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    required int id,
    required String title,
    required String description,
    required String price,
    required String city,
    required String country,
    required String type,
    required List<ImageModel> images

  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}

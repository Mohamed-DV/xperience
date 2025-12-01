import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';

part 'restaurent_model.freezed.dart';
part 'restaurent_model.g.dart';

@freezed
class RestaurentModel with _$RestaurentModel {
  const factory RestaurentModel({
    required int id,
    required String etablishement,
    required String city,
    required String country,
    required List<ImageModel> images

  }) = _RestaurentModel;

  factory RestaurentModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurentModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';

part 'details_restaurant_model.freezed.dart';
part 'details_restaurant_model.g.dart';

@freezed
class DetailsRestaurantModel with _$DetailsRestaurantModel {
  const factory DetailsRestaurantModel({
    required int id,
    required String etablishement,
    required String street,
    required String postalCode,
    required String city,
    required String country,
    required LocationModel location,
    required String description,
    required List<OpeningHourModel> openingHours,
    required String email,
    required String phone,
    required String website,
    required List<ImageModel> images,
    required List<FormModel> forms,
    // characteristics is an empty array now, so type as List<String>
    required List<CharacteristicsModel> characteristics,
  }) = _DetailsRestaurantModel;

  factory DetailsRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$DetailsRestaurantModelFromJson(json);

  factory DetailsRestaurantModel.empty() {
    return const DetailsRestaurantModel(
      id: -1,
      etablishement: '',
      street: '',
      postalCode: '',
      city: '',
      country: '',
      location: LocationModel(type: '', coordinates: []),
      description: '',
      openingHours: [],
      email: '',
      phone: '',
      website: '',
      images: [],
      forms: [],
      characteristics: [],
    );
  }
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
class FormModel with _$FormModel {
  const factory FormModel({
    required int id,
    required String image1,
    required String image2,
    required String name,
    required String description,
    required String entrance,
    required String dishe,
    required String dessert,
    required String drink,
    required String price,
  }) = _FormModel;

  factory FormModel.fromJson(Map<String, dynamic> json) =>
      _$FormModelFromJson(json);
}

@freezed
class CharacteristicsModel with _$CharacteristicsModel {
  const CharacteristicsModel._();
  const factory CharacteristicsModel({required int id, required String title}) =
      _CharacteristicsModel;

  factory CharacteristicsModel.fromJson(Map<String, dynamic> json) =>
      _$CharacteristicsModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';

part 'details_hotel_model.freezed.dart';
part 'details_hotel_model.g.dart';

@freezed
class DetailsHotelModel with _$DetailsHotelModel {
  const factory DetailsHotelModel({
    required int id,
    required String title,
    required String description,
    required String price,
    required String street,
    required int postalCode,
    required String city,
    required String country,
    required LocationModel location,
    required String type,
    required int nbrBedroom,
    required int nbrTravelers,
    required int nbrSingleBed,
    required int nbrDoubleBed,
    required List<AssetModel> assets,
    required List<EquipmentModel> equipements,
    required List<ImageModel> images,
  }) = _DetailsHotelModel;

  factory DetailsHotelModel.fromJson(Map<String, dynamic> json) =>
      _$DetailsHotelModelFromJson(json);

  factory DetailsHotelModel.empty() {
    return const DetailsHotelModel(
      id: -1,
      title: '',
      description: '',
      price: '',
      street: '',
      postalCode: 0,
      city: '',
      country: '',
      location: LocationModel(type: '', coordinates: []),
      type: '',
      nbrBedroom: 0,
      nbrTravelers: 0,
      nbrSingleBed: 0,
      nbrDoubleBed: 0,
      assets: [],
      equipements: [],
      images: [],
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
class AssetModel with _$AssetModel {
  const factory AssetModel({
    required int id,
    required String title,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _AssetModel;

  factory AssetModel.fromJson(Map<String, dynamic> json) =>
      _$AssetModelFromJson(json);
}

@freezed
class EquipmentModel with _$EquipmentModel {
  const factory EquipmentModel({
    required int id,
    required String title,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';
import 'package:spots_xplorer_app/features/home/domain/details_hotel_model.dart';

part 'details_hotel_dto.freezed.dart';
part 'details_hotel_dto.g.dart';

@freezed
class DetailsHotelDto with _$DetailsHotelDto {
  const DetailsHotelDto._();
  const factory DetailsHotelDto({
    int? id,
    String? title,
    String? description,
    String? price,
    String? street,
    int? postalCode,
    String? city,
    String? country,
    LocationDto? location,
    String? type,
    int? nbrBedroom,
    int? nbrTravelers,
    int? nbrSingleBed,
    int? nbrDoubleBed,
    List<AssetDto>? assets,
    List<EquipmentDto>? equipements,
    List<ImageModel>? images,
  }) = _DetailsHotelDto;

  factory DetailsHotelDto.fromJson(Map<String, dynamic> json) =>
      _$DetailsHotelDtoFromJson(json);

  DetailsHotelModel toDomain() {
    return DetailsHotelModel(
      id: id ?? -1,
      title: title ?? '',
      description: description ?? '',
      price: price ?? '',
      street: street ?? '',
      postalCode: postalCode ?? 0,
      city: city ?? '',
      country: country ?? '',
      location: location?.toDomain() ?? const LocationModel(type: '', coordinates: []),
      type: type ?? '',
      nbrBedroom: nbrBedroom ?? 0,
      nbrTravelers: nbrTravelers ?? 0,
      nbrSingleBed: nbrSingleBed ?? 0,
      nbrDoubleBed: nbrDoubleBed ?? 0,
      assets: assets?.map((e) => e.toDomain()).toList() ?? [],
      equipements: equipements?.map((e) => e.toDomain()).toList() ?? [],
      images: images ?? [],
    );
  }
}

@freezed
class LocationDto with _$LocationDto {
  const LocationDto._();
  const factory LocationDto({
    String? type,
    List<double>? coordinates,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  LocationModel toDomain() {
    return LocationModel(
      type: type ?? '',
      coordinates: coordinates ?? [],
    );
  }
}

@freezed
class AssetDto with _$AssetDto {
  const AssetDto._();
  const factory AssetDto({
    int? id,
    String? title,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _AssetDto;

  factory AssetDto.fromJson(Map<String, dynamic> json) =>
      _$AssetDtoFromJson(json);

  AssetModel toDomain() {
    return AssetModel(
      id: id ?? -1,
      title: title ?? '',
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

@freezed
class EquipmentDto with _$EquipmentDto {
  const EquipmentDto._();
  const factory EquipmentDto({
    int? id,
    String? title,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _EquipmentDto;

  factory EquipmentDto.fromJson(Map<String, dynamic> json) =>
      _$EquipmentDtoFromJson(json);

  EquipmentModel toDomain() {
    return EquipmentModel(
      id: id ?? -1,
      title: title ?? '',
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';
import 'package:spots_xplorer_app/features/home/domain/details_restaurant_model.dart';

part 'details_restaurant_dto.freezed.dart';
part 'details_restaurant_dto.g.dart';

@freezed
class DetailsRestaurantDto with _$DetailsRestaurantDto {
  const DetailsRestaurantDto._();
  const factory DetailsRestaurantDto({
    int? id,
    String? etablishement,
    String? street,
    String? postalCode,
    String? city,
    String? country,
    LocationDto? location,
    String? description,
    List<OpeningHourDto>? openingHours,
    String? email,
    String? phone,
    String? website,
    List<ImageModel>? images,
   @Default([]) List<FormDto> forms,
    // characteristics is an empty array now, so type as List<String>
    List<CharacteristicsDto>? characteristics,
  }) = _DetailsRestaurantDto;

  factory DetailsRestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$DetailsRestaurantDtoFromJson(json);

  DetailsRestaurantModel toDoamin() {
    return DetailsRestaurantModel(
      id: id ?? -1,
      etablishement: etablishement ?? '',
      street: street ?? '',
      postalCode: postalCode ?? '',
      city: city ?? '',
      country: country ?? '',
      location:
          location?.toDomain() ??
          const LocationModel(coordinates: [], type: ''),
      description: description ?? '',
      openingHours: openingHours?.map((e) => e.toDomain()).toList() ?? [],
      email: email ?? '',
      phone: phone ?? '',
      website: website ?? '',
      images: images ?? [],
      forms: forms.map((e) => e.toDomain()).toList(),
      characteristics: characteristics?.map((e)=>e.toDomain()).toList() ?? [],
    );
  }
  static DetailsRestaurantDto empty() {
    return const DetailsRestaurantDto(
      id: -1,
      etablishement: '',
      street: '',
      postalCode: '',
      city: '',
      country: '',
      location: LocationDto(type: '', coordinates: []),
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
class LocationDto with _$LocationDto {
  const LocationDto._();
  const factory LocationDto({String? type, List<double>? coordinates}) =
      _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  LocationModel toDomain() {
    return LocationModel(type: type ?? '', coordinates: coordinates ?? []);
  }
}

@freezed
class OpeningHourDto with _$OpeningHourDto {
  const OpeningHourDto._();
  const factory OpeningHourDto({String? day, String? open, String? close}) =
      _OpeningHourDto;

  factory OpeningHourDto.fromJson(Map<String, dynamic> json) =>
      _$OpeningHourDtoFromJson(json);

  OpeningHourModel toDomain() {
    return OpeningHourModel(
      day: day ?? '',
      open: open ?? '',
      close: close ?? '',
    );
  }
}

@freezed
class FormDto with _$FormDto {
  const FormDto._();
  const factory FormDto({
    int? id,
    String? image1,
    String? image2,
    String? name,
    String? description,
    String? entrance,
    String? dishe,
    String? dessert,
    String? drink,
    String? price,
  }) = _FormDto;

  factory FormDto.fromJson(Map<String, dynamic> json) =>
      _$FormDtoFromJson(json);

  FormModel toDomain() {
    return FormModel(
      id: id ?? -1,
      image1: image1 ?? '',
      image2: image2 ?? '',
      name: name ?? '',
      description: description ?? '',
      entrance: entrance ?? '',
      dishe: dishe ?? '',
      dessert: dessert ?? '',
      drink: drink ?? '',
      price: price ?? '',
    );
  }
}

@freezed
class CharacteristicsDto with _$CharacteristicsDto {
  const CharacteristicsDto._();
  const factory CharacteristicsDto({int? id, String? title}) =
      _CharacteristicsDto;

  factory CharacteristicsDto.fromJson(Map<String, dynamic> json) =>
      _$CharacteristicsDtoFromJson(json);

  CharacteristicsModel toDomain() {
    return CharacteristicsModel(id: id ?? -1, title: title ?? '');
  }
}

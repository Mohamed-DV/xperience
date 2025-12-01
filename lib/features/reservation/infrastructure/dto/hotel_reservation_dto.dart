import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';
import 'package:spots_xplorer_app/features/home/infrastructure/dto/details_hotel_dto.dart';
import 'package:spots_xplorer_app/features/reservation/domain/hotel_reservation_model.dart';

part 'hotel_reservation_dto.freezed.dart';
part 'hotel_reservation_dto.g.dart';

@freezed
class HotelReservationDto with _$HotelReservationDto {
  const HotelReservationDto._();
  const factory HotelReservationDto({
    int? id,
    UserDto? user,
    String? reservationDate,
    String? status,
    int? participantCount,
    String? fromDate,
    String? toDate,
    String? fromHour,
    String? toHour,
    String? totalPrice,
    String? reservationTime,
    String? typeReservation,
    AccomodationDto? accomodation,
  }) = _HotelReservationDto;

  factory HotelReservationDto.fromJson(Map<String, dynamic> json) =>
      _$HotelReservationDtoFromJson(json);

  HotelReservationModel toDomain() {
    return HotelReservationModel(
      id: id ?? -1,
      user:
          user?.toDomain() ??
          const UserModel(
            id: -1,
            email: '',
            status: '',
            password: '',
            firstName: '',
            lastName: '',
            birthDate: '',
            country: '',
            picture: null,
            role: '',
            createdAt: '',
            updatedAt: '',
            deletedAt: null,
          ),
      reservationDate: reservationDate ?? '',
      status: status ?? '',
      participantCount: participantCount ?? 0,
      fromDate: fromDate,
      toDate: toDate,
      fromHour: fromHour,
      toHour: toHour,
      totalPrice: totalPrice ?? '',
      accomodation:
          accomodation?.toDomain() ??
          const AccomodationModel(
            id: -1,
            title: '',
            description: '',
            images: [],
            price: '',
            street: '',
            postalCode: 0,
            city: '',
            country: '',
            location: LocationModel(type: '', coordinates: []),
            assets: [],
            equipements: [],
            type: '',
            nbrBedroom: 0,
            nbrTravelers: 0,
            nbrSingleBed: 0,
            nbrDoubleBed: 0,
            createdAt: '',
            updatedAt: '',
            deletedAt: null,
          ),
    );
  }
}

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  const factory UserDto({
    int? id,
    String? email,
    String? status,
    String? password,
    String? firstName,
    String? lastName,
    String? birthDate,
    String? country,
    String? picture,
    String? role,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  UserModel toDomain() {
    return UserModel(
      id: id ?? -1,
      email: email ?? '',
      status: status ?? '',
      password: password ?? '',
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      birthDate: birthDate ?? '',
      country: country ?? '',
      picture: picture,
      role: role ?? '',
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
      deletedAt: deletedAt,
    );
  }
}

@freezed
class AccomodationDto with _$AccomodationDto {
  const AccomodationDto._();
  const factory AccomodationDto({
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
    List<ImageModel>? images,
    List<AssetDto>? assets,
    List<EquipmentDto>? equipements,
    int? nbrBedroom,
    int? nbrTravelers,
    int? nbrSingleBed,
    int? nbrDoubleBed,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _AccomodationDto;

  factory AccomodationDto.fromJson(Map<String, dynamic> json) =>
      _$AccomodationDtoFromJson(json);

  AccomodationModel toDomain() {
    return AccomodationModel(
      id: id ?? -1,
      title: title ?? '',
      description: description ?? '',
      price: price ?? '',
      street: street ?? '',
      postalCode: postalCode ?? 0,
      city: city ?? '',
      country: country ?? '',
      images: images ?? [],
      equipements: equipements?.map((e) => e.toDomain()).toList() ?? [],
      assets: assets?.map((e) => e.toDomain()).toList() ?? [],
      location:
          location?.toDomain() ??
          const LocationModel(type: '', coordinates: []),
      type: type ?? '',
      nbrBedroom: nbrBedroom ?? 0,
      nbrTravelers: nbrTravelers ?? 0,
      nbrSingleBed: nbrSingleBed ?? 0,
      nbrDoubleBed: nbrDoubleBed ?? 0,
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
      deletedAt: deletedAt,
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

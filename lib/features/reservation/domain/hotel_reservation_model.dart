import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/image_model.dart';
import 'package:spots_xplorer_app/features/home/domain/details_hotel_model.dart';

part 'hotel_reservation_model.freezed.dart';
part 'hotel_reservation_model.g.dart';

@freezed
class HotelReservationModel with _$HotelReservationModel {
  const factory HotelReservationModel({
    required int id,
    required UserModel user,
    required String reservationDate,
    required String status,
    required int participantCount,
    String? fromDate,
    String? toDate,
    String? fromHour,
    String? toHour,
    required String totalPrice,
    required AccomodationModel accomodation,
  }) = _HotelReservationModel;

  factory HotelReservationModel.fromJson(Map<String, dynamic> json) =>
      _$HotelReservationModelFromJson(json);

  factory HotelReservationModel.empty() => const HotelReservationModel(
    id: 0,
    user: UserModel(
      id: 0,
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
    reservationDate: '',
    status: '',
    participantCount: 0,
    fromDate: null,
    toDate: null,
    fromHour: null,
    toHour: null,
    totalPrice: '0',
    accomodation: AccomodationModel(
      id: 0,
      title: '',
      description: '',
      price: '0',
      street: '',
      postalCode: 0,
      city: '',
      country: '',
      location: LocationModel(type: '', coordinates: []),
      assets: [],
      equipements: [],
      type: '',
      images: [],
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

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String email,
    required String status,
    required String password,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String country,
    String? picture,
    required String role,
    required String createdAt,
    required String updatedAt,
    String? deletedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class AccomodationModel with _$AccomodationModel {
  const factory AccomodationModel({
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
    required List<ImageModel> images,
    required List<AssetModel> assets,
    required List<EquipmentModel> equipements,
    required int nbrBedroom,
    required int nbrTravelers,
    required int nbrSingleBed,
    required int nbrDoubleBed,
    required String createdAt,
    required String updatedAt,
    String? deletedAt,
  }) = _AccomodationModel;

  factory AccomodationModel.fromJson(Map<String, dynamic> json) =>
      _$AccomodationModelFromJson(json);
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

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_reservation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelReservationDto _$HotelReservationDtoFromJson(Map<String, dynamic> json) {
  return _HotelReservationDto.fromJson(json);
}

/// @nodoc
mixin _$HotelReservationDto {
  int? get id => throw _privateConstructorUsedError;
  UserDto? get user => throw _privateConstructorUsedError;
  String? get reservationDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get participantCount => throw _privateConstructorUsedError;
  String? get fromDate => throw _privateConstructorUsedError;
  String? get toDate => throw _privateConstructorUsedError;
  String? get fromHour => throw _privateConstructorUsedError;
  String? get toHour => throw _privateConstructorUsedError;
  String? get totalPrice => throw _privateConstructorUsedError;
  String? get reservationTime => throw _privateConstructorUsedError;
  String? get typeReservation => throw _privateConstructorUsedError;
  AccomodationDto? get accomodation => throw _privateConstructorUsedError;

  /// Serializes this HotelReservationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelReservationDtoCopyWith<HotelReservationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelReservationDtoCopyWith<$Res> {
  factory $HotelReservationDtoCopyWith(
          HotelReservationDto value, $Res Function(HotelReservationDto) then) =
      _$HotelReservationDtoCopyWithImpl<$Res, HotelReservationDto>;
  @useResult
  $Res call(
      {int? id,
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
      AccomodationDto? accomodation});

  $UserDtoCopyWith<$Res>? get user;
  $AccomodationDtoCopyWith<$Res>? get accomodation;
}

/// @nodoc
class _$HotelReservationDtoCopyWithImpl<$Res, $Val extends HotelReservationDto>
    implements $HotelReservationDtoCopyWith<$Res> {
  _$HotelReservationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? reservationDate = freezed,
    Object? status = freezed,
    Object? participantCount = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? fromHour = freezed,
    Object? toHour = freezed,
    Object? totalPrice = freezed,
    Object? reservationTime = freezed,
    Object? typeReservation = freezed,
    Object? accomodation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      reservationDate: freezed == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      participantCount: freezed == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromHour: freezed == fromHour
          ? _value.fromHour
          : fromHour // ignore: cast_nullable_to_non_nullable
              as String?,
      toHour: freezed == toHour
          ? _value.toHour
          : toHour // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      reservationTime: freezed == reservationTime
          ? _value.reservationTime
          : reservationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      typeReservation: freezed == typeReservation
          ? _value.typeReservation
          : typeReservation // ignore: cast_nullable_to_non_nullable
              as String?,
      accomodation: freezed == accomodation
          ? _value.accomodation
          : accomodation // ignore: cast_nullable_to_non_nullable
              as AccomodationDto?,
    ) as $Val);
  }

  /// Create a copy of HotelReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of HotelReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccomodationDtoCopyWith<$Res>? get accomodation {
    if (_value.accomodation == null) {
      return null;
    }

    return $AccomodationDtoCopyWith<$Res>(_value.accomodation!, (value) {
      return _then(_value.copyWith(accomodation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelReservationDtoImplCopyWith<$Res>
    implements $HotelReservationDtoCopyWith<$Res> {
  factory _$$HotelReservationDtoImplCopyWith(_$HotelReservationDtoImpl value,
          $Res Function(_$HotelReservationDtoImpl) then) =
      __$$HotelReservationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      AccomodationDto? accomodation});

  @override
  $UserDtoCopyWith<$Res>? get user;
  @override
  $AccomodationDtoCopyWith<$Res>? get accomodation;
}

/// @nodoc
class __$$HotelReservationDtoImplCopyWithImpl<$Res>
    extends _$HotelReservationDtoCopyWithImpl<$Res, _$HotelReservationDtoImpl>
    implements _$$HotelReservationDtoImplCopyWith<$Res> {
  __$$HotelReservationDtoImplCopyWithImpl(_$HotelReservationDtoImpl _value,
      $Res Function(_$HotelReservationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotelReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? reservationDate = freezed,
    Object? status = freezed,
    Object? participantCount = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? fromHour = freezed,
    Object? toHour = freezed,
    Object? totalPrice = freezed,
    Object? reservationTime = freezed,
    Object? typeReservation = freezed,
    Object? accomodation = freezed,
  }) {
    return _then(_$HotelReservationDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      reservationDate: freezed == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      participantCount: freezed == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromHour: freezed == fromHour
          ? _value.fromHour
          : fromHour // ignore: cast_nullable_to_non_nullable
              as String?,
      toHour: freezed == toHour
          ? _value.toHour
          : toHour // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      reservationTime: freezed == reservationTime
          ? _value.reservationTime
          : reservationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      typeReservation: freezed == typeReservation
          ? _value.typeReservation
          : typeReservation // ignore: cast_nullable_to_non_nullable
              as String?,
      accomodation: freezed == accomodation
          ? _value.accomodation
          : accomodation // ignore: cast_nullable_to_non_nullable
              as AccomodationDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelReservationDtoImpl extends _HotelReservationDto {
  const _$HotelReservationDtoImpl(
      {this.id,
      this.user,
      this.reservationDate,
      this.status,
      this.participantCount,
      this.fromDate,
      this.toDate,
      this.fromHour,
      this.toHour,
      this.totalPrice,
      this.reservationTime,
      this.typeReservation,
      this.accomodation})
      : super._();

  factory _$HotelReservationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelReservationDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final UserDto? user;
  @override
  final String? reservationDate;
  @override
  final String? status;
  @override
  final int? participantCount;
  @override
  final String? fromDate;
  @override
  final String? toDate;
  @override
  final String? fromHour;
  @override
  final String? toHour;
  @override
  final String? totalPrice;
  @override
  final String? reservationTime;
  @override
  final String? typeReservation;
  @override
  final AccomodationDto? accomodation;

  @override
  String toString() {
    return 'HotelReservationDto(id: $id, user: $user, reservationDate: $reservationDate, status: $status, participantCount: $participantCount, fromDate: $fromDate, toDate: $toDate, fromHour: $fromHour, toHour: $toHour, totalPrice: $totalPrice, reservationTime: $reservationTime, typeReservation: $typeReservation, accomodation: $accomodation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelReservationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.participantCount, participantCount) ||
                other.participantCount == participantCount) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.fromHour, fromHour) ||
                other.fromHour == fromHour) &&
            (identical(other.toHour, toHour) || other.toHour == toHour) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.reservationTime, reservationTime) ||
                other.reservationTime == reservationTime) &&
            (identical(other.typeReservation, typeReservation) ||
                other.typeReservation == typeReservation) &&
            (identical(other.accomodation, accomodation) ||
                other.accomodation == accomodation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      reservationDate,
      status,
      participantCount,
      fromDate,
      toDate,
      fromHour,
      toHour,
      totalPrice,
      reservationTime,
      typeReservation,
      accomodation);

  /// Create a copy of HotelReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelReservationDtoImplCopyWith<_$HotelReservationDtoImpl> get copyWith =>
      __$$HotelReservationDtoImplCopyWithImpl<_$HotelReservationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelReservationDtoImplToJson(
      this,
    );
  }
}

abstract class _HotelReservationDto extends HotelReservationDto {
  const factory _HotelReservationDto(
      {final int? id,
      final UserDto? user,
      final String? reservationDate,
      final String? status,
      final int? participantCount,
      final String? fromDate,
      final String? toDate,
      final String? fromHour,
      final String? toHour,
      final String? totalPrice,
      final String? reservationTime,
      final String? typeReservation,
      final AccomodationDto? accomodation}) = _$HotelReservationDtoImpl;
  const _HotelReservationDto._() : super._();

  factory _HotelReservationDto.fromJson(Map<String, dynamic> json) =
      _$HotelReservationDtoImpl.fromJson;

  @override
  int? get id;
  @override
  UserDto? get user;
  @override
  String? get reservationDate;
  @override
  String? get status;
  @override
  int? get participantCount;
  @override
  String? get fromDate;
  @override
  String? get toDate;
  @override
  String? get fromHour;
  @override
  String? get toHour;
  @override
  String? get totalPrice;
  @override
  String? get reservationTime;
  @override
  String? get typeReservation;
  @override
  AccomodationDto? get accomodation;

  /// Create a copy of HotelReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelReservationDtoImplCopyWith<_$HotelReservationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {int? id,
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
      String? deletedAt});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? status = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthDate = freezed,
    Object? country = freezed,
    Object? picture = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      String? deletedAt});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? status = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthDate = freezed,
    Object? country = freezed,
    Object? picture = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$UserDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl extends _UserDto {
  const _$UserDtoImpl(
      {this.id,
      this.email,
      this.status,
      this.password,
      this.firstName,
      this.lastName,
      this.birthDate,
      this.country,
      this.picture,
      this.role,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? status;
  @override
  final String? password;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? birthDate;
  @override
  final String? country;
  @override
  final String? picture;
  @override
  final String? role;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'UserDto(id: $id, email: $email, status: $status, password: $password, firstName: $firstName, lastName: $lastName, birthDate: $birthDate, country: $country, picture: $picture, role: $role, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      status,
      password,
      firstName,
      lastName,
      birthDate,
      country,
      picture,
      role,
      createdAt,
      updatedAt,
      deletedAt);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {final int? id,
      final String? email,
      final String? status,
      final String? password,
      final String? firstName,
      final String? lastName,
      final String? birthDate,
      final String? country,
      final String? picture,
      final String? role,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$UserDtoImpl;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get status;
  @override
  String? get password;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get birthDate;
  @override
  String? get country;
  @override
  String? get picture;
  @override
  String? get role;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccomodationDto _$AccomodationDtoFromJson(Map<String, dynamic> json) {
  return _AccomodationDto.fromJson(json);
}

/// @nodoc
mixin _$AccomodationDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  int? get postalCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  LocationDto? get location => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;
  List<AssetDto>? get assets => throw _privateConstructorUsedError;
  List<EquipmentDto>? get equipements => throw _privateConstructorUsedError;
  int? get nbrBedroom => throw _privateConstructorUsedError;
  int? get nbrTravelers => throw _privateConstructorUsedError;
  int? get nbrSingleBed => throw _privateConstructorUsedError;
  int? get nbrDoubleBed => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this AccomodationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccomodationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccomodationDtoCopyWith<AccomodationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccomodationDtoCopyWith<$Res> {
  factory $AccomodationDtoCopyWith(
          AccomodationDto value, $Res Function(AccomodationDto) then) =
      _$AccomodationDtoCopyWithImpl<$Res, AccomodationDto>;
  @useResult
  $Res call(
      {int? id,
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
      String? deletedAt});

  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$AccomodationDtoCopyWithImpl<$Res, $Val extends AccomodationDto>
    implements $AccomodationDtoCopyWith<$Res> {
  _$AccomodationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccomodationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? street = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? location = freezed,
    Object? type = freezed,
    Object? images = freezed,
    Object? assets = freezed,
    Object? equipements = freezed,
    Object? nbrBedroom = freezed,
    Object? nbrTravelers = freezed,
    Object? nbrSingleBed = freezed,
    Object? nbrDoubleBed = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetDto>?,
      equipements: freezed == equipements
          ? _value.equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentDto>?,
      nbrBedroom: freezed == nbrBedroom
          ? _value.nbrBedroom
          : nbrBedroom // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrTravelers: freezed == nbrTravelers
          ? _value.nbrTravelers
          : nbrTravelers // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrSingleBed: freezed == nbrSingleBed
          ? _value.nbrSingleBed
          : nbrSingleBed // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrDoubleBed: freezed == nbrDoubleBed
          ? _value.nbrDoubleBed
          : nbrDoubleBed // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AccomodationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationDtoCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccomodationDtoImplCopyWith<$Res>
    implements $AccomodationDtoCopyWith<$Res> {
  factory _$$AccomodationDtoImplCopyWith(_$AccomodationDtoImpl value,
          $Res Function(_$AccomodationDtoImpl) then) =
      __$$AccomodationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      String? deletedAt});

  @override
  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$AccomodationDtoImplCopyWithImpl<$Res>
    extends _$AccomodationDtoCopyWithImpl<$Res, _$AccomodationDtoImpl>
    implements _$$AccomodationDtoImplCopyWith<$Res> {
  __$$AccomodationDtoImplCopyWithImpl(
      _$AccomodationDtoImpl _value, $Res Function(_$AccomodationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccomodationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? street = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? location = freezed,
    Object? type = freezed,
    Object? images = freezed,
    Object? assets = freezed,
    Object? equipements = freezed,
    Object? nbrBedroom = freezed,
    Object? nbrTravelers = freezed,
    Object? nbrSingleBed = freezed,
    Object? nbrDoubleBed = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AccomodationDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      assets: freezed == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetDto>?,
      equipements: freezed == equipements
          ? _value._equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentDto>?,
      nbrBedroom: freezed == nbrBedroom
          ? _value.nbrBedroom
          : nbrBedroom // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrTravelers: freezed == nbrTravelers
          ? _value.nbrTravelers
          : nbrTravelers // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrSingleBed: freezed == nbrSingleBed
          ? _value.nbrSingleBed
          : nbrSingleBed // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrDoubleBed: freezed == nbrDoubleBed
          ? _value.nbrDoubleBed
          : nbrDoubleBed // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccomodationDtoImpl extends _AccomodationDto {
  const _$AccomodationDtoImpl(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.street,
      this.postalCode,
      this.city,
      this.country,
      this.location,
      this.type,
      final List<ImageModel>? images,
      final List<AssetDto>? assets,
      final List<EquipmentDto>? equipements,
      this.nbrBedroom,
      this.nbrTravelers,
      this.nbrSingleBed,
      this.nbrDoubleBed,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : _images = images,
        _assets = assets,
        _equipements = equipements,
        super._();

  factory _$AccomodationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccomodationDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final String? street;
  @override
  final int? postalCode;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final LocationDto? location;
  @override
  final String? type;
  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AssetDto>? _assets;
  @override
  List<AssetDto>? get assets {
    final value = _assets;
    if (value == null) return null;
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EquipmentDto>? _equipements;
  @override
  List<EquipmentDto>? get equipements {
    final value = _equipements;
    if (value == null) return null;
    if (_equipements is EqualUnmodifiableListView) return _equipements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? nbrBedroom;
  @override
  final int? nbrTravelers;
  @override
  final int? nbrSingleBed;
  @override
  final int? nbrDoubleBed;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'AccomodationDto(id: $id, title: $title, description: $description, price: $price, street: $street, postalCode: $postalCode, city: $city, country: $country, location: $location, type: $type, images: $images, assets: $assets, equipements: $equipements, nbrBedroom: $nbrBedroom, nbrTravelers: $nbrTravelers, nbrSingleBed: $nbrSingleBed, nbrDoubleBed: $nbrDoubleBed, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccomodationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality()
                .equals(other._equipements, _equipements) &&
            (identical(other.nbrBedroom, nbrBedroom) ||
                other.nbrBedroom == nbrBedroom) &&
            (identical(other.nbrTravelers, nbrTravelers) ||
                other.nbrTravelers == nbrTravelers) &&
            (identical(other.nbrSingleBed, nbrSingleBed) ||
                other.nbrSingleBed == nbrSingleBed) &&
            (identical(other.nbrDoubleBed, nbrDoubleBed) ||
                other.nbrDoubleBed == nbrDoubleBed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        price,
        street,
        postalCode,
        city,
        country,
        location,
        type,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_assets),
        const DeepCollectionEquality().hash(_equipements),
        nbrBedroom,
        nbrTravelers,
        nbrSingleBed,
        nbrDoubleBed,
        createdAt,
        updatedAt,
        deletedAt
      ]);

  /// Create a copy of AccomodationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccomodationDtoImplCopyWith<_$AccomodationDtoImpl> get copyWith =>
      __$$AccomodationDtoImplCopyWithImpl<_$AccomodationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccomodationDtoImplToJson(
      this,
    );
  }
}

abstract class _AccomodationDto extends AccomodationDto {
  const factory _AccomodationDto(
      {final int? id,
      final String? title,
      final String? description,
      final String? price,
      final String? street,
      final int? postalCode,
      final String? city,
      final String? country,
      final LocationDto? location,
      final String? type,
      final List<ImageModel>? images,
      final List<AssetDto>? assets,
      final List<EquipmentDto>? equipements,
      final int? nbrBedroom,
      final int? nbrTravelers,
      final int? nbrSingleBed,
      final int? nbrDoubleBed,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$AccomodationDtoImpl;
  const _AccomodationDto._() : super._();

  factory _AccomodationDto.fromJson(Map<String, dynamic> json) =
      _$AccomodationDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get price;
  @override
  String? get street;
  @override
  int? get postalCode;
  @override
  String? get city;
  @override
  String? get country;
  @override
  LocationDto? get location;
  @override
  String? get type;
  @override
  List<ImageModel>? get images;
  @override
  List<AssetDto>? get assets;
  @override
  List<EquipmentDto>? get equipements;
  @override
  int? get nbrBedroom;
  @override
  int? get nbrTravelers;
  @override
  int? get nbrSingleBed;
  @override
  int? get nbrDoubleBed;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of AccomodationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccomodationDtoImplCopyWith<_$AccomodationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) {
  return _LocationDto.fromJson(json);
}

/// @nodoc
mixin _$LocationDto {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;

  /// Serializes this LocationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDtoCopyWith<LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(
          LocationDto value, $Res Function(LocationDto) then) =
      _$LocationDtoCopyWithImpl<$Res, LocationDto>;
  @useResult
  $Res call({String? type, List<double>? coordinates});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res, $Val extends LocationDto>
    implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDtoImplCopyWith<$Res>
    implements $LocationDtoCopyWith<$Res> {
  factory _$$LocationDtoImplCopyWith(
          _$LocationDtoImpl value, $Res Function(_$LocationDtoImpl) then) =
      __$$LocationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, List<double>? coordinates});
}

/// @nodoc
class __$$LocationDtoImplCopyWithImpl<$Res>
    extends _$LocationDtoCopyWithImpl<$Res, _$LocationDtoImpl>
    implements _$$LocationDtoImplCopyWith<$Res> {
  __$$LocationDtoImplCopyWithImpl(
      _$LocationDtoImpl _value, $Res Function(_$LocationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$LocationDtoImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDtoImpl extends _LocationDto {
  const _$LocationDtoImpl({this.type, final List<double>? coordinates})
      : _coordinates = coordinates,
        super._();

  factory _$LocationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDtoImplFromJson(json);

  @override
  final String? type;
  final List<double>? _coordinates;
  @override
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationDto(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  /// Create a copy of LocationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDtoImplCopyWith<_$LocationDtoImpl> get copyWith =>
      __$$LocationDtoImplCopyWithImpl<_$LocationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDtoImplToJson(
      this,
    );
  }
}

abstract class _LocationDto extends LocationDto {
  const factory _LocationDto(
      {final String? type,
      final List<double>? coordinates}) = _$LocationDtoImpl;
  const _LocationDto._() : super._();

  factory _LocationDto.fromJson(Map<String, dynamic> json) =
      _$LocationDtoImpl.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;

  /// Create a copy of LocationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDtoImplCopyWith<_$LocationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

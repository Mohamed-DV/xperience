// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_reservation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelReservationModel _$HotelReservationModelFromJson(
    Map<String, dynamic> json) {
  return _HotelReservationModel.fromJson(json);
}

/// @nodoc
mixin _$HotelReservationModel {
  int get id => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  String get reservationDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get participantCount => throw _privateConstructorUsedError;
  String? get fromDate => throw _privateConstructorUsedError;
  String? get toDate => throw _privateConstructorUsedError;
  String? get fromHour => throw _privateConstructorUsedError;
  String? get toHour => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;
  AccomodationModel get accomodation => throw _privateConstructorUsedError;

  /// Serializes this HotelReservationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelReservationModelCopyWith<HotelReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelReservationModelCopyWith<$Res> {
  factory $HotelReservationModelCopyWith(HotelReservationModel value,
          $Res Function(HotelReservationModel) then) =
      _$HotelReservationModelCopyWithImpl<$Res, HotelReservationModel>;
  @useResult
  $Res call(
      {int id,
      UserModel user,
      String reservationDate,
      String status,
      int participantCount,
      String? fromDate,
      String? toDate,
      String? fromHour,
      String? toHour,
      String totalPrice,
      AccomodationModel accomodation});

  $UserModelCopyWith<$Res> get user;
  $AccomodationModelCopyWith<$Res> get accomodation;
}

/// @nodoc
class _$HotelReservationModelCopyWithImpl<$Res,
        $Val extends HotelReservationModel>
    implements $HotelReservationModelCopyWith<$Res> {
  _$HotelReservationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? reservationDate = null,
    Object? status = null,
    Object? participantCount = null,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? fromHour = freezed,
    Object? toHour = freezed,
    Object? totalPrice = null,
    Object? accomodation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      reservationDate: null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      participantCount: null == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      accomodation: null == accomodation
          ? _value.accomodation
          : accomodation // ignore: cast_nullable_to_non_nullable
              as AccomodationModel,
    ) as $Val);
  }

  /// Create a copy of HotelReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of HotelReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccomodationModelCopyWith<$Res> get accomodation {
    return $AccomodationModelCopyWith<$Res>(_value.accomodation, (value) {
      return _then(_value.copyWith(accomodation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelReservationModelImplCopyWith<$Res>
    implements $HotelReservationModelCopyWith<$Res> {
  factory _$$HotelReservationModelImplCopyWith(
          _$HotelReservationModelImpl value,
          $Res Function(_$HotelReservationModelImpl) then) =
      __$$HotelReservationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      UserModel user,
      String reservationDate,
      String status,
      int participantCount,
      String? fromDate,
      String? toDate,
      String? fromHour,
      String? toHour,
      String totalPrice,
      AccomodationModel accomodation});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $AccomodationModelCopyWith<$Res> get accomodation;
}

/// @nodoc
class __$$HotelReservationModelImplCopyWithImpl<$Res>
    extends _$HotelReservationModelCopyWithImpl<$Res,
        _$HotelReservationModelImpl>
    implements _$$HotelReservationModelImplCopyWith<$Res> {
  __$$HotelReservationModelImplCopyWithImpl(_$HotelReservationModelImpl _value,
      $Res Function(_$HotelReservationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotelReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? reservationDate = null,
    Object? status = null,
    Object? participantCount = null,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? fromHour = freezed,
    Object? toHour = freezed,
    Object? totalPrice = null,
    Object? accomodation = null,
  }) {
    return _then(_$HotelReservationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      reservationDate: null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      participantCount: null == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      accomodation: null == accomodation
          ? _value.accomodation
          : accomodation // ignore: cast_nullable_to_non_nullable
              as AccomodationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelReservationModelImpl implements _HotelReservationModel {
  const _$HotelReservationModelImpl(
      {required this.id,
      required this.user,
      required this.reservationDate,
      required this.status,
      required this.participantCount,
      this.fromDate,
      this.toDate,
      this.fromHour,
      this.toHour,
      required this.totalPrice,
      required this.accomodation});

  factory _$HotelReservationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelReservationModelImplFromJson(json);

  @override
  final int id;
  @override
  final UserModel user;
  @override
  final String reservationDate;
  @override
  final String status;
  @override
  final int participantCount;
  @override
  final String? fromDate;
  @override
  final String? toDate;
  @override
  final String? fromHour;
  @override
  final String? toHour;
  @override
  final String totalPrice;
  @override
  final AccomodationModel accomodation;

  @override
  String toString() {
    return 'HotelReservationModel(id: $id, user: $user, reservationDate: $reservationDate, status: $status, participantCount: $participantCount, fromDate: $fromDate, toDate: $toDate, fromHour: $fromHour, toHour: $toHour, totalPrice: $totalPrice, accomodation: $accomodation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelReservationModelImpl &&
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
      accomodation);

  /// Create a copy of HotelReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelReservationModelImplCopyWith<_$HotelReservationModelImpl>
      get copyWith => __$$HotelReservationModelImplCopyWithImpl<
          _$HotelReservationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelReservationModelImplToJson(
      this,
    );
  }
}

abstract class _HotelReservationModel implements HotelReservationModel {
  const factory _HotelReservationModel(
          {required final int id,
          required final UserModel user,
          required final String reservationDate,
          required final String status,
          required final int participantCount,
          final String? fromDate,
          final String? toDate,
          final String? fromHour,
          final String? toHour,
          required final String totalPrice,
          required final AccomodationModel accomodation}) =
      _$HotelReservationModelImpl;

  factory _HotelReservationModel.fromJson(Map<String, dynamic> json) =
      _$HotelReservationModelImpl.fromJson;

  @override
  int get id;
  @override
  UserModel get user;
  @override
  String get reservationDate;
  @override
  String get status;
  @override
  int get participantCount;
  @override
  String? get fromDate;
  @override
  String? get toDate;
  @override
  String? get fromHour;
  @override
  String? get toHour;
  @override
  String get totalPrice;
  @override
  AccomodationModel get accomodation;

  /// Create a copy of HotelReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelReservationModelImplCopyWith<_$HotelReservationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String email,
      String status,
      String password,
      String firstName,
      String lastName,
      String birthDate,
      String country,
      String? picture,
      String role,
      String createdAt,
      String updatedAt,
      String? deletedAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? status = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthDate = null,
    Object? country = null,
    Object? picture = freezed,
    Object? role = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String status,
      String password,
      String firstName,
      String lastName,
      String birthDate,
      String country,
      String? picture,
      String role,
      String createdAt,
      String updatedAt,
      String? deletedAt});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? status = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthDate = null,
    Object? country = null,
    Object? picture = freezed,
    Object? role = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.email,
      required this.status,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.birthDate,
      required this.country,
      this.picture,
      required this.role,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String status;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String birthDate;
  @override
  final String country;
  @override
  final String? picture;
  @override
  final String role;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, status: $status, password: $password, firstName: $firstName, lastName: $lastName, birthDate: $birthDate, country: $country, picture: $picture, role: $role, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
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

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final int id,
      required final String email,
      required final String status,
      required final String password,
      required final String firstName,
      required final String lastName,
      required final String birthDate,
      required final String country,
      final String? picture,
      required final String role,
      required final String createdAt,
      required final String updatedAt,
      final String? deletedAt}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get status;
  @override
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get birthDate;
  @override
  String get country;
  @override
  String? get picture;
  @override
  String get role;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccomodationModel _$AccomodationModelFromJson(Map<String, dynamic> json) {
  return _AccomodationModel.fromJson(json);
}

/// @nodoc
mixin _$AccomodationModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  int get postalCode => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  List<AssetModel> get assets => throw _privateConstructorUsedError;
  List<EquipmentModel> get equipements => throw _privateConstructorUsedError;
  int get nbrBedroom => throw _privateConstructorUsedError;
  int get nbrTravelers => throw _privateConstructorUsedError;
  int get nbrSingleBed => throw _privateConstructorUsedError;
  int get nbrDoubleBed => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this AccomodationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccomodationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccomodationModelCopyWith<AccomodationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccomodationModelCopyWith<$Res> {
  factory $AccomodationModelCopyWith(
          AccomodationModel value, $Res Function(AccomodationModel) then) =
      _$AccomodationModelCopyWithImpl<$Res, AccomodationModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String price,
      String street,
      int postalCode,
      String city,
      String country,
      LocationModel location,
      String type,
      List<ImageModel> images,
      List<AssetModel> assets,
      List<EquipmentModel> equipements,
      int nbrBedroom,
      int nbrTravelers,
      int nbrSingleBed,
      int nbrDoubleBed,
      String createdAt,
      String updatedAt,
      String? deletedAt});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$AccomodationModelCopyWithImpl<$Res, $Val extends AccomodationModel>
    implements $AccomodationModelCopyWith<$Res> {
  _$AccomodationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccomodationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? street = null,
    Object? postalCode = null,
    Object? city = null,
    Object? country = null,
    Object? location = null,
    Object? type = null,
    Object? images = null,
    Object? assets = null,
    Object? equipements = null,
    Object? nbrBedroom = null,
    Object? nbrTravelers = null,
    Object? nbrSingleBed = null,
    Object? nbrDoubleBed = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      assets: null == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetModel>,
      equipements: null == equipements
          ? _value.equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      nbrBedroom: null == nbrBedroom
          ? _value.nbrBedroom
          : nbrBedroom // ignore: cast_nullable_to_non_nullable
              as int,
      nbrTravelers: null == nbrTravelers
          ? _value.nbrTravelers
          : nbrTravelers // ignore: cast_nullable_to_non_nullable
              as int,
      nbrSingleBed: null == nbrSingleBed
          ? _value.nbrSingleBed
          : nbrSingleBed // ignore: cast_nullable_to_non_nullable
              as int,
      nbrDoubleBed: null == nbrDoubleBed
          ? _value.nbrDoubleBed
          : nbrDoubleBed // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AccomodationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccomodationModelImplCopyWith<$Res>
    implements $AccomodationModelCopyWith<$Res> {
  factory _$$AccomodationModelImplCopyWith(_$AccomodationModelImpl value,
          $Res Function(_$AccomodationModelImpl) then) =
      __$$AccomodationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String price,
      String street,
      int postalCode,
      String city,
      String country,
      LocationModel location,
      String type,
      List<ImageModel> images,
      List<AssetModel> assets,
      List<EquipmentModel> equipements,
      int nbrBedroom,
      int nbrTravelers,
      int nbrSingleBed,
      int nbrDoubleBed,
      String createdAt,
      String updatedAt,
      String? deletedAt});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$AccomodationModelImplCopyWithImpl<$Res>
    extends _$AccomodationModelCopyWithImpl<$Res, _$AccomodationModelImpl>
    implements _$$AccomodationModelImplCopyWith<$Res> {
  __$$AccomodationModelImplCopyWithImpl(_$AccomodationModelImpl _value,
      $Res Function(_$AccomodationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccomodationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? street = null,
    Object? postalCode = null,
    Object? city = null,
    Object? country = null,
    Object? location = null,
    Object? type = null,
    Object? images = null,
    Object? assets = null,
    Object? equipements = null,
    Object? nbrBedroom = null,
    Object? nbrTravelers = null,
    Object? nbrSingleBed = null,
    Object? nbrDoubleBed = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AccomodationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      assets: null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetModel>,
      equipements: null == equipements
          ? _value._equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      nbrBedroom: null == nbrBedroom
          ? _value.nbrBedroom
          : nbrBedroom // ignore: cast_nullable_to_non_nullable
              as int,
      nbrTravelers: null == nbrTravelers
          ? _value.nbrTravelers
          : nbrTravelers // ignore: cast_nullable_to_non_nullable
              as int,
      nbrSingleBed: null == nbrSingleBed
          ? _value.nbrSingleBed
          : nbrSingleBed // ignore: cast_nullable_to_non_nullable
              as int,
      nbrDoubleBed: null == nbrDoubleBed
          ? _value.nbrDoubleBed
          : nbrDoubleBed // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccomodationModelImpl implements _AccomodationModel {
  const _$AccomodationModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.street,
      required this.postalCode,
      required this.city,
      required this.country,
      required this.location,
      required this.type,
      required final List<ImageModel> images,
      required final List<AssetModel> assets,
      required final List<EquipmentModel> equipements,
      required this.nbrBedroom,
      required this.nbrTravelers,
      required this.nbrSingleBed,
      required this.nbrDoubleBed,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt})
      : _images = images,
        _assets = assets,
        _equipements = equipements;

  factory _$AccomodationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccomodationModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String price;
  @override
  final String street;
  @override
  final int postalCode;
  @override
  final String city;
  @override
  final String country;
  @override
  final LocationModel location;
  @override
  final String type;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<AssetModel> _assets;
  @override
  List<AssetModel> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  final List<EquipmentModel> _equipements;
  @override
  List<EquipmentModel> get equipements {
    if (_equipements is EqualUnmodifiableListView) return _equipements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipements);
  }

  @override
  final int nbrBedroom;
  @override
  final int nbrTravelers;
  @override
  final int nbrSingleBed;
  @override
  final int nbrDoubleBed;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'AccomodationModel(id: $id, title: $title, description: $description, price: $price, street: $street, postalCode: $postalCode, city: $city, country: $country, location: $location, type: $type, images: $images, assets: $assets, equipements: $equipements, nbrBedroom: $nbrBedroom, nbrTravelers: $nbrTravelers, nbrSingleBed: $nbrSingleBed, nbrDoubleBed: $nbrDoubleBed, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccomodationModelImpl &&
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

  /// Create a copy of AccomodationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccomodationModelImplCopyWith<_$AccomodationModelImpl> get copyWith =>
      __$$AccomodationModelImplCopyWithImpl<_$AccomodationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccomodationModelImplToJson(
      this,
    );
  }
}

abstract class _AccomodationModel implements AccomodationModel {
  const factory _AccomodationModel(
      {required final int id,
      required final String title,
      required final String description,
      required final String price,
      required final String street,
      required final int postalCode,
      required final String city,
      required final String country,
      required final LocationModel location,
      required final String type,
      required final List<ImageModel> images,
      required final List<AssetModel> assets,
      required final List<EquipmentModel> equipements,
      required final int nbrBedroom,
      required final int nbrTravelers,
      required final int nbrSingleBed,
      required final int nbrDoubleBed,
      required final String createdAt,
      required final String updatedAt,
      final String? deletedAt}) = _$AccomodationModelImpl;

  factory _AccomodationModel.fromJson(Map<String, dynamic> json) =
      _$AccomodationModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get price;
  @override
  String get street;
  @override
  int get postalCode;
  @override
  String get city;
  @override
  String get country;
  @override
  LocationModel get location;
  @override
  String get type;
  @override
  List<ImageModel> get images;
  @override
  List<AssetModel> get assets;
  @override
  List<EquipmentModel> get equipements;
  @override
  int get nbrBedroom;
  @override
  int get nbrTravelers;
  @override
  int get nbrSingleBed;
  @override
  int get nbrDoubleBed;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of AccomodationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccomodationModelImplCopyWith<_$AccomodationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$LocationModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'LocationModel(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {required final String type,
      required final List<double> coordinates}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

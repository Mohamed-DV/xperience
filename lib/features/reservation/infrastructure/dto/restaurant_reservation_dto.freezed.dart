// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_reservation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestaurantReservationDto _$RestaurantReservationDtoFromJson(
    Map<String, dynamic> json) {
  return _RestaurantReservationDto.fromJson(json);
}

/// @nodoc
mixin _$RestaurantReservationDto {
  int? get id => throw _privateConstructorUsedError;
  String? get reservationDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get participantCount => throw _privateConstructorUsedError;
  String? get totalPrice => throw _privateConstructorUsedError;
  String? get reservationTime => throw _privateConstructorUsedError;
  String? get typeReservation => throw _privateConstructorUsedError;
  DetailsRestaurantDto get restaurant => throw _privateConstructorUsedError;

  /// Serializes this RestaurantReservationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestaurantReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurantReservationDtoCopyWith<RestaurantReservationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantReservationDtoCopyWith<$Res> {
  factory $RestaurantReservationDtoCopyWith(RestaurantReservationDto value,
          $Res Function(RestaurantReservationDto) then) =
      _$RestaurantReservationDtoCopyWithImpl<$Res, RestaurantReservationDto>;
  @useResult
  $Res call(
      {int? id,
      String? reservationDate,
      String? status,
      int? participantCount,
      String? totalPrice,
      String? reservationTime,
      String? typeReservation,
      DetailsRestaurantDto restaurant});

  $DetailsRestaurantDtoCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$RestaurantReservationDtoCopyWithImpl<$Res,
        $Val extends RestaurantReservationDto>
    implements $RestaurantReservationDtoCopyWith<$Res> {
  _$RestaurantReservationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestaurantReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reservationDate = freezed,
    Object? status = freezed,
    Object? participantCount = freezed,
    Object? totalPrice = freezed,
    Object? reservationTime = freezed,
    Object? typeReservation = freezed,
    Object? restaurant = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as DetailsRestaurantDto,
    ) as $Val);
  }

  /// Create a copy of RestaurantReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsRestaurantDtoCopyWith<$Res> get restaurant {
    return $DetailsRestaurantDtoCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantReservationDtoImplCopyWith<$Res>
    implements $RestaurantReservationDtoCopyWith<$Res> {
  factory _$$RestaurantReservationDtoImplCopyWith(
          _$RestaurantReservationDtoImpl value,
          $Res Function(_$RestaurantReservationDtoImpl) then) =
      __$$RestaurantReservationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? reservationDate,
      String? status,
      int? participantCount,
      String? totalPrice,
      String? reservationTime,
      String? typeReservation,
      DetailsRestaurantDto restaurant});

  @override
  $DetailsRestaurantDtoCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$RestaurantReservationDtoImplCopyWithImpl<$Res>
    extends _$RestaurantReservationDtoCopyWithImpl<$Res,
        _$RestaurantReservationDtoImpl>
    implements _$$RestaurantReservationDtoImplCopyWith<$Res> {
  __$$RestaurantReservationDtoImplCopyWithImpl(
      _$RestaurantReservationDtoImpl _value,
      $Res Function(_$RestaurantReservationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestaurantReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reservationDate = freezed,
    Object? status = freezed,
    Object? participantCount = freezed,
    Object? totalPrice = freezed,
    Object? reservationTime = freezed,
    Object? typeReservation = freezed,
    Object? restaurant = null,
  }) {
    return _then(_$RestaurantReservationDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as DetailsRestaurantDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantReservationDtoImpl extends _RestaurantReservationDto {
  const _$RestaurantReservationDtoImpl(
      {this.id,
      this.reservationDate,
      this.status,
      this.participantCount,
      this.totalPrice,
      this.reservationTime,
      this.typeReservation,
      required this.restaurant})
      : super._();

  factory _$RestaurantReservationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantReservationDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? reservationDate;
  @override
  final String? status;
  @override
  final int? participantCount;
  @override
  final String? totalPrice;
  @override
  final String? reservationTime;
  @override
  final String? typeReservation;
  @override
  final DetailsRestaurantDto restaurant;

  @override
  String toString() {
    return 'RestaurantReservationDto(id: $id, reservationDate: $reservationDate, status: $status, participantCount: $participantCount, totalPrice: $totalPrice, reservationTime: $reservationTime, typeReservation: $typeReservation, restaurant: $restaurant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantReservationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.participantCount, participantCount) ||
                other.participantCount == participantCount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.reservationTime, reservationTime) ||
                other.reservationTime == reservationTime) &&
            (identical(other.typeReservation, typeReservation) ||
                other.typeReservation == typeReservation) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      reservationDate,
      status,
      participantCount,
      totalPrice,
      reservationTime,
      typeReservation,
      restaurant);

  /// Create a copy of RestaurantReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantReservationDtoImplCopyWith<_$RestaurantReservationDtoImpl>
      get copyWith => __$$RestaurantReservationDtoImplCopyWithImpl<
          _$RestaurantReservationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantReservationDtoImplToJson(
      this,
    );
  }
}

abstract class _RestaurantReservationDto extends RestaurantReservationDto {
  const factory _RestaurantReservationDto(
          {final int? id,
          final String? reservationDate,
          final String? status,
          final int? participantCount,
          final String? totalPrice,
          final String? reservationTime,
          final String? typeReservation,
          required final DetailsRestaurantDto restaurant}) =
      _$RestaurantReservationDtoImpl;
  const _RestaurantReservationDto._() : super._();

  factory _RestaurantReservationDto.fromJson(Map<String, dynamic> json) =
      _$RestaurantReservationDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get reservationDate;
  @override
  String? get status;
  @override
  int? get participantCount;
  @override
  String? get totalPrice;
  @override
  String? get reservationTime;
  @override
  String? get typeReservation;
  @override
  DetailsRestaurantDto get restaurant;

  /// Create a copy of RestaurantReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantReservationDtoImplCopyWith<_$RestaurantReservationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

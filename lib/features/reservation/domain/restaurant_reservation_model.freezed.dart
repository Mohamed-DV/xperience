// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_reservation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestaurantReservationModel _$RestaurantReservationModelFromJson(
    Map<String, dynamic> json) {
  return _RestaurantReservationModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantReservationModel {
  int get id => throw _privateConstructorUsedError;
  String get reservationDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get participantCount => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;
  DetailsRestaurantDto get restaurant => throw _privateConstructorUsedError;
  String get reservationTime => throw _privateConstructorUsedError;
  String get typeReservation => throw _privateConstructorUsedError;

  /// Serializes this RestaurantReservationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestaurantReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurantReservationModelCopyWith<RestaurantReservationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantReservationModelCopyWith<$Res> {
  factory $RestaurantReservationModelCopyWith(RestaurantReservationModel value,
          $Res Function(RestaurantReservationModel) then) =
      _$RestaurantReservationModelCopyWithImpl<$Res,
          RestaurantReservationModel>;
  @useResult
  $Res call(
      {int id,
      String reservationDate,
      String status,
      int participantCount,
      String totalPrice,
      DetailsRestaurantDto restaurant,
      String reservationTime,
      String typeReservation});

  $DetailsRestaurantDtoCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$RestaurantReservationModelCopyWithImpl<$Res,
        $Val extends RestaurantReservationModel>
    implements $RestaurantReservationModelCopyWith<$Res> {
  _$RestaurantReservationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestaurantReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reservationDate = null,
    Object? status = null,
    Object? participantCount = null,
    Object? totalPrice = null,
    Object? restaurant = null,
    Object? reservationTime = null,
    Object? typeReservation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as DetailsRestaurantDto,
      reservationTime: null == reservationTime
          ? _value.reservationTime
          : reservationTime // ignore: cast_nullable_to_non_nullable
              as String,
      typeReservation: null == typeReservation
          ? _value.typeReservation
          : typeReservation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RestaurantReservationModel
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
abstract class _$$RestaurantReservationModelImplCopyWith<$Res>
    implements $RestaurantReservationModelCopyWith<$Res> {
  factory _$$RestaurantReservationModelImplCopyWith(
          _$RestaurantReservationModelImpl value,
          $Res Function(_$RestaurantReservationModelImpl) then) =
      __$$RestaurantReservationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String reservationDate,
      String status,
      int participantCount,
      String totalPrice,
      DetailsRestaurantDto restaurant,
      String reservationTime,
      String typeReservation});

  @override
  $DetailsRestaurantDtoCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$RestaurantReservationModelImplCopyWithImpl<$Res>
    extends _$RestaurantReservationModelCopyWithImpl<$Res,
        _$RestaurantReservationModelImpl>
    implements _$$RestaurantReservationModelImplCopyWith<$Res> {
  __$$RestaurantReservationModelImplCopyWithImpl(
      _$RestaurantReservationModelImpl _value,
      $Res Function(_$RestaurantReservationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestaurantReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reservationDate = null,
    Object? status = null,
    Object? participantCount = null,
    Object? totalPrice = null,
    Object? restaurant = null,
    Object? reservationTime = null,
    Object? typeReservation = null,
  }) {
    return _then(_$RestaurantReservationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as DetailsRestaurantDto,
      reservationTime: null == reservationTime
          ? _value.reservationTime
          : reservationTime // ignore: cast_nullable_to_non_nullable
              as String,
      typeReservation: null == typeReservation
          ? _value.typeReservation
          : typeReservation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantReservationModelImpl implements _RestaurantReservationModel {
  const _$RestaurantReservationModelImpl(
      {required this.id,
      required this.reservationDate,
      required this.status,
      required this.participantCount,
      required this.totalPrice,
      required this.restaurant,
      required this.reservationTime,
      required this.typeReservation});

  factory _$RestaurantReservationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RestaurantReservationModelImplFromJson(json);

  @override
  final int id;
  @override
  final String reservationDate;
  @override
  final String status;
  @override
  final int participantCount;
  @override
  final String totalPrice;
  @override
  final DetailsRestaurantDto restaurant;
  @override
  final String reservationTime;
  @override
  final String typeReservation;

  @override
  String toString() {
    return 'RestaurantReservationModel(id: $id, reservationDate: $reservationDate, status: $status, participantCount: $participantCount, totalPrice: $totalPrice, restaurant: $restaurant, reservationTime: $reservationTime, typeReservation: $typeReservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantReservationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.participantCount, participantCount) ||
                other.participantCount == participantCount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.reservationTime, reservationTime) ||
                other.reservationTime == reservationTime) &&
            (identical(other.typeReservation, typeReservation) ||
                other.typeReservation == typeReservation));
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
      restaurant,
      reservationTime,
      typeReservation);

  /// Create a copy of RestaurantReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantReservationModelImplCopyWith<_$RestaurantReservationModelImpl>
      get copyWith => __$$RestaurantReservationModelImplCopyWithImpl<
          _$RestaurantReservationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantReservationModelImplToJson(
      this,
    );
  }
}

abstract class _RestaurantReservationModel
    implements RestaurantReservationModel {
  const factory _RestaurantReservationModel(
          {required final int id,
          required final String reservationDate,
          required final String status,
          required final int participantCount,
          required final String totalPrice,
          required final DetailsRestaurantDto restaurant,
          required final String reservationTime,
          required final String typeReservation}) =
      _$RestaurantReservationModelImpl;

  factory _RestaurantReservationModel.fromJson(Map<String, dynamic> json) =
      _$RestaurantReservationModelImpl.fromJson;

  @override
  int get id;
  @override
  String get reservationDate;
  @override
  String get status;
  @override
  int get participantCount;
  @override
  String get totalPrice;
  @override
  DetailsRestaurantDto get restaurant;
  @override
  String get reservationTime;
  @override
  String get typeReservation;

  /// Create a copy of RestaurantReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantReservationModelImplCopyWith<_$RestaurantReservationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

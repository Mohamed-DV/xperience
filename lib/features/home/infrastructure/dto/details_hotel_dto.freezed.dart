// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_hotel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsHotelDto _$DetailsHotelDtoFromJson(Map<String, dynamic> json) {
  return _DetailsHotelDto.fromJson(json);
}

/// @nodoc
mixin _$DetailsHotelDto {
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
  int? get nbrBedroom => throw _privateConstructorUsedError;
  int? get nbrTravelers => throw _privateConstructorUsedError;
  int? get nbrSingleBed => throw _privateConstructorUsedError;
  int? get nbrDoubleBed => throw _privateConstructorUsedError;
  List<AssetDto>? get assets => throw _privateConstructorUsedError;
  List<EquipmentDto>? get equipements => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;

  /// Serializes this DetailsHotelDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailsHotelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsHotelDtoCopyWith<DetailsHotelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsHotelDtoCopyWith<$Res> {
  factory $DetailsHotelDtoCopyWith(
          DetailsHotelDto value, $Res Function(DetailsHotelDto) then) =
      _$DetailsHotelDtoCopyWithImpl<$Res, DetailsHotelDto>;
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
      int? nbrBedroom,
      int? nbrTravelers,
      int? nbrSingleBed,
      int? nbrDoubleBed,
      List<AssetDto>? assets,
      List<EquipmentDto>? equipements,
      List<ImageModel>? images});

  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$DetailsHotelDtoCopyWithImpl<$Res, $Val extends DetailsHotelDto>
    implements $DetailsHotelDtoCopyWith<$Res> {
  _$DetailsHotelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsHotelDto
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
    Object? nbrBedroom = freezed,
    Object? nbrTravelers = freezed,
    Object? nbrSingleBed = freezed,
    Object? nbrDoubleBed = freezed,
    Object? assets = freezed,
    Object? equipements = freezed,
    Object? images = freezed,
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
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetDto>?,
      equipements: freezed == equipements
          ? _value.equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentDto>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ) as $Val);
  }

  /// Create a copy of DetailsHotelDto
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
abstract class _$$DetailsHotelDtoImplCopyWith<$Res>
    implements $DetailsHotelDtoCopyWith<$Res> {
  factory _$$DetailsHotelDtoImplCopyWith(_$DetailsHotelDtoImpl value,
          $Res Function(_$DetailsHotelDtoImpl) then) =
      __$$DetailsHotelDtoImplCopyWithImpl<$Res>;
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
      int? nbrBedroom,
      int? nbrTravelers,
      int? nbrSingleBed,
      int? nbrDoubleBed,
      List<AssetDto>? assets,
      List<EquipmentDto>? equipements,
      List<ImageModel>? images});

  @override
  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$DetailsHotelDtoImplCopyWithImpl<$Res>
    extends _$DetailsHotelDtoCopyWithImpl<$Res, _$DetailsHotelDtoImpl>
    implements _$$DetailsHotelDtoImplCopyWith<$Res> {
  __$$DetailsHotelDtoImplCopyWithImpl(
      _$DetailsHotelDtoImpl _value, $Res Function(_$DetailsHotelDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsHotelDto
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
    Object? nbrBedroom = freezed,
    Object? nbrTravelers = freezed,
    Object? nbrSingleBed = freezed,
    Object? nbrDoubleBed = freezed,
    Object? assets = freezed,
    Object? equipements = freezed,
    Object? images = freezed,
  }) {
    return _then(_$DetailsHotelDtoImpl(
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
      assets: freezed == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetDto>?,
      equipements: freezed == equipements
          ? _value._equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentDto>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsHotelDtoImpl extends _DetailsHotelDto {
  const _$DetailsHotelDtoImpl(
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
      this.nbrBedroom,
      this.nbrTravelers,
      this.nbrSingleBed,
      this.nbrDoubleBed,
      final List<AssetDto>? assets,
      final List<EquipmentDto>? equipements,
      final List<ImageModel>? images})
      : _assets = assets,
        _equipements = equipements,
        _images = images,
        super._();

  factory _$DetailsHotelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsHotelDtoImplFromJson(json);

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
  @override
  final int? nbrBedroom;
  @override
  final int? nbrTravelers;
  @override
  final int? nbrSingleBed;
  @override
  final int? nbrDoubleBed;
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

  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailsHotelDto(id: $id, title: $title, description: $description, price: $price, street: $street, postalCode: $postalCode, city: $city, country: $country, location: $location, type: $type, nbrBedroom: $nbrBedroom, nbrTravelers: $nbrTravelers, nbrSingleBed: $nbrSingleBed, nbrDoubleBed: $nbrDoubleBed, assets: $assets, equipements: $equipements, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsHotelDtoImpl &&
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
            (identical(other.nbrBedroom, nbrBedroom) ||
                other.nbrBedroom == nbrBedroom) &&
            (identical(other.nbrTravelers, nbrTravelers) ||
                other.nbrTravelers == nbrTravelers) &&
            (identical(other.nbrSingleBed, nbrSingleBed) ||
                other.nbrSingleBed == nbrSingleBed) &&
            (identical(other.nbrDoubleBed, nbrDoubleBed) ||
                other.nbrDoubleBed == nbrDoubleBed) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality()
                .equals(other._equipements, _equipements) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
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
      nbrBedroom,
      nbrTravelers,
      nbrSingleBed,
      nbrDoubleBed,
      const DeepCollectionEquality().hash(_assets),
      const DeepCollectionEquality().hash(_equipements),
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of DetailsHotelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsHotelDtoImplCopyWith<_$DetailsHotelDtoImpl> get copyWith =>
      __$$DetailsHotelDtoImplCopyWithImpl<_$DetailsHotelDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsHotelDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailsHotelDto extends DetailsHotelDto {
  const factory _DetailsHotelDto(
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
      final int? nbrBedroom,
      final int? nbrTravelers,
      final int? nbrSingleBed,
      final int? nbrDoubleBed,
      final List<AssetDto>? assets,
      final List<EquipmentDto>? equipements,
      final List<ImageModel>? images}) = _$DetailsHotelDtoImpl;
  const _DetailsHotelDto._() : super._();

  factory _DetailsHotelDto.fromJson(Map<String, dynamic> json) =
      _$DetailsHotelDtoImpl.fromJson;

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
  int? get nbrBedroom;
  @override
  int? get nbrTravelers;
  @override
  int? get nbrSingleBed;
  @override
  int? get nbrDoubleBed;
  @override
  List<AssetDto>? get assets;
  @override
  List<EquipmentDto>? get equipements;
  @override
  List<ImageModel>? get images;

  /// Create a copy of DetailsHotelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsHotelDtoImplCopyWith<_$DetailsHotelDtoImpl> get copyWith =>
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

AssetDto _$AssetDtoFromJson(Map<String, dynamic> json) {
  return _AssetDto.fromJson(json);
}

/// @nodoc
mixin _$AssetDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this AssetDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssetDtoCopyWith<AssetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetDtoCopyWith<$Res> {
  factory $AssetDtoCopyWith(AssetDto value, $Res Function(AssetDto) then) =
      _$AssetDtoCopyWithImpl<$Res, AssetDto>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class _$AssetDtoCopyWithImpl<$Res, $Val extends AssetDto>
    implements $AssetDtoCopyWith<$Res> {
  _$AssetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
abstract class _$$AssetDtoImplCopyWith<$Res>
    implements $AssetDtoCopyWith<$Res> {
  factory _$$AssetDtoImplCopyWith(
          _$AssetDtoImpl value, $Res Function(_$AssetDtoImpl) then) =
      __$$AssetDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class __$$AssetDtoImplCopyWithImpl<$Res>
    extends _$AssetDtoCopyWithImpl<$Res, _$AssetDtoImpl>
    implements _$$AssetDtoImplCopyWith<$Res> {
  __$$AssetDtoImplCopyWithImpl(
      _$AssetDtoImpl _value, $Res Function(_$AssetDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AssetDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$AssetDtoImpl extends _AssetDto {
  const _$AssetDtoImpl(
      {this.id, this.title, this.createdAt, this.updatedAt, this.deletedAt})
      : super._();

  factory _$AssetDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'AssetDto(id: $id, title: $title, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, createdAt, updatedAt, deletedAt);

  /// Create a copy of AssetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetDtoImplCopyWith<_$AssetDtoImpl> get copyWith =>
      __$$AssetDtoImplCopyWithImpl<_$AssetDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetDtoImplToJson(
      this,
    );
  }
}

abstract class _AssetDto extends AssetDto {
  const factory _AssetDto(
      {final int? id,
      final String? title,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$AssetDtoImpl;
  const _AssetDto._() : super._();

  factory _AssetDto.fromJson(Map<String, dynamic> json) =
      _$AssetDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of AssetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetDtoImplCopyWith<_$AssetDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EquipmentDto _$EquipmentDtoFromJson(Map<String, dynamic> json) {
  return _EquipmentDto.fromJson(json);
}

/// @nodoc
mixin _$EquipmentDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this EquipmentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EquipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EquipmentDtoCopyWith<EquipmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentDtoCopyWith<$Res> {
  factory $EquipmentDtoCopyWith(
          EquipmentDto value, $Res Function(EquipmentDto) then) =
      _$EquipmentDtoCopyWithImpl<$Res, EquipmentDto>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class _$EquipmentDtoCopyWithImpl<$Res, $Val extends EquipmentDto>
    implements $EquipmentDtoCopyWith<$Res> {
  _$EquipmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EquipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
abstract class _$$EquipmentDtoImplCopyWith<$Res>
    implements $EquipmentDtoCopyWith<$Res> {
  factory _$$EquipmentDtoImplCopyWith(
          _$EquipmentDtoImpl value, $Res Function(_$EquipmentDtoImpl) then) =
      __$$EquipmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class __$$EquipmentDtoImplCopyWithImpl<$Res>
    extends _$EquipmentDtoCopyWithImpl<$Res, _$EquipmentDtoImpl>
    implements _$$EquipmentDtoImplCopyWith<$Res> {
  __$$EquipmentDtoImplCopyWithImpl(
      _$EquipmentDtoImpl _value, $Res Function(_$EquipmentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EquipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$EquipmentDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$EquipmentDtoImpl extends _EquipmentDto {
  const _$EquipmentDtoImpl(
      {this.id, this.title, this.createdAt, this.updatedAt, this.deletedAt})
      : super._();

  factory _$EquipmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'EquipmentDto(id: $id, title: $title, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, createdAt, updatedAt, deletedAt);

  /// Create a copy of EquipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentDtoImplCopyWith<_$EquipmentDtoImpl> get copyWith =>
      __$$EquipmentDtoImplCopyWithImpl<_$EquipmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentDtoImplToJson(
      this,
    );
  }
}

abstract class _EquipmentDto extends EquipmentDto {
  const factory _EquipmentDto(
      {final int? id,
      final String? title,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$EquipmentDtoImpl;
  const _EquipmentDto._() : super._();

  factory _EquipmentDto.fromJson(Map<String, dynamic> json) =
      _$EquipmentDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of EquipmentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquipmentDtoImplCopyWith<_$EquipmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

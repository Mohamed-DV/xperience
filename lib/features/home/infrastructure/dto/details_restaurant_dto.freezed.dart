// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_restaurant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsRestaurantDto _$DetailsRestaurantDtoFromJson(Map<String, dynamic> json) {
  return _DetailsRestaurantDto.fromJson(json);
}

/// @nodoc
mixin _$DetailsRestaurantDto {
  int? get id => throw _privateConstructorUsedError;
  String? get etablishement => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  LocationDto? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<OpeningHourDto>? get openingHours => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;
  List<FormDto> get forms =>
      throw _privateConstructorUsedError; // characteristics is an empty array now, so type as List<String>
  List<CharacteristicsDto>? get characteristics =>
      throw _privateConstructorUsedError;

  /// Serializes this DetailsRestaurantDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailsRestaurantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsRestaurantDtoCopyWith<DetailsRestaurantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsRestaurantDtoCopyWith<$Res> {
  factory $DetailsRestaurantDtoCopyWith(DetailsRestaurantDto value,
          $Res Function(DetailsRestaurantDto) then) =
      _$DetailsRestaurantDtoCopyWithImpl<$Res, DetailsRestaurantDto>;
  @useResult
  $Res call(
      {int? id,
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
      List<FormDto> forms,
      List<CharacteristicsDto>? characteristics});

  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$DetailsRestaurantDtoCopyWithImpl<$Res,
        $Val extends DetailsRestaurantDto>
    implements $DetailsRestaurantDtoCopyWith<$Res> {
  _$DetailsRestaurantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsRestaurantDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? etablishement = freezed,
    Object? street = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? openingHours = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? images = freezed,
    Object? forms = null,
    Object? characteristics = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      etablishement: freezed == etablishement
          ? _value.etablishement
          : etablishement // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHourDto>?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<FormDto>,
      characteristics: freezed == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<CharacteristicsDto>?,
    ) as $Val);
  }

  /// Create a copy of DetailsRestaurantDto
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
abstract class _$$DetailsRestaurantDtoImplCopyWith<$Res>
    implements $DetailsRestaurantDtoCopyWith<$Res> {
  factory _$$DetailsRestaurantDtoImplCopyWith(_$DetailsRestaurantDtoImpl value,
          $Res Function(_$DetailsRestaurantDtoImpl) then) =
      __$$DetailsRestaurantDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      List<FormDto> forms,
      List<CharacteristicsDto>? characteristics});

  @override
  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$DetailsRestaurantDtoImplCopyWithImpl<$Res>
    extends _$DetailsRestaurantDtoCopyWithImpl<$Res, _$DetailsRestaurantDtoImpl>
    implements _$$DetailsRestaurantDtoImplCopyWith<$Res> {
  __$$DetailsRestaurantDtoImplCopyWithImpl(_$DetailsRestaurantDtoImpl _value,
      $Res Function(_$DetailsRestaurantDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsRestaurantDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? etablishement = freezed,
    Object? street = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? openingHours = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? images = freezed,
    Object? forms = null,
    Object? characteristics = freezed,
  }) {
    return _then(_$DetailsRestaurantDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      etablishement: freezed == etablishement
          ? _value.etablishement
          : etablishement // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHourDto>?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      forms: null == forms
          ? _value._forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<FormDto>,
      characteristics: freezed == characteristics
          ? _value._characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<CharacteristicsDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsRestaurantDtoImpl extends _DetailsRestaurantDto {
  const _$DetailsRestaurantDtoImpl(
      {this.id,
      this.etablishement,
      this.street,
      this.postalCode,
      this.city,
      this.country,
      this.location,
      this.description,
      final List<OpeningHourDto>? openingHours,
      this.email,
      this.phone,
      this.website,
      final List<ImageModel>? images,
      final List<FormDto> forms = const [],
      final List<CharacteristicsDto>? characteristics})
      : _openingHours = openingHours,
        _images = images,
        _forms = forms,
        _characteristics = characteristics,
        super._();

  factory _$DetailsRestaurantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsRestaurantDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? etablishement;
  @override
  final String? street;
  @override
  final String? postalCode;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final LocationDto? location;
  @override
  final String? description;
  final List<OpeningHourDto>? _openingHours;
  @override
  List<OpeningHourDto>? get openingHours {
    final value = _openingHours;
    if (value == null) return null;
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? website;
  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FormDto> _forms;
  @override
  @JsonKey()
  List<FormDto> get forms {
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forms);
  }

// characteristics is an empty array now, so type as List<String>
  final List<CharacteristicsDto>? _characteristics;
// characteristics is an empty array now, so type as List<String>
  @override
  List<CharacteristicsDto>? get characteristics {
    final value = _characteristics;
    if (value == null) return null;
    if (_characteristics is EqualUnmodifiableListView) return _characteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailsRestaurantDto(id: $id, etablishement: $etablishement, street: $street, postalCode: $postalCode, city: $city, country: $country, location: $location, description: $description, openingHours: $openingHours, email: $email, phone: $phone, website: $website, images: $images, forms: $forms, characteristics: $characteristics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsRestaurantDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.etablishement, etablishement) ||
                other.etablishement == etablishement) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._openingHours, _openingHours) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._forms, _forms) &&
            const DeepCollectionEquality()
                .equals(other._characteristics, _characteristics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      etablishement,
      street,
      postalCode,
      city,
      country,
      location,
      description,
      const DeepCollectionEquality().hash(_openingHours),
      email,
      phone,
      website,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_forms),
      const DeepCollectionEquality().hash(_characteristics));

  /// Create a copy of DetailsRestaurantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsRestaurantDtoImplCopyWith<_$DetailsRestaurantDtoImpl>
      get copyWith =>
          __$$DetailsRestaurantDtoImplCopyWithImpl<_$DetailsRestaurantDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsRestaurantDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailsRestaurantDto extends DetailsRestaurantDto {
  const factory _DetailsRestaurantDto(
          {final int? id,
          final String? etablishement,
          final String? street,
          final String? postalCode,
          final String? city,
          final String? country,
          final LocationDto? location,
          final String? description,
          final List<OpeningHourDto>? openingHours,
          final String? email,
          final String? phone,
          final String? website,
          final List<ImageModel>? images,
          final List<FormDto> forms,
          final List<CharacteristicsDto>? characteristics}) =
      _$DetailsRestaurantDtoImpl;
  const _DetailsRestaurantDto._() : super._();

  factory _DetailsRestaurantDto.fromJson(Map<String, dynamic> json) =
      _$DetailsRestaurantDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get etablishement;
  @override
  String? get street;
  @override
  String? get postalCode;
  @override
  String? get city;
  @override
  String? get country;
  @override
  LocationDto? get location;
  @override
  String? get description;
  @override
  List<OpeningHourDto>? get openingHours;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  List<ImageModel>? get images;
  @override
  List<FormDto>
      get forms; // characteristics is an empty array now, so type as List<String>
  @override
  List<CharacteristicsDto>? get characteristics;

  /// Create a copy of DetailsRestaurantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsRestaurantDtoImplCopyWith<_$DetailsRestaurantDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
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

OpeningHourDto _$OpeningHourDtoFromJson(Map<String, dynamic> json) {
  return _OpeningHourDto.fromJson(json);
}

/// @nodoc
mixin _$OpeningHourDto {
  String? get day => throw _privateConstructorUsedError;
  String? get open => throw _privateConstructorUsedError;
  String? get close => throw _privateConstructorUsedError;

  /// Serializes this OpeningHourDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpeningHourDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpeningHourDtoCopyWith<OpeningHourDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHourDtoCopyWith<$Res> {
  factory $OpeningHourDtoCopyWith(
          OpeningHourDto value, $Res Function(OpeningHourDto) then) =
      _$OpeningHourDtoCopyWithImpl<$Res, OpeningHourDto>;
  @useResult
  $Res call({String? day, String? open, String? close});
}

/// @nodoc
class _$OpeningHourDtoCopyWithImpl<$Res, $Val extends OpeningHourDto>
    implements $OpeningHourDtoCopyWith<$Res> {
  _$OpeningHourDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpeningHourDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String?,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpeningHourDtoImplCopyWith<$Res>
    implements $OpeningHourDtoCopyWith<$Res> {
  factory _$$OpeningHourDtoImplCopyWith(_$OpeningHourDtoImpl value,
          $Res Function(_$OpeningHourDtoImpl) then) =
      __$$OpeningHourDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? day, String? open, String? close});
}

/// @nodoc
class __$$OpeningHourDtoImplCopyWithImpl<$Res>
    extends _$OpeningHourDtoCopyWithImpl<$Res, _$OpeningHourDtoImpl>
    implements _$$OpeningHourDtoImplCopyWith<$Res> {
  __$$OpeningHourDtoImplCopyWithImpl(
      _$OpeningHourDtoImpl _value, $Res Function(_$OpeningHourDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpeningHourDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_$OpeningHourDtoImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String?,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningHourDtoImpl extends _OpeningHourDto {
  const _$OpeningHourDtoImpl({this.day, this.open, this.close}) : super._();

  factory _$OpeningHourDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHourDtoImplFromJson(json);

  @override
  final String? day;
  @override
  final String? open;
  @override
  final String? close;

  @override
  String toString() {
    return 'OpeningHourDto(day: $day, open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHourDtoImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, open, close);

  /// Create a copy of OpeningHourDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHourDtoImplCopyWith<_$OpeningHourDtoImpl> get copyWith =>
      __$$OpeningHourDtoImplCopyWithImpl<_$OpeningHourDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHourDtoImplToJson(
      this,
    );
  }
}

abstract class _OpeningHourDto extends OpeningHourDto {
  const factory _OpeningHourDto(
      {final String? day,
      final String? open,
      final String? close}) = _$OpeningHourDtoImpl;
  const _OpeningHourDto._() : super._();

  factory _OpeningHourDto.fromJson(Map<String, dynamic> json) =
      _$OpeningHourDtoImpl.fromJson;

  @override
  String? get day;
  @override
  String? get open;
  @override
  String? get close;

  /// Create a copy of OpeningHourDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpeningHourDtoImplCopyWith<_$OpeningHourDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormDto _$FormDtoFromJson(Map<String, dynamic> json) {
  return _FormDto.fromJson(json);
}

/// @nodoc
mixin _$FormDto {
  int? get id => throw _privateConstructorUsedError;
  String? get image1 => throw _privateConstructorUsedError;
  String? get image2 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get entrance => throw _privateConstructorUsedError;
  String? get dishe => throw _privateConstructorUsedError;
  String? get dessert => throw _privateConstructorUsedError;
  String? get drink => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;

  /// Serializes this FormDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormDtoCopyWith<FormDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormDtoCopyWith<$Res> {
  factory $FormDtoCopyWith(FormDto value, $Res Function(FormDto) then) =
      _$FormDtoCopyWithImpl<$Res, FormDto>;
  @useResult
  $Res call(
      {int? id,
      String? image1,
      String? image2,
      String? name,
      String? description,
      String? entrance,
      String? dishe,
      String? dessert,
      String? drink,
      String? price});
}

/// @nodoc
class _$FormDtoCopyWithImpl<$Res, $Val extends FormDto>
    implements $FormDtoCopyWith<$Res> {
  _$FormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? entrance = freezed,
    Object? dishe = freezed,
    Object? dessert = freezed,
    Object? drink = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      image2: freezed == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      entrance: freezed == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String?,
      dishe: freezed == dishe
          ? _value.dishe
          : dishe // ignore: cast_nullable_to_non_nullable
              as String?,
      dessert: freezed == dessert
          ? _value.dessert
          : dessert // ignore: cast_nullable_to_non_nullable
              as String?,
      drink: freezed == drink
          ? _value.drink
          : drink // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormDtoImplCopyWith<$Res> implements $FormDtoCopyWith<$Res> {
  factory _$$FormDtoImplCopyWith(
          _$FormDtoImpl value, $Res Function(_$FormDtoImpl) then) =
      __$$FormDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image1,
      String? image2,
      String? name,
      String? description,
      String? entrance,
      String? dishe,
      String? dessert,
      String? drink,
      String? price});
}

/// @nodoc
class __$$FormDtoImplCopyWithImpl<$Res>
    extends _$FormDtoCopyWithImpl<$Res, _$FormDtoImpl>
    implements _$$FormDtoImplCopyWith<$Res> {
  __$$FormDtoImplCopyWithImpl(
      _$FormDtoImpl _value, $Res Function(_$FormDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? entrance = freezed,
    Object? dishe = freezed,
    Object? dessert = freezed,
    Object? drink = freezed,
    Object? price = freezed,
  }) {
    return _then(_$FormDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      image2: freezed == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      entrance: freezed == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String?,
      dishe: freezed == dishe
          ? _value.dishe
          : dishe // ignore: cast_nullable_to_non_nullable
              as String?,
      dessert: freezed == dessert
          ? _value.dessert
          : dessert // ignore: cast_nullable_to_non_nullable
              as String?,
      drink: freezed == drink
          ? _value.drink
          : drink // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormDtoImpl extends _FormDto {
  const _$FormDtoImpl(
      {this.id,
      this.image1,
      this.image2,
      this.name,
      this.description,
      this.entrance,
      this.dishe,
      this.dessert,
      this.drink,
      this.price})
      : super._();

  factory _$FormDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? image1;
  @override
  final String? image2;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? entrance;
  @override
  final String? dishe;
  @override
  final String? dessert;
  @override
  final String? drink;
  @override
  final String? price;

  @override
  String toString() {
    return 'FormDto(id: $id, image1: $image1, image2: $image2, name: $name, description: $description, entrance: $entrance, dishe: $dishe, dessert: $dessert, drink: $drink, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.image2, image2) || other.image2 == image2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.entrance, entrance) ||
                other.entrance == entrance) &&
            (identical(other.dishe, dishe) || other.dishe == dishe) &&
            (identical(other.dessert, dessert) || other.dessert == dessert) &&
            (identical(other.drink, drink) || other.drink == drink) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image1, image2, name,
      description, entrance, dishe, dessert, drink, price);

  /// Create a copy of FormDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormDtoImplCopyWith<_$FormDtoImpl> get copyWith =>
      __$$FormDtoImplCopyWithImpl<_$FormDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormDtoImplToJson(
      this,
    );
  }
}

abstract class _FormDto extends FormDto {
  const factory _FormDto(
      {final int? id,
      final String? image1,
      final String? image2,
      final String? name,
      final String? description,
      final String? entrance,
      final String? dishe,
      final String? dessert,
      final String? drink,
      final String? price}) = _$FormDtoImpl;
  const _FormDto._() : super._();

  factory _FormDto.fromJson(Map<String, dynamic> json) = _$FormDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get image1;
  @override
  String? get image2;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get entrance;
  @override
  String? get dishe;
  @override
  String? get dessert;
  @override
  String? get drink;
  @override
  String? get price;

  /// Create a copy of FormDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormDtoImplCopyWith<_$FormDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacteristicsDto _$CharacteristicsDtoFromJson(Map<String, dynamic> json) {
  return _CharacteristicsDto.fromJson(json);
}

/// @nodoc
mixin _$CharacteristicsDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this CharacteristicsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacteristicsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacteristicsDtoCopyWith<CharacteristicsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacteristicsDtoCopyWith<$Res> {
  factory $CharacteristicsDtoCopyWith(
          CharacteristicsDto value, $Res Function(CharacteristicsDto) then) =
      _$CharacteristicsDtoCopyWithImpl<$Res, CharacteristicsDto>;
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class _$CharacteristicsDtoCopyWithImpl<$Res, $Val extends CharacteristicsDto>
    implements $CharacteristicsDtoCopyWith<$Res> {
  _$CharacteristicsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacteristicsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacteristicsDtoImplCopyWith<$Res>
    implements $CharacteristicsDtoCopyWith<$Res> {
  factory _$$CharacteristicsDtoImplCopyWith(_$CharacteristicsDtoImpl value,
          $Res Function(_$CharacteristicsDtoImpl) then) =
      __$$CharacteristicsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class __$$CharacteristicsDtoImplCopyWithImpl<$Res>
    extends _$CharacteristicsDtoCopyWithImpl<$Res, _$CharacteristicsDtoImpl>
    implements _$$CharacteristicsDtoImplCopyWith<$Res> {
  __$$CharacteristicsDtoImplCopyWithImpl(_$CharacteristicsDtoImpl _value,
      $Res Function(_$CharacteristicsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacteristicsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$CharacteristicsDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacteristicsDtoImpl extends _CharacteristicsDto {
  const _$CharacteristicsDtoImpl({this.id, this.title}) : super._();

  factory _$CharacteristicsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacteristicsDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'CharacteristicsDto(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacteristicsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of CharacteristicsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacteristicsDtoImplCopyWith<_$CharacteristicsDtoImpl> get copyWith =>
      __$$CharacteristicsDtoImplCopyWithImpl<_$CharacteristicsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacteristicsDtoImplToJson(
      this,
    );
  }
}

abstract class _CharacteristicsDto extends CharacteristicsDto {
  const factory _CharacteristicsDto({final int? id, final String? title}) =
      _$CharacteristicsDtoImpl;
  const _CharacteristicsDto._() : super._();

  factory _CharacteristicsDto.fromJson(Map<String, dynamic> json) =
      _$CharacteristicsDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;

  /// Create a copy of CharacteristicsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacteristicsDtoImplCopyWith<_$CharacteristicsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

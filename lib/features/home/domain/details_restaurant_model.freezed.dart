// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsRestaurantModel _$DetailsRestaurantModelFromJson(
    Map<String, dynamic> json) {
  return _DetailsRestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$DetailsRestaurantModel {
  int get id => throw _privateConstructorUsedError;
  String get etablishement => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<OpeningHourModel> get openingHours => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  List<FormModel> get forms =>
      throw _privateConstructorUsedError; // characteristics is an empty array now, so type as List<String>
  List<CharacteristicsModel> get characteristics =>
      throw _privateConstructorUsedError;

  /// Serializes this DetailsRestaurantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailsRestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsRestaurantModelCopyWith<DetailsRestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsRestaurantModelCopyWith<$Res> {
  factory $DetailsRestaurantModelCopyWith(DetailsRestaurantModel value,
          $Res Function(DetailsRestaurantModel) then) =
      _$DetailsRestaurantModelCopyWithImpl<$Res, DetailsRestaurantModel>;
  @useResult
  $Res call(
      {int id,
      String etablishement,
      String street,
      String postalCode,
      String city,
      String country,
      LocationModel location,
      String description,
      List<OpeningHourModel> openingHours,
      String email,
      String phone,
      String website,
      List<ImageModel> images,
      List<FormModel> forms,
      List<CharacteristicsModel> characteristics});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$DetailsRestaurantModelCopyWithImpl<$Res,
        $Val extends DetailsRestaurantModel>
    implements $DetailsRestaurantModelCopyWith<$Res> {
  _$DetailsRestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsRestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? etablishement = null,
    Object? street = null,
    Object? postalCode = null,
    Object? city = null,
    Object? country = null,
    Object? location = null,
    Object? description = null,
    Object? openingHours = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? images = null,
    Object? forms = null,
    Object? characteristics = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      etablishement: null == etablishement
          ? _value.etablishement
          : etablishement // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHourModel>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<FormModel>,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<CharacteristicsModel>,
    ) as $Val);
  }

  /// Create a copy of DetailsRestaurantModel
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
abstract class _$$DetailsRestaurantModelImplCopyWith<$Res>
    implements $DetailsRestaurantModelCopyWith<$Res> {
  factory _$$DetailsRestaurantModelImplCopyWith(
          _$DetailsRestaurantModelImpl value,
          $Res Function(_$DetailsRestaurantModelImpl) then) =
      __$$DetailsRestaurantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String etablishement,
      String street,
      String postalCode,
      String city,
      String country,
      LocationModel location,
      String description,
      List<OpeningHourModel> openingHours,
      String email,
      String phone,
      String website,
      List<ImageModel> images,
      List<FormModel> forms,
      List<CharacteristicsModel> characteristics});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$DetailsRestaurantModelImplCopyWithImpl<$Res>
    extends _$DetailsRestaurantModelCopyWithImpl<$Res,
        _$DetailsRestaurantModelImpl>
    implements _$$DetailsRestaurantModelImplCopyWith<$Res> {
  __$$DetailsRestaurantModelImplCopyWithImpl(
      _$DetailsRestaurantModelImpl _value,
      $Res Function(_$DetailsRestaurantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsRestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? etablishement = null,
    Object? street = null,
    Object? postalCode = null,
    Object? city = null,
    Object? country = null,
    Object? location = null,
    Object? description = null,
    Object? openingHours = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? images = null,
    Object? forms = null,
    Object? characteristics = null,
  }) {
    return _then(_$DetailsRestaurantModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      etablishement: null == etablishement
          ? _value.etablishement
          : etablishement // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHourModel>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      forms: null == forms
          ? _value._forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<FormModel>,
      characteristics: null == characteristics
          ? _value._characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<CharacteristicsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsRestaurantModelImpl implements _DetailsRestaurantModel {
  const _$DetailsRestaurantModelImpl(
      {required this.id,
      required this.etablishement,
      required this.street,
      required this.postalCode,
      required this.city,
      required this.country,
      required this.location,
      required this.description,
      required final List<OpeningHourModel> openingHours,
      required this.email,
      required this.phone,
      required this.website,
      required final List<ImageModel> images,
      required final List<FormModel> forms,
      required final List<CharacteristicsModel> characteristics})
      : _openingHours = openingHours,
        _images = images,
        _forms = forms,
        _characteristics = characteristics;

  factory _$DetailsRestaurantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsRestaurantModelImplFromJson(json);

  @override
  final int id;
  @override
  final String etablishement;
  @override
  final String street;
  @override
  final String postalCode;
  @override
  final String city;
  @override
  final String country;
  @override
  final LocationModel location;
  @override
  final String description;
  final List<OpeningHourModel> _openingHours;
  @override
  List<OpeningHourModel> get openingHours {
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openingHours);
  }

  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<FormModel> _forms;
  @override
  List<FormModel> get forms {
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forms);
  }

// characteristics is an empty array now, so type as List<String>
  final List<CharacteristicsModel> _characteristics;
// characteristics is an empty array now, so type as List<String>
  @override
  List<CharacteristicsModel> get characteristics {
    if (_characteristics is EqualUnmodifiableListView) return _characteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characteristics);
  }

  @override
  String toString() {
    return 'DetailsRestaurantModel(id: $id, etablishement: $etablishement, street: $street, postalCode: $postalCode, city: $city, country: $country, location: $location, description: $description, openingHours: $openingHours, email: $email, phone: $phone, website: $website, images: $images, forms: $forms, characteristics: $characteristics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsRestaurantModelImpl &&
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

  /// Create a copy of DetailsRestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsRestaurantModelImplCopyWith<_$DetailsRestaurantModelImpl>
      get copyWith => __$$DetailsRestaurantModelImplCopyWithImpl<
          _$DetailsRestaurantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsRestaurantModelImplToJson(
      this,
    );
  }
}

abstract class _DetailsRestaurantModel implements DetailsRestaurantModel {
  const factory _DetailsRestaurantModel(
          {required final int id,
          required final String etablishement,
          required final String street,
          required final String postalCode,
          required final String city,
          required final String country,
          required final LocationModel location,
          required final String description,
          required final List<OpeningHourModel> openingHours,
          required final String email,
          required final String phone,
          required final String website,
          required final List<ImageModel> images,
          required final List<FormModel> forms,
          required final List<CharacteristicsModel> characteristics}) =
      _$DetailsRestaurantModelImpl;

  factory _DetailsRestaurantModel.fromJson(Map<String, dynamic> json) =
      _$DetailsRestaurantModelImpl.fromJson;

  @override
  int get id;
  @override
  String get etablishement;
  @override
  String get street;
  @override
  String get postalCode;
  @override
  String get city;
  @override
  String get country;
  @override
  LocationModel get location;
  @override
  String get description;
  @override
  List<OpeningHourModel> get openingHours;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get website;
  @override
  List<ImageModel> get images;
  @override
  List<FormModel>
      get forms; // characteristics is an empty array now, so type as List<String>
  @override
  List<CharacteristicsModel> get characteristics;

  /// Create a copy of DetailsRestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsRestaurantModelImplCopyWith<_$DetailsRestaurantModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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

OpeningHourModel _$OpeningHourModelFromJson(Map<String, dynamic> json) {
  return _OpeningHourModel.fromJson(json);
}

/// @nodoc
mixin _$OpeningHourModel {
  String get day => throw _privateConstructorUsedError;
  String get open => throw _privateConstructorUsedError;
  String get close => throw _privateConstructorUsedError;

  /// Serializes this OpeningHourModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpeningHourModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpeningHourModelCopyWith<OpeningHourModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHourModelCopyWith<$Res> {
  factory $OpeningHourModelCopyWith(
          OpeningHourModel value, $Res Function(OpeningHourModel) then) =
      _$OpeningHourModelCopyWithImpl<$Res, OpeningHourModel>;
  @useResult
  $Res call({String day, String open, String close});
}

/// @nodoc
class _$OpeningHourModelCopyWithImpl<$Res, $Val extends OpeningHourModel>
    implements $OpeningHourModelCopyWith<$Res> {
  _$OpeningHourModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpeningHourModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpeningHourModelImplCopyWith<$Res>
    implements $OpeningHourModelCopyWith<$Res> {
  factory _$$OpeningHourModelImplCopyWith(_$OpeningHourModelImpl value,
          $Res Function(_$OpeningHourModelImpl) then) =
      __$$OpeningHourModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, String open, String close});
}

/// @nodoc
class __$$OpeningHourModelImplCopyWithImpl<$Res>
    extends _$OpeningHourModelCopyWithImpl<$Res, _$OpeningHourModelImpl>
    implements _$$OpeningHourModelImplCopyWith<$Res> {
  __$$OpeningHourModelImplCopyWithImpl(_$OpeningHourModelImpl _value,
      $Res Function(_$OpeningHourModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpeningHourModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_$OpeningHourModelImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningHourModelImpl implements _OpeningHourModel {
  const _$OpeningHourModelImpl(
      {required this.day, required this.open, required this.close});

  factory _$OpeningHourModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHourModelImplFromJson(json);

  @override
  final String day;
  @override
  final String open;
  @override
  final String close;

  @override
  String toString() {
    return 'OpeningHourModel(day: $day, open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHourModelImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, open, close);

  /// Create a copy of OpeningHourModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHourModelImplCopyWith<_$OpeningHourModelImpl> get copyWith =>
      __$$OpeningHourModelImplCopyWithImpl<_$OpeningHourModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHourModelImplToJson(
      this,
    );
  }
}

abstract class _OpeningHourModel implements OpeningHourModel {
  const factory _OpeningHourModel(
      {required final String day,
      required final String open,
      required final String close}) = _$OpeningHourModelImpl;

  factory _OpeningHourModel.fromJson(Map<String, dynamic> json) =
      _$OpeningHourModelImpl.fromJson;

  @override
  String get day;
  @override
  String get open;
  @override
  String get close;

  /// Create a copy of OpeningHourModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpeningHourModelImplCopyWith<_$OpeningHourModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormModel _$FormModelFromJson(Map<String, dynamic> json) {
  return _FormModel.fromJson(json);
}

/// @nodoc
mixin _$FormModel {
  int get id => throw _privateConstructorUsedError;
  String get image1 => throw _privateConstructorUsedError;
  String get image2 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get entrance => throw _privateConstructorUsedError;
  String get dishe => throw _privateConstructorUsedError;
  String get dessert => throw _privateConstructorUsedError;
  String get drink => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  /// Serializes this FormModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormModelCopyWith<FormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormModelCopyWith<$Res> {
  factory $FormModelCopyWith(FormModel value, $Res Function(FormModel) then) =
      _$FormModelCopyWithImpl<$Res, FormModel>;
  @useResult
  $Res call(
      {int id,
      String image1,
      String image2,
      String name,
      String description,
      String entrance,
      String dishe,
      String dessert,
      String drink,
      String price});
}

/// @nodoc
class _$FormModelCopyWithImpl<$Res, $Val extends FormModel>
    implements $FormModelCopyWith<$Res> {
  _$FormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image1 = null,
    Object? image2 = null,
    Object? name = null,
    Object? description = null,
    Object? entrance = null,
    Object? dishe = null,
    Object? dessert = null,
    Object? drink = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      image2: null == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      dishe: null == dishe
          ? _value.dishe
          : dishe // ignore: cast_nullable_to_non_nullable
              as String,
      dessert: null == dessert
          ? _value.dessert
          : dessert // ignore: cast_nullable_to_non_nullable
              as String,
      drink: null == drink
          ? _value.drink
          : drink // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormModelImplCopyWith<$Res>
    implements $FormModelCopyWith<$Res> {
  factory _$$FormModelImplCopyWith(
          _$FormModelImpl value, $Res Function(_$FormModelImpl) then) =
      __$$FormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image1,
      String image2,
      String name,
      String description,
      String entrance,
      String dishe,
      String dessert,
      String drink,
      String price});
}

/// @nodoc
class __$$FormModelImplCopyWithImpl<$Res>
    extends _$FormModelCopyWithImpl<$Res, _$FormModelImpl>
    implements _$$FormModelImplCopyWith<$Res> {
  __$$FormModelImplCopyWithImpl(
      _$FormModelImpl _value, $Res Function(_$FormModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image1 = null,
    Object? image2 = null,
    Object? name = null,
    Object? description = null,
    Object? entrance = null,
    Object? dishe = null,
    Object? dessert = null,
    Object? drink = null,
    Object? price = null,
  }) {
    return _then(_$FormModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      image2: null == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      dishe: null == dishe
          ? _value.dishe
          : dishe // ignore: cast_nullable_to_non_nullable
              as String,
      dessert: null == dessert
          ? _value.dessert
          : dessert // ignore: cast_nullable_to_non_nullable
              as String,
      drink: null == drink
          ? _value.drink
          : drink // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormModelImpl implements _FormModel {
  const _$FormModelImpl(
      {required this.id,
      required this.image1,
      required this.image2,
      required this.name,
      required this.description,
      required this.entrance,
      required this.dishe,
      required this.dessert,
      required this.drink,
      required this.price});

  factory _$FormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormModelImplFromJson(json);

  @override
  final int id;
  @override
  final String image1;
  @override
  final String image2;
  @override
  final String name;
  @override
  final String description;
  @override
  final String entrance;
  @override
  final String dishe;
  @override
  final String dessert;
  @override
  final String drink;
  @override
  final String price;

  @override
  String toString() {
    return 'FormModel(id: $id, image1: $image1, image2: $image2, name: $name, description: $description, entrance: $entrance, dishe: $dishe, dessert: $dessert, drink: $drink, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormModelImpl &&
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

  /// Create a copy of FormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormModelImplCopyWith<_$FormModelImpl> get copyWith =>
      __$$FormModelImplCopyWithImpl<_$FormModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormModelImplToJson(
      this,
    );
  }
}

abstract class _FormModel implements FormModel {
  const factory _FormModel(
      {required final int id,
      required final String image1,
      required final String image2,
      required final String name,
      required final String description,
      required final String entrance,
      required final String dishe,
      required final String dessert,
      required final String drink,
      required final String price}) = _$FormModelImpl;

  factory _FormModel.fromJson(Map<String, dynamic> json) =
      _$FormModelImpl.fromJson;

  @override
  int get id;
  @override
  String get image1;
  @override
  String get image2;
  @override
  String get name;
  @override
  String get description;
  @override
  String get entrance;
  @override
  String get dishe;
  @override
  String get dessert;
  @override
  String get drink;
  @override
  String get price;

  /// Create a copy of FormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormModelImplCopyWith<_$FormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacteristicsModel _$CharacteristicsModelFromJson(Map<String, dynamic> json) {
  return _CharacteristicsModel.fromJson(json);
}

/// @nodoc
mixin _$CharacteristicsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this CharacteristicsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacteristicsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacteristicsModelCopyWith<CharacteristicsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacteristicsModelCopyWith<$Res> {
  factory $CharacteristicsModelCopyWith(CharacteristicsModel value,
          $Res Function(CharacteristicsModel) then) =
      _$CharacteristicsModelCopyWithImpl<$Res, CharacteristicsModel>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$CharacteristicsModelCopyWithImpl<$Res,
        $Val extends CharacteristicsModel>
    implements $CharacteristicsModelCopyWith<$Res> {
  _$CharacteristicsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacteristicsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacteristicsModelImplCopyWith<$Res>
    implements $CharacteristicsModelCopyWith<$Res> {
  factory _$$CharacteristicsModelImplCopyWith(_$CharacteristicsModelImpl value,
          $Res Function(_$CharacteristicsModelImpl) then) =
      __$$CharacteristicsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$CharacteristicsModelImplCopyWithImpl<$Res>
    extends _$CharacteristicsModelCopyWithImpl<$Res, _$CharacteristicsModelImpl>
    implements _$$CharacteristicsModelImplCopyWith<$Res> {
  __$$CharacteristicsModelImplCopyWithImpl(_$CharacteristicsModelImpl _value,
      $Res Function(_$CharacteristicsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacteristicsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$CharacteristicsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacteristicsModelImpl extends _CharacteristicsModel {
  const _$CharacteristicsModelImpl({required this.id, required this.title})
      : super._();

  factory _$CharacteristicsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacteristicsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'CharacteristicsModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacteristicsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of CharacteristicsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacteristicsModelImplCopyWith<_$CharacteristicsModelImpl>
      get copyWith =>
          __$$CharacteristicsModelImplCopyWithImpl<_$CharacteristicsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacteristicsModelImplToJson(
      this,
    );
  }
}

abstract class _CharacteristicsModel extends CharacteristicsModel {
  const factory _CharacteristicsModel(
      {required final int id,
      required final String title}) = _$CharacteristicsModelImpl;
  const _CharacteristicsModel._() : super._();

  factory _CharacteristicsModel.fromJson(Map<String, dynamic> json) =
      _$CharacteristicsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of CharacteristicsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacteristicsModelImplCopyWith<_$CharacteristicsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

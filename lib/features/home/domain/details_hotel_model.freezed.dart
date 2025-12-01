// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsHotelModel _$DetailsHotelModelFromJson(Map<String, dynamic> json) {
  return _DetailsHotelModel.fromJson(json);
}

/// @nodoc
mixin _$DetailsHotelModel {
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
  int get nbrBedroom => throw _privateConstructorUsedError;
  int get nbrTravelers => throw _privateConstructorUsedError;
  int get nbrSingleBed => throw _privateConstructorUsedError;
  int get nbrDoubleBed => throw _privateConstructorUsedError;
  List<AssetModel> get assets => throw _privateConstructorUsedError;
  List<EquipmentModel> get equipements => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;

  /// Serializes this DetailsHotelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailsHotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsHotelModelCopyWith<DetailsHotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsHotelModelCopyWith<$Res> {
  factory $DetailsHotelModelCopyWith(
          DetailsHotelModel value, $Res Function(DetailsHotelModel) then) =
      _$DetailsHotelModelCopyWithImpl<$Res, DetailsHotelModel>;
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
      int nbrBedroom,
      int nbrTravelers,
      int nbrSingleBed,
      int nbrDoubleBed,
      List<AssetModel> assets,
      List<EquipmentModel> equipements,
      List<ImageModel> images});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$DetailsHotelModelCopyWithImpl<$Res, $Val extends DetailsHotelModel>
    implements $DetailsHotelModelCopyWith<$Res> {
  _$DetailsHotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsHotelModel
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
    Object? nbrBedroom = null,
    Object? nbrTravelers = null,
    Object? nbrSingleBed = null,
    Object? nbrDoubleBed = null,
    Object? assets = null,
    Object? equipements = null,
    Object? images = null,
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
      assets: null == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetModel>,
      equipements: null == equipements
          ? _value.equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }

  /// Create a copy of DetailsHotelModel
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
abstract class _$$DetailsHotelModelImplCopyWith<$Res>
    implements $DetailsHotelModelCopyWith<$Res> {
  factory _$$DetailsHotelModelImplCopyWith(_$DetailsHotelModelImpl value,
          $Res Function(_$DetailsHotelModelImpl) then) =
      __$$DetailsHotelModelImplCopyWithImpl<$Res>;
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
      int nbrBedroom,
      int nbrTravelers,
      int nbrSingleBed,
      int nbrDoubleBed,
      List<AssetModel> assets,
      List<EquipmentModel> equipements,
      List<ImageModel> images});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$DetailsHotelModelImplCopyWithImpl<$Res>
    extends _$DetailsHotelModelCopyWithImpl<$Res, _$DetailsHotelModelImpl>
    implements _$$DetailsHotelModelImplCopyWith<$Res> {
  __$$DetailsHotelModelImplCopyWithImpl(_$DetailsHotelModelImpl _value,
      $Res Function(_$DetailsHotelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsHotelModel
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
    Object? nbrBedroom = null,
    Object? nbrTravelers = null,
    Object? nbrSingleBed = null,
    Object? nbrDoubleBed = null,
    Object? assets = null,
    Object? equipements = null,
    Object? images = null,
  }) {
    return _then(_$DetailsHotelModelImpl(
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
      assets: null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetModel>,
      equipements: null == equipements
          ? _value._equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsHotelModelImpl implements _DetailsHotelModel {
  const _$DetailsHotelModelImpl(
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
      required this.nbrBedroom,
      required this.nbrTravelers,
      required this.nbrSingleBed,
      required this.nbrDoubleBed,
      required final List<AssetModel> assets,
      required final List<EquipmentModel> equipements,
      required final List<ImageModel> images})
      : _assets = assets,
        _equipements = equipements,
        _images = images;

  factory _$DetailsHotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsHotelModelImplFromJson(json);

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
  @override
  final int nbrBedroom;
  @override
  final int nbrTravelers;
  @override
  final int nbrSingleBed;
  @override
  final int nbrDoubleBed;
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

  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'DetailsHotelModel(id: $id, title: $title, description: $description, price: $price, street: $street, postalCode: $postalCode, city: $city, country: $country, location: $location, type: $type, nbrBedroom: $nbrBedroom, nbrTravelers: $nbrTravelers, nbrSingleBed: $nbrSingleBed, nbrDoubleBed: $nbrDoubleBed, assets: $assets, equipements: $equipements, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsHotelModelImpl &&
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

  /// Create a copy of DetailsHotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsHotelModelImplCopyWith<_$DetailsHotelModelImpl> get copyWith =>
      __$$DetailsHotelModelImplCopyWithImpl<_$DetailsHotelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsHotelModelImplToJson(
      this,
    );
  }
}

abstract class _DetailsHotelModel implements DetailsHotelModel {
  const factory _DetailsHotelModel(
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
      required final int nbrBedroom,
      required final int nbrTravelers,
      required final int nbrSingleBed,
      required final int nbrDoubleBed,
      required final List<AssetModel> assets,
      required final List<EquipmentModel> equipements,
      required final List<ImageModel> images}) = _$DetailsHotelModelImpl;

  factory _DetailsHotelModel.fromJson(Map<String, dynamic> json) =
      _$DetailsHotelModelImpl.fromJson;

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
  int get nbrBedroom;
  @override
  int get nbrTravelers;
  @override
  int get nbrSingleBed;
  @override
  int get nbrDoubleBed;
  @override
  List<AssetModel> get assets;
  @override
  List<EquipmentModel> get equipements;
  @override
  List<ImageModel> get images;

  /// Create a copy of DetailsHotelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsHotelModelImplCopyWith<_$DetailsHotelModelImpl> get copyWith =>
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

AssetModel _$AssetModelFromJson(Map<String, dynamic> json) {
  return _AssetModel.fromJson(json);
}

/// @nodoc
mixin _$AssetModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this AssetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssetModelCopyWith<AssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetModelCopyWith<$Res> {
  factory $AssetModelCopyWith(
          AssetModel value, $Res Function(AssetModel) then) =
      _$AssetModelCopyWithImpl<$Res, AssetModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class _$AssetModelCopyWithImpl<$Res, $Val extends AssetModel>
    implements $AssetModelCopyWith<$Res> {
  _$AssetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
abstract class _$$AssetModelImplCopyWith<$Res>
    implements $AssetModelCopyWith<$Res> {
  factory _$$AssetModelImplCopyWith(
          _$AssetModelImpl value, $Res Function(_$AssetModelImpl) then) =
      __$$AssetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class __$$AssetModelImplCopyWithImpl<$Res>
    extends _$AssetModelCopyWithImpl<$Res, _$AssetModelImpl>
    implements _$$AssetModelImplCopyWith<$Res> {
  __$$AssetModelImplCopyWithImpl(
      _$AssetModelImpl _value, $Res Function(_$AssetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AssetModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$AssetModelImpl implements _AssetModel {
  const _$AssetModelImpl(
      {required this.id,
      required this.title,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory _$AssetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'AssetModel(id: $id, title: $title, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetModelImpl &&
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

  /// Create a copy of AssetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetModelImplCopyWith<_$AssetModelImpl> get copyWith =>
      __$$AssetModelImplCopyWithImpl<_$AssetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetModelImplToJson(
      this,
    );
  }
}

abstract class _AssetModel implements AssetModel {
  const factory _AssetModel(
      {required final int id,
      required final String title,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$AssetModelImpl;

  factory _AssetModel.fromJson(Map<String, dynamic> json) =
      _$AssetModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of AssetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetModelImplCopyWith<_$AssetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) {
  return _EquipmentModel.fromJson(json);
}

/// @nodoc
mixin _$EquipmentModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this EquipmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EquipmentModelCopyWith<EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentModelCopyWith<$Res> {
  factory $EquipmentModelCopyWith(
          EquipmentModel value, $Res Function(EquipmentModel) then) =
      _$EquipmentModelCopyWithImpl<$Res, EquipmentModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class _$EquipmentModelCopyWithImpl<$Res, $Val extends EquipmentModel>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
abstract class _$$EquipmentModelImplCopyWith<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  factory _$$EquipmentModelImplCopyWith(_$EquipmentModelImpl value,
          $Res Function(_$EquipmentModelImpl) then) =
      __$$EquipmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class __$$EquipmentModelImplCopyWithImpl<$Res>
    extends _$EquipmentModelCopyWithImpl<$Res, _$EquipmentModelImpl>
    implements _$$EquipmentModelImplCopyWith<$Res> {
  __$$EquipmentModelImplCopyWithImpl(
      _$EquipmentModelImpl _value, $Res Function(_$EquipmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$EquipmentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$EquipmentModelImpl implements _EquipmentModel {
  const _$EquipmentModelImpl(
      {required this.id,
      required this.title,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory _$EquipmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'EquipmentModel(id: $id, title: $title, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentModelImpl &&
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

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentModelImplCopyWith<_$EquipmentModelImpl> get copyWith =>
      __$$EquipmentModelImplCopyWithImpl<_$EquipmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentModelImplToJson(
      this,
    );
  }
}

abstract class _EquipmentModel implements EquipmentModel {
  const factory _EquipmentModel(
      {required final int id,
      required final String title,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$EquipmentModelImpl;

  factory _EquipmentModel.fromJson(Map<String, dynamic> json) =
      _$EquipmentModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquipmentModelImplCopyWith<_$EquipmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

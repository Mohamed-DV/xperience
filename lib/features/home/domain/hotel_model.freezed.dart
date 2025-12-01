// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;

  /// Serializes this HotelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String price,
      String city,
      String country,
      String type,
      List<ImageModel> images});
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? city = null,
    Object? country = null,
    Object? type = null,
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
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelModelImplCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$HotelModelImplCopyWith(
          _$HotelModelImpl value, $Res Function(_$HotelModelImpl) then) =
      __$$HotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String price,
      String city,
      String country,
      String type,
      List<ImageModel> images});
}

/// @nodoc
class __$$HotelModelImplCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$HotelModelImpl>
    implements _$$HotelModelImplCopyWith<$Res> {
  __$$HotelModelImplCopyWithImpl(
      _$HotelModelImpl _value, $Res Function(_$HotelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? city = null,
    Object? country = null,
    Object? type = null,
    Object? images = null,
  }) {
    return _then(_$HotelModelImpl(
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
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelModelImpl implements _HotelModel {
  const _$HotelModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.city,
      required this.country,
      required this.type,
      required final List<ImageModel> images})
      : _images = images;

  factory _$HotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String price;
  @override
  final String city;
  @override
  final String country;
  @override
  final String type;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'HotelModel(id: $id, title: $title, description: $description, price: $price, city: $city, country: $country, type: $type, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, price,
      city, country, type, const DeepCollectionEquality().hash(_images));

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      __$$HotelModelImplCopyWithImpl<_$HotelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelModelImplToJson(
      this,
    );
  }
}

abstract class _HotelModel implements HotelModel {
  const factory _HotelModel(
      {required final int id,
      required final String title,
      required final String description,
      required final String price,
      required final String city,
      required final String country,
      required final String type,
      required final List<ImageModel> images}) = _$HotelModelImpl;

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$HotelModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get price;
  @override
  String get city;
  @override
  String get country;
  @override
  String get type;
  @override
  List<ImageModel> get images;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

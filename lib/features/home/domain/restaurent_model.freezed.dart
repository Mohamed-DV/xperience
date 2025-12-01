// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestaurentModel _$RestaurentModelFromJson(Map<String, dynamic> json) {
  return _RestaurentModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurentModel {
  int get id => throw _privateConstructorUsedError;
  String get etablishement => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;

  /// Serializes this RestaurentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestaurentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurentModelCopyWith<RestaurentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurentModelCopyWith<$Res> {
  factory $RestaurentModelCopyWith(
          RestaurentModel value, $Res Function(RestaurentModel) then) =
      _$RestaurentModelCopyWithImpl<$Res, RestaurentModel>;
  @useResult
  $Res call(
      {int id,
      String etablishement,
      String city,
      String country,
      List<ImageModel> images});
}

/// @nodoc
class _$RestaurentModelCopyWithImpl<$Res, $Val extends RestaurentModel>
    implements $RestaurentModelCopyWith<$Res> {
  _$RestaurentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestaurentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? etablishement = null,
    Object? city = null,
    Object? country = null,
    Object? images = null,
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
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurentModelImplCopyWith<$Res>
    implements $RestaurentModelCopyWith<$Res> {
  factory _$$RestaurentModelImplCopyWith(_$RestaurentModelImpl value,
          $Res Function(_$RestaurentModelImpl) then) =
      __$$RestaurentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String etablishement,
      String city,
      String country,
      List<ImageModel> images});
}

/// @nodoc
class __$$RestaurentModelImplCopyWithImpl<$Res>
    extends _$RestaurentModelCopyWithImpl<$Res, _$RestaurentModelImpl>
    implements _$$RestaurentModelImplCopyWith<$Res> {
  __$$RestaurentModelImplCopyWithImpl(
      _$RestaurentModelImpl _value, $Res Function(_$RestaurentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestaurentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? etablishement = null,
    Object? city = null,
    Object? country = null,
    Object? images = null,
  }) {
    return _then(_$RestaurentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      etablishement: null == etablishement
          ? _value.etablishement
          : etablishement // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
class _$RestaurentModelImpl implements _RestaurentModel {
  const _$RestaurentModelImpl(
      {required this.id,
      required this.etablishement,
      required this.city,
      required this.country,
      required final List<ImageModel> images})
      : _images = images;

  factory _$RestaurentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurentModelImplFromJson(json);

  @override
  final int id;
  @override
  final String etablishement;
  @override
  final String city;
  @override
  final String country;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'RestaurentModel(id: $id, etablishement: $etablishement, city: $city, country: $country, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.etablishement, etablishement) ||
                other.etablishement == etablishement) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, etablishement, city, country,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of RestaurentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurentModelImplCopyWith<_$RestaurentModelImpl> get copyWith =>
      __$$RestaurentModelImplCopyWithImpl<_$RestaurentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurentModelImplToJson(
      this,
    );
  }
}

abstract class _RestaurentModel implements RestaurentModel {
  const factory _RestaurentModel(
      {required final int id,
      required final String etablishement,
      required final String city,
      required final String country,
      required final List<ImageModel> images}) = _$RestaurentModelImpl;

  factory _RestaurentModel.fromJson(Map<String, dynamic> json) =
      _$RestaurentModelImpl.fromJson;

  @override
  int get id;
  @override
  String get etablishement;
  @override
  String get city;
  @override
  String get country;
  @override
  List<ImageModel> get images;

  /// Create a copy of RestaurentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurentModelImplCopyWith<_$RestaurentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

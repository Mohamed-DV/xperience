// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurent_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestaurentDto _$RestaurentDtoFromJson(Map<String, dynamic> json) {
  return _RestaurentDto.fromJson(json);
}

/// @nodoc
mixin _$RestaurentDto {
  int? get id => throw _privateConstructorUsedError;
  String? get etablishement => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;

  /// Serializes this RestaurentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestaurentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurentDtoCopyWith<RestaurentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurentDtoCopyWith<$Res> {
  factory $RestaurentDtoCopyWith(
          RestaurentDto value, $Res Function(RestaurentDto) then) =
      _$RestaurentDtoCopyWithImpl<$Res, RestaurentDto>;
  @useResult
  $Res call(
      {int? id,
      String? etablishement,
      String? city,
      String? country,
      List<ImageModel>? images});
}

/// @nodoc
class _$RestaurentDtoCopyWithImpl<$Res, $Val extends RestaurentDto>
    implements $RestaurentDtoCopyWith<$Res> {
  _$RestaurentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestaurentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? etablishement = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? images = freezed,
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
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurentDtoImplCopyWith<$Res>
    implements $RestaurentDtoCopyWith<$Res> {
  factory _$$RestaurentDtoImplCopyWith(
          _$RestaurentDtoImpl value, $Res Function(_$RestaurentDtoImpl) then) =
      __$$RestaurentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? etablishement,
      String? city,
      String? country,
      List<ImageModel>? images});
}

/// @nodoc
class __$$RestaurentDtoImplCopyWithImpl<$Res>
    extends _$RestaurentDtoCopyWithImpl<$Res, _$RestaurentDtoImpl>
    implements _$$RestaurentDtoImplCopyWith<$Res> {
  __$$RestaurentDtoImplCopyWithImpl(
      _$RestaurentDtoImpl _value, $Res Function(_$RestaurentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestaurentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? etablishement = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? images = freezed,
  }) {
    return _then(_$RestaurentDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      etablishement: freezed == etablishement
          ? _value.etablishement
          : etablishement // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurentDtoImpl extends _RestaurentDto {
  const _$RestaurentDtoImpl(
      {this.id,
      this.etablishement,
      this.city,
      this.country,
      final List<ImageModel>? images})
      : _images = images,
        super._();

  factory _$RestaurentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurentDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? etablishement;
  @override
  final String? city;
  @override
  final String? country;
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
    return 'RestaurentDto(id: $id, etablishement: $etablishement, city: $city, country: $country, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurentDtoImpl &&
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

  /// Create a copy of RestaurentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurentDtoImplCopyWith<_$RestaurentDtoImpl> get copyWith =>
      __$$RestaurentDtoImplCopyWithImpl<_$RestaurentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurentDtoImplToJson(
      this,
    );
  }
}

abstract class _RestaurentDto extends RestaurentDto {
  const factory _RestaurentDto(
      {final int? id,
      final String? etablishement,
      final String? city,
      final String? country,
      final List<ImageModel>? images}) = _$RestaurentDtoImpl;
  const _RestaurentDto._() : super._();

  factory _RestaurentDto.fromJson(Map<String, dynamic> json) =
      _$RestaurentDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get etablishement;
  @override
  String? get city;
  @override
  String? get country;
  @override
  List<ImageModel>? get images;

  /// Create a copy of RestaurentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurentDtoImplCopyWith<_$RestaurentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompitionModel _$CompitionModelFromJson(Map<String, dynamic> json) {
  return _CompitionModel.fromJson(json);
}

/// @nodoc
mixin _$CompitionModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  String get meetDate => throw _privateConstructorUsedError;
  String get meetAddress => throw _privateConstructorUsedError;
  String get meetCity => throw _privateConstructorUsedError;
  String get meetCountry => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  bool? get isReserved => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  bool? get isFav => throw _privateConstructorUsedError;

  /// Serializes this CompitionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompitionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompitionModelCopyWith<CompitionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompitionModelCopyWith<$Res> {
  factory $CompitionModelCopyWith(
          CompitionModel value, $Res Function(CompitionModel) then) =
      _$CompitionModelCopyWithImpl<$Res, CompitionModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      double distance,
      String meetDate,
      String meetAddress,
      String meetCity,
      String meetCountry,
      String eventType,
      List<ImageModel> images,
      String price,
      bool? isReserved,
      String? email,
      String? phone,
      String? website,
      bool? isFav});
}

/// @nodoc
class _$CompitionModelCopyWithImpl<$Res, $Val extends CompitionModel>
    implements $CompitionModelCopyWith<$Res> {
  _$CompitionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompitionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? distance = null,
    Object? meetDate = null,
    Object? meetAddress = null,
    Object? meetCity = null,
    Object? meetCountry = null,
    Object? eventType = null,
    Object? images = null,
    Object? price = null,
    Object? isReserved = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? isFav = freezed,
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
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      meetDate: null == meetDate
          ? _value.meetDate
          : meetDate // ignore: cast_nullable_to_non_nullable
              as String,
      meetAddress: null == meetAddress
          ? _value.meetAddress
          : meetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      meetCity: null == meetCity
          ? _value.meetCity
          : meetCity // ignore: cast_nullable_to_non_nullable
              as String,
      meetCountry: null == meetCountry
          ? _value.meetCountry
          : meetCountry // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      isReserved: freezed == isReserved
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompitionModelImplCopyWith<$Res>
    implements $CompitionModelCopyWith<$Res> {
  factory _$$CompitionModelImplCopyWith(_$CompitionModelImpl value,
          $Res Function(_$CompitionModelImpl) then) =
      __$$CompitionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      double distance,
      String meetDate,
      String meetAddress,
      String meetCity,
      String meetCountry,
      String eventType,
      List<ImageModel> images,
      String price,
      bool? isReserved,
      String? email,
      String? phone,
      String? website,
      bool? isFav});
}

/// @nodoc
class __$$CompitionModelImplCopyWithImpl<$Res>
    extends _$CompitionModelCopyWithImpl<$Res, _$CompitionModelImpl>
    implements _$$CompitionModelImplCopyWith<$Res> {
  __$$CompitionModelImplCopyWithImpl(
      _$CompitionModelImpl _value, $Res Function(_$CompitionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompitionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? distance = null,
    Object? meetDate = null,
    Object? meetAddress = null,
    Object? meetCity = null,
    Object? meetCountry = null,
    Object? eventType = null,
    Object? images = null,
    Object? price = null,
    Object? isReserved = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? isFav = freezed,
  }) {
    return _then(_$CompitionModelImpl(
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
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      meetDate: null == meetDate
          ? _value.meetDate
          : meetDate // ignore: cast_nullable_to_non_nullable
              as String,
      meetAddress: null == meetAddress
          ? _value.meetAddress
          : meetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      meetCity: null == meetCity
          ? _value.meetCity
          : meetCity // ignore: cast_nullable_to_non_nullable
              as String,
      meetCountry: null == meetCountry
          ? _value.meetCountry
          : meetCountry // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      isReserved: freezed == isReserved
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompitionModelImpl implements _CompitionModel {
  const _$CompitionModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.distance,
      required this.meetDate,
      required this.meetAddress,
      required this.meetCity,
      required this.meetCountry,
      required this.eventType,
      required final List<ImageModel> images,
      required this.price,
      this.isReserved,
      this.email,
      this.phone,
      this.website,
      this.isFav})
      : _images = images;

  factory _$CompitionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompitionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final double distance;
  @override
  final String meetDate;
  @override
  final String meetAddress;
  @override
  final String meetCity;
  @override
  final String meetCountry;
  @override
  final String eventType;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String price;
  @override
  final bool? isReserved;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final bool? isFav;

  @override
  String toString() {
    return 'CompitionModel(id: $id, title: $title, description: $description, distance: $distance, meetDate: $meetDate, meetAddress: $meetAddress, meetCity: $meetCity, meetCountry: $meetCountry, eventType: $eventType, images: $images, price: $price, isReserved: $isReserved, email: $email, phone: $phone, website: $website, isFav: $isFav)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompitionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.meetDate, meetDate) ||
                other.meetDate == meetDate) &&
            (identical(other.meetAddress, meetAddress) ||
                other.meetAddress == meetAddress) &&
            (identical(other.meetCity, meetCity) ||
                other.meetCity == meetCity) &&
            (identical(other.meetCountry, meetCountry) ||
                other.meetCountry == meetCountry) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isReserved, isReserved) ||
                other.isReserved == isReserved) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.isFav, isFav) || other.isFav == isFav));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      distance,
      meetDate,
      meetAddress,
      meetCity,
      meetCountry,
      eventType,
      const DeepCollectionEquality().hash(_images),
      price,
      isReserved,
      email,
      phone,
      website,
      isFav);

  /// Create a copy of CompitionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompitionModelImplCopyWith<_$CompitionModelImpl> get copyWith =>
      __$$CompitionModelImplCopyWithImpl<_$CompitionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompitionModelImplToJson(
      this,
    );
  }
}

abstract class _CompitionModel implements CompitionModel {
  const factory _CompitionModel(
      {required final int id,
      required final String title,
      required final String description,
      required final double distance,
      required final String meetDate,
      required final String meetAddress,
      required final String meetCity,
      required final String meetCountry,
      required final String eventType,
      required final List<ImageModel> images,
      required final String price,
      final bool? isReserved,
      final String? email,
      final String? phone,
      final String? website,
      final bool? isFav}) = _$CompitionModelImpl;

  factory _CompitionModel.fromJson(Map<String, dynamic> json) =
      _$CompitionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  double get distance;
  @override
  String get meetDate;
  @override
  String get meetAddress;
  @override
  String get meetCity;
  @override
  String get meetCountry;
  @override
  String get eventType;
  @override
  List<ImageModel> get images;
  @override
  String get price;
  @override
  bool? get isReserved;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  bool? get isFav;

  /// Create a copy of CompitionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompitionModelImplCopyWith<_$CompitionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

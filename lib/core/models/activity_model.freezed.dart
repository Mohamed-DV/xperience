// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) {
  return _ActivityModel.fromJson(json);
}

/// @nodoc
mixin _$ActivityModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get discipline => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get participantNumber => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  bool? get isReserved => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  bool? get isFav => throw _privateConstructorUsedError;

  /// Serializes this ActivityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) then) =
      _$ActivityModelCopyWithImpl<$Res, ActivityModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? discipline,
      String distance,
      String description,
      int participantNumber,
      String street,
      String city,
      String eventType,
      List<ImageModel> images,
      String country,
      String price,
      bool? isReserved,
      String? email,
      String? phone,
      String? website,
      bool? isFav});
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res, $Val extends ActivityModel>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? discipline = freezed,
    Object? distance = null,
    Object? description = null,
    Object? participantNumber = null,
    Object? street = null,
    Object? city = null,
    Object? eventType = null,
    Object? images = null,
    Object? country = null,
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
      discipline: freezed == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      participantNumber: null == participantNumber
          ? _value.participantNumber
          : participantNumber // ignore: cast_nullable_to_non_nullable
              as int,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ActivityModelImplCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$$ActivityModelImplCopyWith(
          _$ActivityModelImpl value, $Res Function(_$ActivityModelImpl) then) =
      __$$ActivityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? discipline,
      String distance,
      String description,
      int participantNumber,
      String street,
      String city,
      String eventType,
      List<ImageModel> images,
      String country,
      String price,
      bool? isReserved,
      String? email,
      String? phone,
      String? website,
      bool? isFav});
}

/// @nodoc
class __$$ActivityModelImplCopyWithImpl<$Res>
    extends _$ActivityModelCopyWithImpl<$Res, _$ActivityModelImpl>
    implements _$$ActivityModelImplCopyWith<$Res> {
  __$$ActivityModelImplCopyWithImpl(
      _$ActivityModelImpl _value, $Res Function(_$ActivityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? discipline = freezed,
    Object? distance = null,
    Object? description = null,
    Object? participantNumber = null,
    Object? street = null,
    Object? city = null,
    Object? eventType = null,
    Object? images = null,
    Object? country = null,
    Object? price = null,
    Object? isReserved = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? isFav = freezed,
  }) {
    return _then(_$ActivityModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discipline: freezed == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      participantNumber: null == participantNumber
          ? _value.participantNumber
          : participantNumber // ignore: cast_nullable_to_non_nullable
              as int,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ActivityModelImpl implements _ActivityModel {
  const _$ActivityModelImpl(
      {required this.id,
      required this.title,
      this.discipline,
      required this.distance,
      required this.description,
      required this.participantNumber,
      required this.street,
      required this.city,
      required this.eventType,
      required final List<ImageModel> images,
      required this.country,
      required this.price,
      this.isReserved,
      this.email,
      this.phone,
      this.website,
      this.isFav})
      : _images = images;

  factory _$ActivityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? discipline;
  @override
  final String distance;
  @override
  final String description;
  @override
  final int participantNumber;
  @override
  final String street;
  @override
  final String city;
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
  final String country;
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
    return 'ActivityModel(id: $id, title: $title, discipline: $discipline, distance: $distance, description: $description, participantNumber: $participantNumber, street: $street, city: $city, eventType: $eventType, images: $images, country: $country, price: $price, isReserved: $isReserved, email: $email, phone: $phone, website: $website, isFav: $isFav)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.discipline, discipline) ||
                other.discipline == discipline) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.participantNumber, participantNumber) ||
                other.participantNumber == participantNumber) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.country, country) || other.country == country) &&
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
      discipline,
      distance,
      description,
      participantNumber,
      street,
      city,
      eventType,
      const DeepCollectionEquality().hash(_images),
      country,
      price,
      isReserved,
      email,
      phone,
      website,
      isFav);

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityModelImplCopyWith<_$ActivityModelImpl> get copyWith =>
      __$$ActivityModelImplCopyWithImpl<_$ActivityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityModelImplToJson(
      this,
    );
  }
}

abstract class _ActivityModel implements ActivityModel {
  const factory _ActivityModel(
      {required final int id,
      required final String title,
      final String? discipline,
      required final String distance,
      required final String description,
      required final int participantNumber,
      required final String street,
      required final String city,
      required final String eventType,
      required final List<ImageModel> images,
      required final String country,
      required final String price,
      final bool? isReserved,
      final String? email,
      final String? phone,
      final String? website,
      final bool? isFav}) = _$ActivityModelImpl;

  factory _ActivityModel.fromJson(Map<String, dynamic> json) =
      _$ActivityModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get discipline;
  @override
  String get distance;
  @override
  String get description;
  @override
  int get participantNumber;
  @override
  String get street;
  @override
  String get city;
  @override
  String get eventType;
  @override
  List<ImageModel> get images;
  @override
  String get country;
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

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityModelImplCopyWith<_$ActivityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String? get meetDate => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get meetCity => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get meetCountry => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  bool? get isFav => throw _privateConstructorUsedError;
  bool? get isReserved => throw _privateConstructorUsedError;

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      List<ImageModel> images,
      String eventType,
      String? meetDate,
      String? time,
      String? meetCity,
      String? country,
      String? meetCountry,
      String? description,
      String? price,
      String? website,
      String? phone,
      String? email,
      int? duration,
      bool? isFav,
      bool? isReserved});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? images = null,
    Object? eventType = null,
    Object? meetDate = freezed,
    Object? time = freezed,
    Object? meetCity = freezed,
    Object? country = freezed,
    Object? meetCountry = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? website = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? duration = freezed,
    Object? isFav = freezed,
    Object? isReserved = freezed,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      meetDate: freezed == meetDate
          ? _value.meetDate
          : meetDate // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      meetCity: freezed == meetCity
          ? _value.meetCity
          : meetCity // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      meetCountry: freezed == meetCountry
          ? _value.meetCountry
          : meetCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReserved: freezed == isReserved
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      List<ImageModel> images,
      String eventType,
      String? meetDate,
      String? time,
      String? meetCity,
      String? country,
      String? meetCountry,
      String? description,
      String? price,
      String? website,
      String? phone,
      String? email,
      int? duration,
      bool? isFav,
      bool? isReserved});
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? images = null,
    Object? eventType = null,
    Object? meetDate = freezed,
    Object? time = freezed,
    Object? meetCity = freezed,
    Object? country = freezed,
    Object? meetCountry = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? website = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? duration = freezed,
    Object? isFav = freezed,
    Object? isReserved = freezed,
  }) {
    return _then(_$EventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      meetDate: freezed == meetDate
          ? _value.meetDate
          : meetDate // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      meetCity: freezed == meetCity
          ? _value.meetCity
          : meetCity // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      meetCountry: freezed == meetCountry
          ? _value.meetCountry
          : meetCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReserved: freezed == isReserved
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelImpl implements _EventModel {
  const _$EventModelImpl(
      {required this.id,
      required this.title,
      required final List<ImageModel> images,
      required this.eventType,
      this.meetDate,
      this.time,
      this.meetCity,
      this.country,
      this.meetCountry,
      this.description,
      this.price,
      this.website,
      this.phone,
      this.email,
      this.duration,
      this.isFav,
      this.isReserved})
      : _images = images;

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String eventType;
  @override
  final String? meetDate;
  @override
  final String? time;
  @override
  final String? meetCity;
  @override
  final String? country;
  @override
  final String? meetCountry;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final String? website;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final int? duration;
  @override
  final bool? isFav;
  @override
  final bool? isReserved;

  @override
  String toString() {
    return 'EventModel(id: $id, title: $title, images: $images, eventType: $eventType, meetDate: $meetDate, time: $time, meetCity: $meetCity, country: $country, meetCountry: $meetCountry, description: $description, price: $price, website: $website, phone: $phone, email: $email, duration: $duration, isFav: $isFav, isReserved: $isReserved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.meetDate, meetDate) ||
                other.meetDate == meetDate) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.meetCity, meetCity) ||
                other.meetCity == meetCity) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.meetCountry, meetCountry) ||
                other.meetCountry == meetCountry) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isFav, isFav) || other.isFav == isFav) &&
            (identical(other.isReserved, isReserved) ||
                other.isReserved == isReserved));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_images),
      eventType,
      meetDate,
      time,
      meetCity,
      country,
      meetCountry,
      description,
      price,
      website,
      phone,
      email,
      duration,
      isFav,
      isReserved);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(
      this,
    );
  }
}

abstract class _EventModel implements EventModel {
  const factory _EventModel(
      {required final int id,
      required final String title,
      required final List<ImageModel> images,
      required final String eventType,
      final String? meetDate,
      final String? time,
      final String? meetCity,
      final String? country,
      final String? meetCountry,
      final String? description,
      final String? price,
      final String? website,
      final String? phone,
      final String? email,
      final int? duration,
      final bool? isFav,
      final bool? isReserved}) = _$EventModelImpl;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  List<ImageModel> get images;
  @override
  String get eventType;
  @override
  String? get meetDate;
  @override
  String? get time;
  @override
  String? get meetCity;
  @override
  String? get country;
  @override
  String? get meetCountry;
  @override
  String? get description;
  @override
  String? get price;
  @override
  String? get website;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  int? get duration;
  @override
  bool? get isFav;
  @override
  bool? get isReserved;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

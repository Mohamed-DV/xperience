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
  String? get title => throw _privateConstructorUsedError;
  String? get discipline => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  int? get distance => throw _privateConstructorUsedError;
  int? get participantNumber => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get meetDate => throw _privateConstructorUsedError;
  String? get meetAddress => throw _privateConstructorUsedError;
  int? get meetPostalcode => throw _privateConstructorUsedError;
  String? get meetCity => throw _privateConstructorUsedError;
  String? get meetCountry => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get startAddress => throw _privateConstructorUsedError;
  String? get eventType => throw _privateConstructorUsedError;
  LocationModel? get meetLocation => throw _privateConstructorUsedError;
  LocationModel? get startLocation => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  List<CompetitionImageModel>? get images => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
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
      String? title,
      String? discipline,
      String? date,
      String? time,
      String? level,
      int? distance,
      int? participantNumber,
      String? prerequisites,
      String? meetDate,
      String? meetAddress,
      int? meetPostalcode,
      String? meetCity,
      String? meetCountry,
      String? startDate,
      String? startAddress,
      String? eventType,
      LocationModel? meetLocation,
      LocationModel? startLocation,
      String? description,
      String? price,
      String? email,
      String? phone,
      String? website,
      List<CompetitionImageModel>? images,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      int? duration,
      bool? isFav,
      bool? isReserved});

  $LocationModelCopyWith<$Res>? get meetLocation;
  $LocationModelCopyWith<$Res>? get startLocation;
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
    Object? title = freezed,
    Object? discipline = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? level = freezed,
    Object? distance = freezed,
    Object? participantNumber = freezed,
    Object? prerequisites = freezed,
    Object? meetDate = freezed,
    Object? meetAddress = freezed,
    Object? meetPostalcode = freezed,
    Object? meetCity = freezed,
    Object? meetCountry = freezed,
    Object? startDate = freezed,
    Object? startAddress = freezed,
    Object? eventType = freezed,
    Object? meetLocation = freezed,
    Object? startLocation = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? duration = freezed,
    Object? isFav = freezed,
    Object? isReserved = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      discipline: freezed == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      participantNumber: freezed == participantNumber
          ? _value.participantNumber
          : participantNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      meetDate: freezed == meetDate
          ? _value.meetDate
          : meetDate // ignore: cast_nullable_to_non_nullable
              as String?,
      meetAddress: freezed == meetAddress
          ? _value.meetAddress
          : meetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      meetPostalcode: freezed == meetPostalcode
          ? _value.meetPostalcode
          : meetPostalcode // ignore: cast_nullable_to_non_nullable
              as int?,
      meetCity: freezed == meetCity
          ? _value.meetCity
          : meetCity // ignore: cast_nullable_to_non_nullable
              as String?,
      meetCountry: freezed == meetCountry
          ? _value.meetCountry
          : meetCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startAddress: freezed == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      meetLocation: freezed == meetLocation
          ? _value.meetLocation
          : meetLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<CompetitionImageModel>?,
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

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get meetLocation {
    if (_value.meetLocation == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.meetLocation!, (value) {
      return _then(_value.copyWith(meetLocation: value) as $Val);
    });
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get startLocation {
    if (_value.startLocation == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.startLocation!, (value) {
      return _then(_value.copyWith(startLocation: value) as $Val);
    });
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
      String? title,
      String? discipline,
      String? date,
      String? time,
      String? level,
      int? distance,
      int? participantNumber,
      String? prerequisites,
      String? meetDate,
      String? meetAddress,
      int? meetPostalcode,
      String? meetCity,
      String? meetCountry,
      String? startDate,
      String? startAddress,
      String? eventType,
      LocationModel? meetLocation,
      LocationModel? startLocation,
      String? description,
      String? price,
      String? email,
      String? phone,
      String? website,
      List<CompetitionImageModel>? images,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      int? duration,
      bool? isFav,
      bool? isReserved});

  @override
  $LocationModelCopyWith<$Res>? get meetLocation;
  @override
  $LocationModelCopyWith<$Res>? get startLocation;
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
    Object? title = freezed,
    Object? discipline = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? level = freezed,
    Object? distance = freezed,
    Object? participantNumber = freezed,
    Object? prerequisites = freezed,
    Object? meetDate = freezed,
    Object? meetAddress = freezed,
    Object? meetPostalcode = freezed,
    Object? meetCity = freezed,
    Object? meetCountry = freezed,
    Object? startDate = freezed,
    Object? startAddress = freezed,
    Object? eventType = freezed,
    Object? meetLocation = freezed,
    Object? startLocation = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? duration = freezed,
    Object? isFav = freezed,
    Object? isReserved = freezed,
  }) {
    return _then(_$EventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      discipline: freezed == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      participantNumber: freezed == participantNumber
          ? _value.participantNumber
          : participantNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      meetDate: freezed == meetDate
          ? _value.meetDate
          : meetDate // ignore: cast_nullable_to_non_nullable
              as String?,
      meetAddress: freezed == meetAddress
          ? _value.meetAddress
          : meetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      meetPostalcode: freezed == meetPostalcode
          ? _value.meetPostalcode
          : meetPostalcode // ignore: cast_nullable_to_non_nullable
              as int?,
      meetCity: freezed == meetCity
          ? _value.meetCity
          : meetCity // ignore: cast_nullable_to_non_nullable
              as String?,
      meetCountry: freezed == meetCountry
          ? _value.meetCountry
          : meetCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startAddress: freezed == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      meetLocation: freezed == meetLocation
          ? _value.meetLocation
          : meetLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<CompetitionImageModel>?,
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
      this.title,
      this.discipline,
      this.date,
      this.time,
      this.level,
      this.distance,
      this.participantNumber,
      this.prerequisites,
      this.meetDate,
      this.meetAddress,
      this.meetPostalcode,
      this.meetCity,
      this.meetCountry,
      this.startDate,
      this.startAddress,
      this.eventType,
      this.meetLocation,
      this.startLocation,
      this.description,
      this.price,
      this.email,
      this.phone,
      this.website,
      final List<CompetitionImageModel>? images,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.duration,
      this.isFav,
      this.isReserved})
      : _images = images;

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? discipline;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? level;
  @override
  final int? distance;
  @override
  final int? participantNumber;
  @override
  final String? prerequisites;
  @override
  final String? meetDate;
  @override
  final String? meetAddress;
  @override
  final int? meetPostalcode;
  @override
  final String? meetCity;
  @override
  final String? meetCountry;
  @override
  final String? startDate;
  @override
  final String? startAddress;
  @override
  final String? eventType;
  @override
  final LocationModel? meetLocation;
  @override
  final LocationModel? startLocation;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? website;
  final List<CompetitionImageModel>? _images;
  @override
  List<CompetitionImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;
  @override
  final int? duration;
  @override
  final bool? isFav;
  @override
  final bool? isReserved;

  @override
  String toString() {
    return 'EventModel(id: $id, title: $title, discipline: $discipline, date: $date, time: $time, level: $level, distance: $distance, participantNumber: $participantNumber, prerequisites: $prerequisites, meetDate: $meetDate, meetAddress: $meetAddress, meetPostalcode: $meetPostalcode, meetCity: $meetCity, meetCountry: $meetCountry, startDate: $startDate, startAddress: $startAddress, eventType: $eventType, meetLocation: $meetLocation, startLocation: $startLocation, description: $description, price: $price, email: $email, phone: $phone, website: $website, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, duration: $duration, isFav: $isFav, isReserved: $isReserved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.discipline, discipline) ||
                other.discipline == discipline) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.participantNumber, participantNumber) ||
                other.participantNumber == participantNumber) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.meetDate, meetDate) ||
                other.meetDate == meetDate) &&
            (identical(other.meetAddress, meetAddress) ||
                other.meetAddress == meetAddress) &&
            (identical(other.meetPostalcode, meetPostalcode) ||
                other.meetPostalcode == meetPostalcode) &&
            (identical(other.meetCity, meetCity) ||
                other.meetCity == meetCity) &&
            (identical(other.meetCountry, meetCountry) ||
                other.meetCountry == meetCountry) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.startAddress, startAddress) ||
                other.startAddress == startAddress) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.meetLocation, meetLocation) ||
                other.meetLocation == meetLocation) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isFav, isFav) || other.isFav == isFav) &&
            (identical(other.isReserved, isReserved) ||
                other.isReserved == isReserved));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        discipline,
        date,
        time,
        level,
        distance,
        participantNumber,
        prerequisites,
        meetDate,
        meetAddress,
        meetPostalcode,
        meetCity,
        meetCountry,
        startDate,
        startAddress,
        eventType,
        meetLocation,
        startLocation,
        description,
        price,
        email,
        phone,
        website,
        const DeepCollectionEquality().hash(_images),
        createdAt,
        updatedAt,
        deletedAt,
        duration,
        isFav,
        isReserved
      ]);

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
      final String? title,
      final String? discipline,
      final String? date,
      final String? time,
      final String? level,
      final int? distance,
      final int? participantNumber,
      final String? prerequisites,
      final String? meetDate,
      final String? meetAddress,
      final int? meetPostalcode,
      final String? meetCity,
      final String? meetCountry,
      final String? startDate,
      final String? startAddress,
      final String? eventType,
      final LocationModel? meetLocation,
      final LocationModel? startLocation,
      final String? description,
      final String? price,
      final String? email,
      final String? phone,
      final String? website,
      final List<CompetitionImageModel>? images,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt,
      final int? duration,
      final bool? isFav,
      final bool? isReserved}) = _$EventModelImpl;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get discipline;
  @override
  String? get date;
  @override
  String? get time;
  @override
  String? get level;
  @override
  int? get distance;
  @override
  int? get participantNumber;
  @override
  String? get prerequisites;
  @override
  String? get meetDate;
  @override
  String? get meetAddress;
  @override
  int? get meetPostalcode;
  @override
  String? get meetCity;
  @override
  String? get meetCountry;
  @override
  String? get startDate;
  @override
  String? get startAddress;
  @override
  String? get eventType;
  @override
  LocationModel? get meetLocation;
  @override
  LocationModel? get startLocation;
  @override
  String? get description;
  @override
  String? get price;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  List<CompetitionImageModel>? get images;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;
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

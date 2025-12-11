// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) {
  return _ReservationModel.fromJson(json);
}

/// @nodoc
mixin _$ReservationModel {
  int get id => throw _privateConstructorUsedError;
  String? get reservationDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get participantCount => throw _privateConstructorUsedError;
  String? get fromDate => throw _privateConstructorUsedError;
  String? get toDate => throw _privateConstructorUsedError;
  String? get fromHour => throw _privateConstructorUsedError;
  String? get toHour => throw _privateConstructorUsedError;
  String? get totalPrice => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get teamName => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  ActivitysModel? get activity => throw _privateConstructorUsedError;
  CompitionsModel? get competition => throw _privateConstructorUsedError;
  EventModel? get event => throw _privateConstructorUsedError;
  bool? get isCancelled => throw _privateConstructorUsedError;
  bool? get isUpdated => throw _privateConstructorUsedError;

  /// Serializes this ReservationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationModelCopyWith<ReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationModelCopyWith<$Res> {
  factory $ReservationModelCopyWith(
          ReservationModel value, $Res Function(ReservationModel) then) =
      _$ReservationModelCopyWithImpl<$Res, ReservationModel>;
  @useResult
  $Res call(
      {int id,
      String? reservationDate,
      String? status,
      int? participantCount,
      String? fromDate,
      String? toDate,
      String? fromHour,
      String? toHour,
      String? totalPrice,
      String? notes,
      String? teamName,
      String? createdAt,
      String? updatedAt,
      ActivitysModel? activity,
      CompitionsModel? competition,
      EventModel? event,
      bool? isCancelled,
      bool? isUpdated});

  $ActivitysModelCopyWith<$Res>? get activity;
  $CompitionsModelCopyWith<$Res>? get competition;
  $EventModelCopyWith<$Res>? get event;
}

/// @nodoc
class _$ReservationModelCopyWithImpl<$Res, $Val extends ReservationModel>
    implements $ReservationModelCopyWith<$Res> {
  _$ReservationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reservationDate = freezed,
    Object? status = freezed,
    Object? participantCount = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? fromHour = freezed,
    Object? toHour = freezed,
    Object? totalPrice = freezed,
    Object? notes = freezed,
    Object? teamName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? activity = freezed,
    Object? competition = freezed,
    Object? event = freezed,
    Object? isCancelled = freezed,
    Object? isUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reservationDate: freezed == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      participantCount: freezed == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromHour: freezed == fromHour
          ? _value.fromHour
          : fromHour // ignore: cast_nullable_to_non_nullable
              as String?,
      toHour: freezed == toHour
          ? _value.toHour
          : toHour // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      teamName: freezed == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivitysModel?,
      competition: freezed == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as CompitionsModel?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel?,
      isCancelled: freezed == isCancelled
          ? _value.isCancelled
          : isCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpdated: freezed == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivitysModelCopyWith<$Res>? get activity {
    if (_value.activity == null) {
      return null;
    }

    return $ActivitysModelCopyWith<$Res>(_value.activity!, (value) {
      return _then(_value.copyWith(activity: value) as $Val);
    });
  }

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompitionsModelCopyWith<$Res>? get competition {
    if (_value.competition == null) {
      return null;
    }

    return $CompitionsModelCopyWith<$Res>(_value.competition!, (value) {
      return _then(_value.copyWith(competition: value) as $Val);
    });
  }

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $EventModelCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReservationModelImplCopyWith<$Res>
    implements $ReservationModelCopyWith<$Res> {
  factory _$$ReservationModelImplCopyWith(_$ReservationModelImpl value,
          $Res Function(_$ReservationModelImpl) then) =
      __$$ReservationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? reservationDate,
      String? status,
      int? participantCount,
      String? fromDate,
      String? toDate,
      String? fromHour,
      String? toHour,
      String? totalPrice,
      String? notes,
      String? teamName,
      String? createdAt,
      String? updatedAt,
      ActivitysModel? activity,
      CompitionsModel? competition,
      EventModel? event,
      bool? isCancelled,
      bool? isUpdated});

  @override
  $ActivitysModelCopyWith<$Res>? get activity;
  @override
  $CompitionsModelCopyWith<$Res>? get competition;
  @override
  $EventModelCopyWith<$Res>? get event;
}

/// @nodoc
class __$$ReservationModelImplCopyWithImpl<$Res>
    extends _$ReservationModelCopyWithImpl<$Res, _$ReservationModelImpl>
    implements _$$ReservationModelImplCopyWith<$Res> {
  __$$ReservationModelImplCopyWithImpl(_$ReservationModelImpl _value,
      $Res Function(_$ReservationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reservationDate = freezed,
    Object? status = freezed,
    Object? participantCount = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? fromHour = freezed,
    Object? toHour = freezed,
    Object? totalPrice = freezed,
    Object? notes = freezed,
    Object? teamName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? activity = freezed,
    Object? competition = freezed,
    Object? event = freezed,
    Object? isCancelled = freezed,
    Object? isUpdated = freezed,
  }) {
    return _then(_$ReservationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reservationDate: freezed == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      participantCount: freezed == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromHour: freezed == fromHour
          ? _value.fromHour
          : fromHour // ignore: cast_nullable_to_non_nullable
              as String?,
      toHour: freezed == toHour
          ? _value.toHour
          : toHour // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      teamName: freezed == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivitysModel?,
      competition: freezed == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as CompitionsModel?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel?,
      isCancelled: freezed == isCancelled
          ? _value.isCancelled
          : isCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpdated: freezed == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationModelImpl implements _ReservationModel {
  const _$ReservationModelImpl(
      {required this.id,
      this.reservationDate,
      this.status,
      this.participantCount,
      this.fromDate,
      this.toDate,
      this.fromHour,
      this.toHour,
      this.totalPrice,
      this.notes,
      this.teamName,
      this.createdAt,
      this.updatedAt,
      this.activity,
      this.competition,
      this.event,
      this.isCancelled,
      this.isUpdated});

  factory _$ReservationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? reservationDate;
  @override
  final String? status;
  @override
  final int? participantCount;
  @override
  final String? fromDate;
  @override
  final String? toDate;
  @override
  final String? fromHour;
  @override
  final String? toHour;
  @override
  final String? totalPrice;
  @override
  final String? notes;
  @override
  final String? teamName;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final ActivitysModel? activity;
  @override
  final CompitionsModel? competition;
  @override
  final EventModel? event;
  @override
  final bool? isCancelled;
  @override
  final bool? isUpdated;

  @override
  String toString() {
    return 'ReservationModel(id: $id, reservationDate: $reservationDate, status: $status, participantCount: $participantCount, fromDate: $fromDate, toDate: $toDate, fromHour: $fromHour, toHour: $toHour, totalPrice: $totalPrice, notes: $notes, teamName: $teamName, createdAt: $createdAt, updatedAt: $updatedAt, activity: $activity, competition: $competition, event: $event, isCancelled: $isCancelled, isUpdated: $isUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.participantCount, participantCount) ||
                other.participantCount == participantCount) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.fromHour, fromHour) ||
                other.fromHour == fromHour) &&
            (identical(other.toHour, toHour) || other.toHour == toHour) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.competition, competition) ||
                other.competition == competition) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.isCancelled, isCancelled) ||
                other.isCancelled == isCancelled) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      reservationDate,
      status,
      participantCount,
      fromDate,
      toDate,
      fromHour,
      toHour,
      totalPrice,
      notes,
      teamName,
      createdAt,
      updatedAt,
      activity,
      competition,
      event,
      isCancelled,
      isUpdated);

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationModelImplCopyWith<_$ReservationModelImpl> get copyWith =>
      __$$ReservationModelImplCopyWithImpl<_$ReservationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationModelImplToJson(
      this,
    );
  }
}

abstract class _ReservationModel implements ReservationModel {
  const factory _ReservationModel(
      {required final int id,
      final String? reservationDate,
      final String? status,
      final int? participantCount,
      final String? fromDate,
      final String? toDate,
      final String? fromHour,
      final String? toHour,
      final String? totalPrice,
      final String? notes,
      final String? teamName,
      final String? createdAt,
      final String? updatedAt,
      final ActivitysModel? activity,
      final CompitionsModel? competition,
      final EventModel? event,
      final bool? isCancelled,
      final bool? isUpdated}) = _$ReservationModelImpl;

  factory _ReservationModel.fromJson(Map<String, dynamic> json) =
      _$ReservationModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get reservationDate;
  @override
  String? get status;
  @override
  int? get participantCount;
  @override
  String? get fromDate;
  @override
  String? get toDate;
  @override
  String? get fromHour;
  @override
  String? get toHour;
  @override
  String? get totalPrice;
  @override
  String? get notes;
  @override
  String? get teamName;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  ActivitysModel? get activity;
  @override
  CompitionsModel? get competition;
  @override
  EventModel? get event;
  @override
  bool? get isCancelled;
  @override
  bool? get isUpdated;

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationModelImplCopyWith<_$ReservationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompetitionImageModel _$CompetitionImageModelFromJson(
    Map<String, dynamic> json) {
  return _CompetitionImageModel.fromJson(json);
}

/// @nodoc
mixin _$CompetitionImageModel {
  int get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this CompetitionImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompetitionImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompetitionImageModelCopyWith<CompetitionImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetitionImageModelCopyWith<$Res> {
  factory $CompetitionImageModelCopyWith(CompetitionImageModel value,
          $Res Function(CompetitionImageModel) then) =
      _$CompetitionImageModelCopyWithImpl<$Res, CompetitionImageModel>;
  @useResult
  $Res call(
      {int id,
      String? image,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class _$CompetitionImageModelCopyWithImpl<$Res,
        $Val extends CompetitionImageModel>
    implements $CompetitionImageModelCopyWith<$Res> {
  _$CompetitionImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompetitionImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$CompetitionImageModelImplCopyWith<$Res>
    implements $CompetitionImageModelCopyWith<$Res> {
  factory _$$CompetitionImageModelImplCopyWith(
          _$CompetitionImageModelImpl value,
          $Res Function(_$CompetitionImageModelImpl) then) =
      __$$CompetitionImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? image,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class __$$CompetitionImageModelImplCopyWithImpl<$Res>
    extends _$CompetitionImageModelCopyWithImpl<$Res,
        _$CompetitionImageModelImpl>
    implements _$$CompetitionImageModelImplCopyWith<$Res> {
  __$$CompetitionImageModelImplCopyWithImpl(_$CompetitionImageModelImpl _value,
      $Res Function(_$CompetitionImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompetitionImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$CompetitionImageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$CompetitionImageModelImpl implements _CompetitionImageModel {
  const _$CompetitionImageModelImpl(
      {required this.id,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory _$CompetitionImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompetitionImageModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'CompetitionImageModel(id: $id, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompetitionImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
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
      Object.hash(runtimeType, id, image, createdAt, updatedAt, deletedAt);

  /// Create a copy of CompetitionImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompetitionImageModelImplCopyWith<_$CompetitionImageModelImpl>
      get copyWith => __$$CompetitionImageModelImplCopyWithImpl<
          _$CompetitionImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompetitionImageModelImplToJson(
      this,
    );
  }
}

abstract class _CompetitionImageModel implements CompetitionImageModel {
  const factory _CompetitionImageModel(
      {required final int id,
      final String? image,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$CompetitionImageModelImpl;

  factory _CompetitionImageModel.fromJson(Map<String, dynamic> json) =
      _$CompetitionImageModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of CompetitionImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompetitionImageModelImplCopyWith<_$CompetitionImageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;

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
  $Res call({String? type, List<double>? coordinates});
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
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, List<double>? coordinates});
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
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$LocationModelImpl(
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
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl({this.type, final List<double>? coordinates})
      : _coordinates = coordinates;

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

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
      {final String? type,
      final List<double>? coordinates}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompitionsModel _$CompitionsModelFromJson(Map<String, dynamic> json) {
  return _CompitionsModel.fromJson(json);
}

/// @nodoc
mixin _$CompitionsModel {
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
  String? get eventType => throw _privateConstructorUsedError;
  String? get startAddress => throw _privateConstructorUsedError;
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

  /// Serializes this CompitionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompitionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompitionsModelCopyWith<CompitionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompitionsModelCopyWith<$Res> {
  factory $CompitionsModelCopyWith(
          CompitionsModel value, $Res Function(CompitionsModel) then) =
      _$CompitionsModelCopyWithImpl<$Res, CompitionsModel>;
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
      String? eventType,
      String? startAddress,
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
      String? deletedAt});

  $LocationModelCopyWith<$Res>? get meetLocation;
  $LocationModelCopyWith<$Res>? get startLocation;
}

/// @nodoc
class _$CompitionsModelCopyWithImpl<$Res, $Val extends CompitionsModel>
    implements $CompitionsModelCopyWith<$Res> {
  _$CompitionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompitionsModel
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
    Object? eventType = freezed,
    Object? startAddress = freezed,
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
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      startAddress: freezed == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }

  /// Create a copy of CompitionsModel
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

  /// Create a copy of CompitionsModel
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
abstract class _$$CompitionsModelImplCopyWith<$Res>
    implements $CompitionsModelCopyWith<$Res> {
  factory _$$CompitionsModelImplCopyWith(_$CompitionsModelImpl value,
          $Res Function(_$CompitionsModelImpl) then) =
      __$$CompitionsModelImplCopyWithImpl<$Res>;
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
      String? eventType,
      String? startAddress,
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
      String? deletedAt});

  @override
  $LocationModelCopyWith<$Res>? get meetLocation;
  @override
  $LocationModelCopyWith<$Res>? get startLocation;
}

/// @nodoc
class __$$CompitionsModelImplCopyWithImpl<$Res>
    extends _$CompitionsModelCopyWithImpl<$Res, _$CompitionsModelImpl>
    implements _$$CompitionsModelImplCopyWith<$Res> {
  __$$CompitionsModelImplCopyWithImpl(
      _$CompitionsModelImpl _value, $Res Function(_$CompitionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompitionsModel
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
    Object? eventType = freezed,
    Object? startAddress = freezed,
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
  }) {
    return _then(_$CompitionsModelImpl(
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
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      startAddress: freezed == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompitionsModelImpl implements _CompitionsModel {
  const _$CompitionsModelImpl(
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
      this.eventType,
      this.startAddress,
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
      this.deletedAt})
      : _images = images;

  factory _$CompitionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompitionsModelImplFromJson(json);

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
  final String? eventType;
  @override
  final String? startAddress;
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
  String toString() {
    return 'CompitionsModel(id: $id, title: $title, discipline: $discipline, date: $date, time: $time, level: $level, distance: $distance, participantNumber: $participantNumber, prerequisites: $prerequisites, meetDate: $meetDate, meetAddress: $meetAddress, meetPostalcode: $meetPostalcode, meetCity: $meetCity, meetCountry: $meetCountry, startDate: $startDate, eventType: $eventType, startAddress: $startAddress, meetLocation: $meetLocation, startLocation: $startLocation, description: $description, price: $price, email: $email, phone: $phone, website: $website, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompitionsModelImpl &&
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
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.startAddress, startAddress) ||
                other.startAddress == startAddress) &&
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
                other.deletedAt == deletedAt));
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
        eventType,
        startAddress,
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
        deletedAt
      ]);

  /// Create a copy of CompitionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompitionsModelImplCopyWith<_$CompitionsModelImpl> get copyWith =>
      __$$CompitionsModelImplCopyWithImpl<_$CompitionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompitionsModelImplToJson(
      this,
    );
  }
}

abstract class _CompitionsModel implements CompitionsModel {
  const factory _CompitionsModel(
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
      final String? eventType,
      final String? startAddress,
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
      final String? deletedAt}) = _$CompitionsModelImpl;

  factory _CompitionsModel.fromJson(Map<String, dynamic> json) =
      _$CompitionsModelImpl.fromJson;

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
  String? get eventType;
  @override
  String? get startAddress;
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

  /// Create a copy of CompitionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompitionsModelImplCopyWith<_$CompitionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityImageModel _$ActivityImageModelFromJson(Map<String, dynamic> json) {
  return _ActivityImageModel.fromJson(json);
}

/// @nodoc
mixin _$ActivityImageModel {
  int get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this ActivityImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityImageModelCopyWith<ActivityImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityImageModelCopyWith<$Res> {
  factory $ActivityImageModelCopyWith(
          ActivityImageModel value, $Res Function(ActivityImageModel) then) =
      _$ActivityImageModelCopyWithImpl<$Res, ActivityImageModel>;
  @useResult
  $Res call(
      {int id,
      String? image,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class _$ActivityImageModelCopyWithImpl<$Res, $Val extends ActivityImageModel>
    implements $ActivityImageModelCopyWith<$Res> {
  _$ActivityImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ActivityImageModelImplCopyWith<$Res>
    implements $ActivityImageModelCopyWith<$Res> {
  factory _$$ActivityImageModelImplCopyWith(_$ActivityImageModelImpl value,
          $Res Function(_$ActivityImageModelImpl) then) =
      __$$ActivityImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? image,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});
}

/// @nodoc
class __$$ActivityImageModelImplCopyWithImpl<$Res>
    extends _$ActivityImageModelCopyWithImpl<$Res, _$ActivityImageModelImpl>
    implements _$$ActivityImageModelImplCopyWith<$Res> {
  __$$ActivityImageModelImplCopyWithImpl(_$ActivityImageModelImpl _value,
      $Res Function(_$ActivityImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$ActivityImageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ActivityImageModelImpl implements _ActivityImageModel {
  const _$ActivityImageModelImpl(
      {required this.id,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory _$ActivityImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImageModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'ActivityImageModel(id: $id, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
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
      Object.hash(runtimeType, id, image, createdAt, updatedAt, deletedAt);

  /// Create a copy of ActivityImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImageModelImplCopyWith<_$ActivityImageModelImpl> get copyWith =>
      __$$ActivityImageModelImplCopyWithImpl<_$ActivityImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityImageModelImplToJson(
      this,
    );
  }
}

abstract class _ActivityImageModel implements ActivityImageModel {
  const factory _ActivityImageModel(
      {required final int id,
      final String? image,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$ActivityImageModelImpl;

  factory _ActivityImageModel.fromJson(Map<String, dynamic> json) =
      _$ActivityImageModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of ActivityImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImageModelImplCopyWith<_$ActivityImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpeningHourModel _$OpeningHourModelFromJson(Map<String, dynamic> json) {
  return _OpeningHourModel.fromJson(json);
}

/// @nodoc
mixin _$OpeningHourModel {
  String? get day => throw _privateConstructorUsedError;
  String? get open => throw _privateConstructorUsedError;
  String? get close => throw _privateConstructorUsedError;

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
  $Res call({String? day, String? open, String? close});
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
abstract class _$$OpeningHourModelImplCopyWith<$Res>
    implements $OpeningHourModelCopyWith<$Res> {
  factory _$$OpeningHourModelImplCopyWith(_$OpeningHourModelImpl value,
          $Res Function(_$OpeningHourModelImpl) then) =
      __$$OpeningHourModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? day, String? open, String? close});
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
    Object? day = freezed,
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_$OpeningHourModelImpl(
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
class _$OpeningHourModelImpl implements _OpeningHourModel {
  const _$OpeningHourModelImpl({this.day, this.open, this.close});

  factory _$OpeningHourModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHourModelImplFromJson(json);

  @override
  final String? day;
  @override
  final String? open;
  @override
  final String? close;

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
      {final String? day,
      final String? open,
      final String? close}) = _$OpeningHourModelImpl;

  factory _OpeningHourModel.fromJson(Map<String, dynamic> json) =
      _$OpeningHourModelImpl.fromJson;

  @override
  String? get day;
  @override
  String? get open;
  @override
  String? get close;

  /// Create a copy of OpeningHourModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpeningHourModelImplCopyWith<_$OpeningHourModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivitysModel _$ActivitysModelFromJson(Map<String, dynamic> json) {
  return _ActivitysModel.fromJson(json);
}

/// @nodoc
mixin _$ActivitysModel {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  int? get participantNumber => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  int? get postalCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get eventType => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  List<OpeningHourModel>? get openingHours =>
      throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  List<ActivityImageModel>? get images => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this ActivitysModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivitysModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivitysModelCopyWith<ActivitysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitysModelCopyWith<$Res> {
  factory $ActivitysModelCopyWith(
          ActivitysModel value, $Res Function(ActivitysModel) then) =
      _$ActivitysModelCopyWithImpl<$Res, ActivitysModel>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? distance,
      String? time,
      String? level,
      int? participantNumber,
      String? prerequisites,
      String? street,
      int? postalCode,
      String? city,
      String? eventType,
      String? country,
      LocationModel? location,
      String? description,
      String? price,
      List<OpeningHourModel>? openingHours,
      String? email,
      String? phone,
      String? website,
      List<ActivityImageModel>? images,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});

  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$ActivitysModelCopyWithImpl<$Res, $Val extends ActivitysModel>
    implements $ActivitysModelCopyWith<$Res> {
  _$ActivitysModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivitysModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? distance = freezed,
    Object? time = freezed,
    Object? level = freezed,
    Object? participantNumber = freezed,
    Object? prerequisites = freezed,
    Object? street = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? eventType = freezed,
    Object? country = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? openingHours = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
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
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      participantNumber: freezed == participantNumber
          ? _value.participantNumber
          : participantNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHourModel>?,
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
              as List<ActivityImageModel>?,
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

  /// Create a copy of ActivitysModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivitysModelImplCopyWith<$Res>
    implements $ActivitysModelCopyWith<$Res> {
  factory _$$ActivitysModelImplCopyWith(_$ActivitysModelImpl value,
          $Res Function(_$ActivitysModelImpl) then) =
      __$$ActivitysModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? distance,
      String? time,
      String? level,
      int? participantNumber,
      String? prerequisites,
      String? street,
      int? postalCode,
      String? city,
      String? eventType,
      String? country,
      LocationModel? location,
      String? description,
      String? price,
      List<OpeningHourModel>? openingHours,
      String? email,
      String? phone,
      String? website,
      List<ActivityImageModel>? images,
      String? createdAt,
      String? updatedAt,
      String? deletedAt});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ActivitysModelImplCopyWithImpl<$Res>
    extends _$ActivitysModelCopyWithImpl<$Res, _$ActivitysModelImpl>
    implements _$$ActivitysModelImplCopyWith<$Res> {
  __$$ActivitysModelImplCopyWithImpl(
      _$ActivitysModelImpl _value, $Res Function(_$ActivitysModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivitysModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? distance = freezed,
    Object? time = freezed,
    Object? level = freezed,
    Object? participantNumber = freezed,
    Object? prerequisites = freezed,
    Object? street = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? eventType = freezed,
    Object? country = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? openingHours = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$ActivitysModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      participantNumber: freezed == participantNumber
          ? _value.participantNumber
          : participantNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHourModel>?,
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
              as List<ActivityImageModel>?,
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
class _$ActivitysModelImpl implements _ActivitysModel {
  const _$ActivitysModelImpl(
      {required this.id,
      this.title,
      this.distance,
      this.time,
      this.level,
      this.participantNumber,
      this.prerequisites,
      this.street,
      this.postalCode,
      this.city,
      this.eventType,
      this.country,
      this.location,
      this.description,
      this.price,
      final List<OpeningHourModel>? openingHours,
      this.email,
      this.phone,
      this.website,
      final List<ActivityImageModel>? images,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : _openingHours = openingHours,
        _images = images;

  factory _$ActivitysModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivitysModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? distance;
  @override
  final String? time;
  @override
  final String? level;
  @override
  final int? participantNumber;
  @override
  final String? prerequisites;
  @override
  final String? street;
  @override
  final int? postalCode;
  @override
  final String? city;
  @override
  final String? eventType;
  @override
  final String? country;
  @override
  final LocationModel? location;
  @override
  final String? description;
  @override
  final String? price;
  final List<OpeningHourModel>? _openingHours;
  @override
  List<OpeningHourModel>? get openingHours {
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
  final List<ActivityImageModel>? _images;
  @override
  List<ActivityImageModel>? get images {
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
  String toString() {
    return 'ActivitysModel(id: $id, title: $title, distance: $distance, time: $time, level: $level, participantNumber: $participantNumber, prerequisites: $prerequisites, street: $street, postalCode: $postalCode, city: $city, eventType: $eventType, country: $country, location: $location, description: $description, price: $price, openingHours: $openingHours, email: $email, phone: $phone, website: $website, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitysModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.participantNumber, participantNumber) ||
                other.participantNumber == participantNumber) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._openingHours, _openingHours) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        distance,
        time,
        level,
        participantNumber,
        prerequisites,
        street,
        postalCode,
        city,
        eventType,
        country,
        location,
        description,
        price,
        const DeepCollectionEquality().hash(_openingHours),
        email,
        phone,
        website,
        const DeepCollectionEquality().hash(_images),
        createdAt,
        updatedAt,
        deletedAt
      ]);

  /// Create a copy of ActivitysModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitysModelImplCopyWith<_$ActivitysModelImpl> get copyWith =>
      __$$ActivitysModelImplCopyWithImpl<_$ActivitysModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivitysModelImplToJson(
      this,
    );
  }
}

abstract class _ActivitysModel implements ActivitysModel {
  const factory _ActivitysModel(
      {required final int id,
      final String? title,
      final String? distance,
      final String? time,
      final String? level,
      final int? participantNumber,
      final String? prerequisites,
      final String? street,
      final int? postalCode,
      final String? city,
      final String? eventType,
      final String? country,
      final LocationModel? location,
      final String? description,
      final String? price,
      final List<OpeningHourModel>? openingHours,
      final String? email,
      final String? phone,
      final String? website,
      final List<ActivityImageModel>? images,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt}) = _$ActivitysModelImpl;

  factory _ActivitysModel.fromJson(Map<String, dynamic> json) =
      _$ActivitysModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get distance;
  @override
  String? get time;
  @override
  String? get level;
  @override
  int? get participantNumber;
  @override
  String? get prerequisites;
  @override
  String? get street;
  @override
  int? get postalCode;
  @override
  String? get city;
  @override
  String? get eventType;
  @override
  String? get country;
  @override
  LocationModel? get location;
  @override
  String? get description;
  @override
  String? get price;
  @override
  List<OpeningHourModel>? get openingHours;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  List<ActivityImageModel>? get images;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of ActivitysModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivitysModelImplCopyWith<_$ActivitysModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReservationState _$ReservationStateFromJson(Map<String, dynamic> json) {
  return _ReservationState.fromJson(json);
}

/// @nodoc
mixin _$ReservationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingReservation => throw _privateConstructorUsedError;
  bool get isCancelLoading => throw _privateConstructorUsedError;
  int get selectedId => throw _privateConstructorUsedError;
  String get selectedType => throw _privateConstructorUsedError;
  String get reservationDate => throw _privateConstructorUsedError;
  String get fromHour => throw _privateConstructorUsedError;
  String get toHour => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;
  int get childrenCount => throw _privateConstructorUsedError;
  int get adultsCount => throw _privateConstructorUsedError;
  int get participantCount => throw _privateConstructorUsedError;
  bool get isLanched => throw _privateConstructorUsedError;
  List<ReservationModel> get reservations => throw _privateConstructorUsedError;
  List<ReservationModel> get doAgainReservations =>
      throw _privateConstructorUsedError;
  ReservationModel? get selectedReservation =>
      throw _privateConstructorUsedError;
  CompitionModel? get compition => throw _privateConstructorUsedError;
  ActivityModel? get activity => throw _privateConstructorUsedError;
  EventModel? get event => throw _privateConstructorUsedError;

  /// Serializes this ReservationState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationStateCopyWith<ReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationStateCopyWith<$Res> {
  factory $ReservationStateCopyWith(
          ReservationState value, $Res Function(ReservationState) then) =
      _$ReservationStateCopyWithImpl<$Res, ReservationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingReservation,
      bool isCancelLoading,
      int selectedId,
      String selectedType,
      String reservationDate,
      String fromHour,
      String toHour,
      String totalPrice,
      int childrenCount,
      int adultsCount,
      int participantCount,
      bool isLanched,
      List<ReservationModel> reservations,
      List<ReservationModel> doAgainReservations,
      ReservationModel? selectedReservation,
      CompitionModel? compition,
      ActivityModel? activity,
      EventModel? event});

  $ReservationModelCopyWith<$Res>? get selectedReservation;
  $CompitionModelCopyWith<$Res>? get compition;
  $ActivityModelCopyWith<$Res>? get activity;
  $EventModelCopyWith<$Res>? get event;
}

/// @nodoc
class _$ReservationStateCopyWithImpl<$Res, $Val extends ReservationState>
    implements $ReservationStateCopyWith<$Res> {
  _$ReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingReservation = null,
    Object? isCancelLoading = null,
    Object? selectedId = null,
    Object? selectedType = null,
    Object? reservationDate = null,
    Object? fromHour = null,
    Object? toHour = null,
    Object? totalPrice = null,
    Object? childrenCount = null,
    Object? adultsCount = null,
    Object? participantCount = null,
    Object? isLanched = null,
    Object? reservations = null,
    Object? doAgainReservations = null,
    Object? selectedReservation = freezed,
    Object? compition = freezed,
    Object? activity = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingReservation: null == isLoadingReservation
          ? _value.isLoadingReservation
          : isLoadingReservation // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelLoading: null == isCancelLoading
          ? _value.isCancelLoading
          : isCancelLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedId: null == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as String,
      reservationDate: null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String,
      fromHour: null == fromHour
          ? _value.fromHour
          : fromHour // ignore: cast_nullable_to_non_nullable
              as String,
      toHour: null == toHour
          ? _value.toHour
          : toHour // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      childrenCount: null == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int,
      adultsCount: null == adultsCount
          ? _value.adultsCount
          : adultsCount // ignore: cast_nullable_to_non_nullable
              as int,
      participantCount: null == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLanched: null == isLanched
          ? _value.isLanched
          : isLanched // ignore: cast_nullable_to_non_nullable
              as bool,
      reservations: null == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<ReservationModel>,
      doAgainReservations: null == doAgainReservations
          ? _value.doAgainReservations
          : doAgainReservations // ignore: cast_nullable_to_non_nullable
              as List<ReservationModel>,
      selectedReservation: freezed == selectedReservation
          ? _value.selectedReservation
          : selectedReservation // ignore: cast_nullable_to_non_nullable
              as ReservationModel?,
      compition: freezed == compition
          ? _value.compition
          : compition // ignore: cast_nullable_to_non_nullable
              as CompitionModel?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel?,
    ) as $Val);
  }

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReservationModelCopyWith<$Res>? get selectedReservation {
    if (_value.selectedReservation == null) {
      return null;
    }

    return $ReservationModelCopyWith<$Res>(_value.selectedReservation!,
        (value) {
      return _then(_value.copyWith(selectedReservation: value) as $Val);
    });
  }

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompitionModelCopyWith<$Res>? get compition {
    if (_value.compition == null) {
      return null;
    }

    return $CompitionModelCopyWith<$Res>(_value.compition!, (value) {
      return _then(_value.copyWith(compition: value) as $Val);
    });
  }

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityModelCopyWith<$Res>? get activity {
    if (_value.activity == null) {
      return null;
    }

    return $ActivityModelCopyWith<$Res>(_value.activity!, (value) {
      return _then(_value.copyWith(activity: value) as $Val);
    });
  }

  /// Create a copy of ReservationState
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
abstract class _$$ReservationStateImplCopyWith<$Res>
    implements $ReservationStateCopyWith<$Res> {
  factory _$$ReservationStateImplCopyWith(_$ReservationStateImpl value,
          $Res Function(_$ReservationStateImpl) then) =
      __$$ReservationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingReservation,
      bool isCancelLoading,
      int selectedId,
      String selectedType,
      String reservationDate,
      String fromHour,
      String toHour,
      String totalPrice,
      int childrenCount,
      int adultsCount,
      int participantCount,
      bool isLanched,
      List<ReservationModel> reservations,
      List<ReservationModel> doAgainReservations,
      ReservationModel? selectedReservation,
      CompitionModel? compition,
      ActivityModel? activity,
      EventModel? event});

  @override
  $ReservationModelCopyWith<$Res>? get selectedReservation;
  @override
  $CompitionModelCopyWith<$Res>? get compition;
  @override
  $ActivityModelCopyWith<$Res>? get activity;
  @override
  $EventModelCopyWith<$Res>? get event;
}

/// @nodoc
class __$$ReservationStateImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$ReservationStateImpl>
    implements _$$ReservationStateImplCopyWith<$Res> {
  __$$ReservationStateImplCopyWithImpl(_$ReservationStateImpl _value,
      $Res Function(_$ReservationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingReservation = null,
    Object? isCancelLoading = null,
    Object? selectedId = null,
    Object? selectedType = null,
    Object? reservationDate = null,
    Object? fromHour = null,
    Object? toHour = null,
    Object? totalPrice = null,
    Object? childrenCount = null,
    Object? adultsCount = null,
    Object? participantCount = null,
    Object? isLanched = null,
    Object? reservations = null,
    Object? doAgainReservations = null,
    Object? selectedReservation = freezed,
    Object? compition = freezed,
    Object? activity = freezed,
    Object? event = freezed,
  }) {
    return _then(_$ReservationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingReservation: null == isLoadingReservation
          ? _value.isLoadingReservation
          : isLoadingReservation // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelLoading: null == isCancelLoading
          ? _value.isCancelLoading
          : isCancelLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedId: null == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as String,
      reservationDate: null == reservationDate
          ? _value.reservationDate
          : reservationDate // ignore: cast_nullable_to_non_nullable
              as String,
      fromHour: null == fromHour
          ? _value.fromHour
          : fromHour // ignore: cast_nullable_to_non_nullable
              as String,
      toHour: null == toHour
          ? _value.toHour
          : toHour // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      childrenCount: null == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int,
      adultsCount: null == adultsCount
          ? _value.adultsCount
          : adultsCount // ignore: cast_nullable_to_non_nullable
              as int,
      participantCount: null == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLanched: null == isLanched
          ? _value.isLanched
          : isLanched // ignore: cast_nullable_to_non_nullable
              as bool,
      reservations: null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<ReservationModel>,
      doAgainReservations: null == doAgainReservations
          ? _value._doAgainReservations
          : doAgainReservations // ignore: cast_nullable_to_non_nullable
              as List<ReservationModel>,
      selectedReservation: freezed == selectedReservation
          ? _value.selectedReservation
          : selectedReservation // ignore: cast_nullable_to_non_nullable
              as ReservationModel?,
      compition: freezed == compition
          ? _value.compition
          : compition // ignore: cast_nullable_to_non_nullable
              as CompitionModel?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationStateImpl implements _ReservationState {
  const _$ReservationStateImpl(
      {this.isLoading = false,
      this.isLoadingReservation = true,
      this.isCancelLoading = false,
      this.selectedId = 0,
      this.selectedType = '',
      this.reservationDate = '',
      this.fromHour = '',
      this.toHour = '',
      this.totalPrice = '',
      this.childrenCount = 0,
      this.adultsCount = 1,
      this.participantCount = 0,
      this.isLanched = false,
      final List<ReservationModel> reservations = const [],
      final List<ReservationModel> doAgainReservations = const [],
      this.selectedReservation,
      this.compition,
      this.activity,
      this.event})
      : _reservations = reservations,
        _doAgainReservations = doAgainReservations;

  factory _$ReservationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingReservation;
  @override
  @JsonKey()
  final bool isCancelLoading;
  @override
  @JsonKey()
  final int selectedId;
  @override
  @JsonKey()
  final String selectedType;
  @override
  @JsonKey()
  final String reservationDate;
  @override
  @JsonKey()
  final String fromHour;
  @override
  @JsonKey()
  final String toHour;
  @override
  @JsonKey()
  final String totalPrice;
  @override
  @JsonKey()
  final int childrenCount;
  @override
  @JsonKey()
  final int adultsCount;
  @override
  @JsonKey()
  final int participantCount;
  @override
  @JsonKey()
  final bool isLanched;
  final List<ReservationModel> _reservations;
  @override
  @JsonKey()
  List<ReservationModel> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  final List<ReservationModel> _doAgainReservations;
  @override
  @JsonKey()
  List<ReservationModel> get doAgainReservations {
    if (_doAgainReservations is EqualUnmodifiableListView)
      return _doAgainReservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doAgainReservations);
  }

  @override
  final ReservationModel? selectedReservation;
  @override
  final CompitionModel? compition;
  @override
  final ActivityModel? activity;
  @override
  final EventModel? event;

  @override
  String toString() {
    return 'ReservationState(isLoading: $isLoading, isLoadingReservation: $isLoadingReservation, isCancelLoading: $isCancelLoading, selectedId: $selectedId, selectedType: $selectedType, reservationDate: $reservationDate, fromHour: $fromHour, toHour: $toHour, totalPrice: $totalPrice, childrenCount: $childrenCount, adultsCount: $adultsCount, participantCount: $participantCount, isLanched: $isLanched, reservations: $reservations, doAgainReservations: $doAgainReservations, selectedReservation: $selectedReservation, compition: $compition, activity: $activity, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingReservation, isLoadingReservation) ||
                other.isLoadingReservation == isLoadingReservation) &&
            (identical(other.isCancelLoading, isCancelLoading) ||
                other.isCancelLoading == isCancelLoading) &&
            (identical(other.selectedId, selectedId) ||
                other.selectedId == selectedId) &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.reservationDate, reservationDate) ||
                other.reservationDate == reservationDate) &&
            (identical(other.fromHour, fromHour) ||
                other.fromHour == fromHour) &&
            (identical(other.toHour, toHour) || other.toHour == toHour) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.childrenCount, childrenCount) ||
                other.childrenCount == childrenCount) &&
            (identical(other.adultsCount, adultsCount) ||
                other.adultsCount == adultsCount) &&
            (identical(other.participantCount, participantCount) ||
                other.participantCount == participantCount) &&
            (identical(other.isLanched, isLanched) ||
                other.isLanched == isLanched) &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations) &&
            const DeepCollectionEquality()
                .equals(other._doAgainReservations, _doAgainReservations) &&
            (identical(other.selectedReservation, selectedReservation) ||
                other.selectedReservation == selectedReservation) &&
            (identical(other.compition, compition) ||
                other.compition == compition) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        isLoadingReservation,
        isCancelLoading,
        selectedId,
        selectedType,
        reservationDate,
        fromHour,
        toHour,
        totalPrice,
        childrenCount,
        adultsCount,
        participantCount,
        isLanched,
        const DeepCollectionEquality().hash(_reservations),
        const DeepCollectionEquality().hash(_doAgainReservations),
        selectedReservation,
        compition,
        activity,
        event
      ]);

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationStateImplCopyWith<_$ReservationStateImpl> get copyWith =>
      __$$ReservationStateImplCopyWithImpl<_$ReservationStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationStateImplToJson(
      this,
    );
  }
}

abstract class _ReservationState implements ReservationState {
  const factory _ReservationState(
      {final bool isLoading,
      final bool isLoadingReservation,
      final bool isCancelLoading,
      final int selectedId,
      final String selectedType,
      final String reservationDate,
      final String fromHour,
      final String toHour,
      final String totalPrice,
      final int childrenCount,
      final int adultsCount,
      final int participantCount,
      final bool isLanched,
      final List<ReservationModel> reservations,
      final List<ReservationModel> doAgainReservations,
      final ReservationModel? selectedReservation,
      final CompitionModel? compition,
      final ActivityModel? activity,
      final EventModel? event}) = _$ReservationStateImpl;

  factory _ReservationState.fromJson(Map<String, dynamic> json) =
      _$ReservationStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  bool get isLoadingReservation;
  @override
  bool get isCancelLoading;
  @override
  int get selectedId;
  @override
  String get selectedType;
  @override
  String get reservationDate;
  @override
  String get fromHour;
  @override
  String get toHour;
  @override
  String get totalPrice;
  @override
  int get childrenCount;
  @override
  int get adultsCount;
  @override
  int get participantCount;
  @override
  bool get isLanched;
  @override
  List<ReservationModel> get reservations;
  @override
  List<ReservationModel> get doAgainReservations;
  @override
  ReservationModel? get selectedReservation;
  @override
  CompitionModel? get compition;
  @override
  ActivityModel? get activity;
  @override
  EventModel? get event;

  /// Create a copy of ReservationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationStateImplCopyWith<_$ReservationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

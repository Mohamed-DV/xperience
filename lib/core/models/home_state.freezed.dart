// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ActivitesModel> get selectedCategories =>
      throw _privateConstructorUsedError;
  List<ActivitesModel> get unSelectedCategories =>
      throw _privateConstructorUsedError;
  List<EventModel> get competitions => throw _privateConstructorUsedError;
  List<EventModel> get activities => throw _privateConstructorUsedError;
  List<EventModel> get events => throw _privateConstructorUsedError;
  List<EventModel> get favoris => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get periode => throw _privateConstructorUsedError;
  String get voyageurs => throw _privateConstructorUsedError;
  int get adultes => throw _privateConstructorUsedError;
  int get enfants => throw _privateConstructorUsedError;
  int get finalAdultes => throw _privateConstructorUsedError;
  int get finalEnfants => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate =>
      throw _privateConstructorUsedError; // @Default([]) List<FavoriteListModel> favoriteLists,
  EventModel? get selectedEvent => throw _privateConstructorUsedError;
  List<EventModel> get searchedCompetitions =>
      throw _privateConstructorUsedError;
  List<EventModel> get searchedActivities => throw _privateConstructorUsedError;
  List<EventModel> get searchedEvents => throw _privateConstructorUsedError;

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<ActivitesModel> selectedCategories,
      List<ActivitesModel> unSelectedCategories,
      List<EventModel> competitions,
      List<EventModel> activities,
      List<EventModel> events,
      List<EventModel> favoris,
      String destination,
      String periode,
      String voyageurs,
      int adultes,
      int enfants,
      int finalAdultes,
      int finalEnfants,
      DateTime? startDate,
      DateTime? endDate,
      EventModel? selectedEvent,
      List<EventModel> searchedCompetitions,
      List<EventModel> searchedActivities,
      List<EventModel> searchedEvents});

  $EventModelCopyWith<$Res>? get selectedEvent;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedCategories = null,
    Object? unSelectedCategories = null,
    Object? competitions = null,
    Object? activities = null,
    Object? events = null,
    Object? favoris = null,
    Object? destination = null,
    Object? periode = null,
    Object? voyageurs = null,
    Object? adultes = null,
    Object? enfants = null,
    Object? finalAdultes = null,
    Object? finalEnfants = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? selectedEvent = freezed,
    Object? searchedCompetitions = null,
    Object? searchedActivities = null,
    Object? searchedEvents = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCategories: null == selectedCategories
          ? _value.selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<ActivitesModel>,
      unSelectedCategories: null == unSelectedCategories
          ? _value.unSelectedCategories
          : unSelectedCategories // ignore: cast_nullable_to_non_nullable
              as List<ActivitesModel>,
      competitions: null == competitions
          ? _value.competitions
          : competitions // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      favoris: null == favoris
          ? _value.favoris
          : favoris // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      periode: null == periode
          ? _value.periode
          : periode // ignore: cast_nullable_to_non_nullable
              as String,
      voyageurs: null == voyageurs
          ? _value.voyageurs
          : voyageurs // ignore: cast_nullable_to_non_nullable
              as String,
      adultes: null == adultes
          ? _value.adultes
          : adultes // ignore: cast_nullable_to_non_nullable
              as int,
      enfants: null == enfants
          ? _value.enfants
          : enfants // ignore: cast_nullable_to_non_nullable
              as int,
      finalAdultes: null == finalAdultes
          ? _value.finalAdultes
          : finalAdultes // ignore: cast_nullable_to_non_nullable
              as int,
      finalEnfants: null == finalEnfants
          ? _value.finalEnfants
          : finalEnfants // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEvent: freezed == selectedEvent
          ? _value.selectedEvent
          : selectedEvent // ignore: cast_nullable_to_non_nullable
              as EventModel?,
      searchedCompetitions: null == searchedCompetitions
          ? _value.searchedCompetitions
          : searchedCompetitions // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      searchedActivities: null == searchedActivities
          ? _value.searchedActivities
          : searchedActivities // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      searchedEvents: null == searchedEvents
          ? _value.searchedEvents
          : searchedEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<$Res>? get selectedEvent {
    if (_value.selectedEvent == null) {
      return null;
    }

    return $EventModelCopyWith<$Res>(_value.selectedEvent!, (value) {
      return _then(_value.copyWith(selectedEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<ActivitesModel> selectedCategories,
      List<ActivitesModel> unSelectedCategories,
      List<EventModel> competitions,
      List<EventModel> activities,
      List<EventModel> events,
      List<EventModel> favoris,
      String destination,
      String periode,
      String voyageurs,
      int adultes,
      int enfants,
      int finalAdultes,
      int finalEnfants,
      DateTime? startDate,
      DateTime? endDate,
      EventModel? selectedEvent,
      List<EventModel> searchedCompetitions,
      List<EventModel> searchedActivities,
      List<EventModel> searchedEvents});

  @override
  $EventModelCopyWith<$Res>? get selectedEvent;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedCategories = null,
    Object? unSelectedCategories = null,
    Object? competitions = null,
    Object? activities = null,
    Object? events = null,
    Object? favoris = null,
    Object? destination = null,
    Object? periode = null,
    Object? voyageurs = null,
    Object? adultes = null,
    Object? enfants = null,
    Object? finalAdultes = null,
    Object? finalEnfants = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? selectedEvent = freezed,
    Object? searchedCompetitions = null,
    Object? searchedActivities = null,
    Object? searchedEvents = null,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCategories: null == selectedCategories
          ? _value._selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<ActivitesModel>,
      unSelectedCategories: null == unSelectedCategories
          ? _value._unSelectedCategories
          : unSelectedCategories // ignore: cast_nullable_to_non_nullable
              as List<ActivitesModel>,
      competitions: null == competitions
          ? _value._competitions
          : competitions // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      favoris: null == favoris
          ? _value._favoris
          : favoris // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      periode: null == periode
          ? _value.periode
          : periode // ignore: cast_nullable_to_non_nullable
              as String,
      voyageurs: null == voyageurs
          ? _value.voyageurs
          : voyageurs // ignore: cast_nullable_to_non_nullable
              as String,
      adultes: null == adultes
          ? _value.adultes
          : adultes // ignore: cast_nullable_to_non_nullable
              as int,
      enfants: null == enfants
          ? _value.enfants
          : enfants // ignore: cast_nullable_to_non_nullable
              as int,
      finalAdultes: null == finalAdultes
          ? _value.finalAdultes
          : finalAdultes // ignore: cast_nullable_to_non_nullable
              as int,
      finalEnfants: null == finalEnfants
          ? _value.finalEnfants
          : finalEnfants // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEvent: freezed == selectedEvent
          ? _value.selectedEvent
          : selectedEvent // ignore: cast_nullable_to_non_nullable
              as EventModel?,
      searchedCompetitions: null == searchedCompetitions
          ? _value._searchedCompetitions
          : searchedCompetitions // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      searchedActivities: null == searchedActivities
          ? _value._searchedActivities
          : searchedActivities // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      searchedEvents: null == searchedEvents
          ? _value._searchedEvents
          : searchedEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.isLoading = false,
      final List<ActivitesModel> selectedCategories = const [],
      final List<ActivitesModel> unSelectedCategories = const [],
      final List<EventModel> competitions = const [],
      final List<EventModel> activities = const [],
      final List<EventModel> events = const [],
      final List<EventModel> favoris = const [],
      this.destination = '',
      this.periode = '',
      this.voyageurs = '',
      this.adultes = 0,
      this.enfants = 0,
      this.finalAdultes = 0,
      this.finalEnfants = 0,
      this.startDate,
      this.endDate,
      this.selectedEvent,
      final List<EventModel> searchedCompetitions = const [],
      final List<EventModel> searchedActivities = const [],
      final List<EventModel> searchedEvents = const []})
      : _selectedCategories = selectedCategories,
        _unSelectedCategories = unSelectedCategories,
        _competitions = competitions,
        _activities = activities,
        _events = events,
        _favoris = favoris,
        _searchedCompetitions = searchedCompetitions,
        _searchedActivities = searchedActivities,
        _searchedEvents = searchedEvents;

  factory _$HomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ActivitesModel> _selectedCategories;
  @override
  @JsonKey()
  List<ActivitesModel> get selectedCategories {
    if (_selectedCategories is EqualUnmodifiableListView)
      return _selectedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategories);
  }

  final List<ActivitesModel> _unSelectedCategories;
  @override
  @JsonKey()
  List<ActivitesModel> get unSelectedCategories {
    if (_unSelectedCategories is EqualUnmodifiableListView)
      return _unSelectedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unSelectedCategories);
  }

  final List<EventModel> _competitions;
  @override
  @JsonKey()
  List<EventModel> get competitions {
    if (_competitions is EqualUnmodifiableListView) return _competitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_competitions);
  }

  final List<EventModel> _activities;
  @override
  @JsonKey()
  List<EventModel> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  final List<EventModel> _events;
  @override
  @JsonKey()
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<EventModel> _favoris;
  @override
  @JsonKey()
  List<EventModel> get favoris {
    if (_favoris is EqualUnmodifiableListView) return _favoris;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoris);
  }

  @override
  @JsonKey()
  final String destination;
  @override
  @JsonKey()
  final String periode;
  @override
  @JsonKey()
  final String voyageurs;
  @override
  @JsonKey()
  final int adultes;
  @override
  @JsonKey()
  final int enfants;
  @override
  @JsonKey()
  final int finalAdultes;
  @override
  @JsonKey()
  final int finalEnfants;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
// @Default([]) List<FavoriteListModel> favoriteLists,
  @override
  final EventModel? selectedEvent;
  final List<EventModel> _searchedCompetitions;
  @override
  @JsonKey()
  List<EventModel> get searchedCompetitions {
    if (_searchedCompetitions is EqualUnmodifiableListView)
      return _searchedCompetitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedCompetitions);
  }

  final List<EventModel> _searchedActivities;
  @override
  @JsonKey()
  List<EventModel> get searchedActivities {
    if (_searchedActivities is EqualUnmodifiableListView)
      return _searchedActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedActivities);
  }

  final List<EventModel> _searchedEvents;
  @override
  @JsonKey()
  List<EventModel> get searchedEvents {
    if (_searchedEvents is EqualUnmodifiableListView) return _searchedEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedEvents);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, selectedCategories: $selectedCategories, unSelectedCategories: $unSelectedCategories, competitions: $competitions, activities: $activities, events: $events, favoris: $favoris, destination: $destination, periode: $periode, voyageurs: $voyageurs, adultes: $adultes, enfants: $enfants, finalAdultes: $finalAdultes, finalEnfants: $finalEnfants, startDate: $startDate, endDate: $endDate, selectedEvent: $selectedEvent, searchedCompetitions: $searchedCompetitions, searchedActivities: $searchedActivities, searchedEvents: $searchedEvents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategories, _selectedCategories) &&
            const DeepCollectionEquality()
                .equals(other._unSelectedCategories, _unSelectedCategories) &&
            const DeepCollectionEquality()
                .equals(other._competitions, _competitions) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._favoris, _favoris) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.periode, periode) || other.periode == periode) &&
            (identical(other.voyageurs, voyageurs) ||
                other.voyageurs == voyageurs) &&
            (identical(other.adultes, adultes) || other.adultes == adultes) &&
            (identical(other.enfants, enfants) || other.enfants == enfants) &&
            (identical(other.finalAdultes, finalAdultes) ||
                other.finalAdultes == finalAdultes) &&
            (identical(other.finalEnfants, finalEnfants) ||
                other.finalEnfants == finalEnfants) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.selectedEvent, selectedEvent) ||
                other.selectedEvent == selectedEvent) &&
            const DeepCollectionEquality()
                .equals(other._searchedCompetitions, _searchedCompetitions) &&
            const DeepCollectionEquality()
                .equals(other._searchedActivities, _searchedActivities) &&
            const DeepCollectionEquality()
                .equals(other._searchedEvents, _searchedEvents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        const DeepCollectionEquality().hash(_selectedCategories),
        const DeepCollectionEquality().hash(_unSelectedCategories),
        const DeepCollectionEquality().hash(_competitions),
        const DeepCollectionEquality().hash(_activities),
        const DeepCollectionEquality().hash(_events),
        const DeepCollectionEquality().hash(_favoris),
        destination,
        periode,
        voyageurs,
        adultes,
        enfants,
        finalAdultes,
        finalEnfants,
        startDate,
        endDate,
        selectedEvent,
        const DeepCollectionEquality().hash(_searchedCompetitions),
        const DeepCollectionEquality().hash(_searchedActivities),
        const DeepCollectionEquality().hash(_searchedEvents)
      ]);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateImplToJson(
      this,
    );
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool isLoading,
      final List<ActivitesModel> selectedCategories,
      final List<ActivitesModel> unSelectedCategories,
      final List<EventModel> competitions,
      final List<EventModel> activities,
      final List<EventModel> events,
      final List<EventModel> favoris,
      final String destination,
      final String periode,
      final String voyageurs,
      final int adultes,
      final int enfants,
      final int finalAdultes,
      final int finalEnfants,
      final DateTime? startDate,
      final DateTime? endDate,
      final EventModel? selectedEvent,
      final List<EventModel> searchedCompetitions,
      final List<EventModel> searchedActivities,
      final List<EventModel> searchedEvents}) = _$HomeStateImpl;

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$HomeStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ActivitesModel> get selectedCategories;
  @override
  List<ActivitesModel> get unSelectedCategories;
  @override
  List<EventModel> get competitions;
  @override
  List<EventModel> get activities;
  @override
  List<EventModel> get events;
  @override
  List<EventModel> get favoris;
  @override
  String get destination;
  @override
  String get periode;
  @override
  String get voyageurs;
  @override
  int get adultes;
  @override
  int get enfants;
  @override
  int get finalAdultes;
  @override
  int get finalEnfants;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate; // @Default([]) List<FavoriteListModel> favoriteLists,
  @override
  EventModel? get selectedEvent;
  @override
  List<EventModel> get searchedCompetitions;
  @override
  List<EventModel> get searchedActivities;
  @override
  List<EventModel> get searchedEvents;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

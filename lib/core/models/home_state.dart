import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_xplorer_app/core/models/activites_model.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<ActivitesModel> selectedCategories,
    @Default([]) List<ActivitesModel> unSelectedCategories,
    @Default([]) List<EventModel> competitions,
    @Default([]) List<EventModel> activities,
    @Default([]) List<EventModel> events,
    @Default([]) List<EventModel> favoris,
    @Default('') String destination,
    @Default('') String periode,
    @Default('') String voyageurs,
    @Default(0) int adultes,
    @Default(0) int enfants,
    @Default(0) int finalAdultes,
    @Default(0) int finalEnfants,
    DateTime? startDate,
    DateTime? endDate,
    EventModel? selectedEvent,
    @Default([]) List<EventModel> searchedCompetitions,
    @Default([]) List<EventModel> searchedActivities,
    @Default([]) List<EventModel> searchedEvents,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, Object?> json) =>
      _$HomeStateFromJson(json);
}

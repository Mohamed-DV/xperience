// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      selectedCategories: (json['selectedCategories'] as List<dynamic>?)
              ?.map((e) => ActivitesModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      unSelectedCategories: (json['unSelectedCategories'] as List<dynamic>?)
              ?.map((e) => ActivitesModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      competitions: (json['competitions'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      activities: (json['activities'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      favoris: (json['favoris'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      destination: json['destination'] as String? ?? '',
      periode: json['periode'] as String? ?? '',
      voyageurs: json['voyageurs'] as String? ?? '',
      adultes: (json['adultes'] as num?)?.toInt() ?? 0,
      enfants: (json['enfants'] as num?)?.toInt() ?? 0,
      finalAdultes: (json['finalAdultes'] as num?)?.toInt() ?? 0,
      finalEnfants: (json['finalEnfants'] as num?)?.toInt() ?? 0,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      selectedEvent: json['selectedEvent'] == null
          ? null
          : EventModel.fromJson(json['selectedEvent'] as Map<String, dynamic>),
      searchedCompetitions: (json['searchedCompetitions'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      searchedActivities: (json['searchedActivities'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      searchedEvents: (json['searchedEvents'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'selectedCategories': instance.selectedCategories,
      'unSelectedCategories': instance.unSelectedCategories,
      'competitions': instance.competitions,
      'activities': instance.activities,
      'events': instance.events,
      'favoris': instance.favoris,
      'destination': instance.destination,
      'periode': instance.periode,
      'voyageurs': instance.voyageurs,
      'adultes': instance.adultes,
      'enfants': instance.enfants,
      'finalAdultes': instance.finalAdultes,
      'finalEnfants': instance.finalEnfants,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'selectedEvent': instance.selectedEvent,
      'searchedCompetitions': instance.searchedCompetitions,
      'searchedActivities': instance.searchedActivities,
      'searchedEvents': instance.searchedEvents,
    };

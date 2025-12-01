import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/core/models/activites_model.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/models/home_state.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/core/utils/api_routes.dart';
import 'package:spots_xplorer_app/core/utils/base_url.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spots_xplorer_app/core/utils/local_storage.dart';
import 'package:spots_xplorer_app/features/widgets/activite_card.dart';
import 'package:spots_xplorer_app/main.dart';

part 'home_repository.g.dart';

@Riverpod(keepAlive: true)
class HomeRepository extends _$HomeRepository {
  final _dio = Dio(BaseOptions(baseUrl: baseUrl));

  @override
  HomeState build() {
    print('build Home');
    return const HomeState();
  }

  void checkUserCompetition() async {
    print("checkUserCompetition()");
    final prefs = await SharedPreferences.getInstance();
    final isCompleted = prefs.getBool(LocalStorage.isCompleted);
    if (isCompleted == null || !isCompleted) {
      MainApp.navigationKey.currentContext!.pushReplacement(Routes.adapt);
    }
  }

  void addSelectedCategory(ActivitesModel category) {
    print("addSelectedCategory()");
    List<ActivitesModel> activites = List.from(state.selectedCategories);
    if (activites.contains(category)) {
      activites.removeWhere((activity) => activity == category);
    } else {
      activites.add(category);
    }

    state = state.copyWith(selectedCategories: activites);
    getUnselectedCategories();
    search();
    print("Selected categories: ${state.selectedCategories}");
  }

  void removeSelectedCategory(ActivitesModel category) {
    print("removeSelectedCategory()");
    print("category: ${category.id}");
    List<ActivitesModel> activites = List.from(state.selectedCategories);
    activites.removeWhere((activity) => activity.id == category.id);
    state = state.copyWith(selectedCategories: activites);
    print("removeSelectedCategory categories: ${state.selectedCategories}");
    getUnselectedCategories();
    search();
  }
// --------------------------------------------------
// 🔥 RESET SEARCH — لحل Remarque 2 PDF
// --------------------------------------------------
void resetSearch() {
  state = state.copyWith(
    destination: '',
    startDate: null,
    endDate: null,
    periode: '',
    adultes: 0,
    enfants: 0,
    finalAdultes: 0,
    finalEnfants: 0,
    selectedCategories: [],
    unSelectedCategories: ref.read(loginRepositoryProvider).activites,
    searchedActivities: [],
    searchedCompetitions: [],
    searchedEvents: [],
    isLoading: false,
  );

  print("RESET HOME SEARCH DONE");

  // ضروري نفرغ current search modal
  if (MainApp.navigationKey.currentContext!.canPop()) {
    MainApp.navigationKey.currentContext!.pop();
  }
}

  void getUnselectedCategories() {
    print("getUnSelectedCategories()");
    final selectedItems = state.selectedCategories;
    final unselectedItems =
        ref
            .read(loginRepositoryProvider)
            .activites
            .where(
              (item) =>
                  !selectedItems.any((selected) => selected.id == item.id),
            )
            .toList();

    state = state.copyWith(unSelectedCategories: unselectedItems);
  }

  Future<void> getHomeEvent() async {
    print("getHomeEvent()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);

      final response = await _dio.get(
        ApiRoutes.home,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("FULL HOME RESPONSE: ${response.data}");

        print("Response data: ${response.data['competitions']}");
        final competitions =
            (response.data['competitions'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        final activities =
            (response.data['activities'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        final events =
            (response.data['events'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        state = state.copyWith(
          activities: activities,
          competitions: competitions,
          events: events,
        );
      }
    } on DioException catch (e) {
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    } finally {}
  }

  Future<void> search() async {
    print("search()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
      state = state.copyWith(isLoading: true);
      String? destination = state.destination.toLowerCase();
      DateTime? checkIn = state.startDate;
      DateTime? checkOut = state.endDate;
      int? guests = state.adultes + state.enfants;
      List<int> activityType =
          state.selectedCategories.isEmpty
              ? []
              : state.selectedCategories.map((e) => e.id).toList();
      print("activityType: $activityType");
      // String? type
      final response = await _dio.get(
        ApiRoutes.home,
        queryParameters: {
          if (destination.isNotEmpty) 'destination': destination,
          if (checkIn != null)
            'checkIn':
                "${checkIn.year.toString().padLeft(4, '0')}-${checkIn.month.toString().padLeft(2, '0')}-${checkIn.day.toString().padLeft(2, '0')}",
          if (checkOut != null)
            'checkOut':
                "${checkOut.year.toString().padLeft(4, '0')}-${checkOut.month.toString().padLeft(2, '0')}-${checkOut.day.toString().padLeft(2, '0')}",
          if (guests != 0) 'guests': guests,
          if (activityType.isNotEmpty) 'activityType': activityType,
        },
        // data: {

        //   // 'type': 'competitions',
        // },
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final competitions =
            (response.data['competitions'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        final activities =
            (response.data['activities'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        final events =
            (response.data['events'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        print("Activities: ${activities.length}");

        state = state.copyWith(
          searchedActivities: activities,
          searchedCompetitions: competitions,
          searchedEvents: events,
        );
        MainApp.navigationKey.currentContext!.pop();
      }
    } on DioException catch (e) {
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void setSelectedEvent(EventModel event, bool isFromReserved) {
    state = state.copyWith(selectedEvent: event);
    MainApp.navigationKey.currentContext!.push(
      Routes.eventDetails,
      extra: isFromReserved,
    );
  }

  void setDestination(String event) {
    final olddDestination = state.destination;
    if (olddDestination == event) {
      state = state.copyWith(destination: '');
      return;
    }
    state = state.copyWith(destination: event);
  }

  void setPeriod(DateTime? start, DateTime? end) {
    print("setPeriod()");
    if (start == null && end == null) {
      state = state.copyWith(startDate: null, endDate: null, periode: '');
      return;
    } else {
      String event =
          "${start!.day} ${_monthShort(start.month)} au ${end!.day} ${_monthShort(end.month)} ${end.year}";
      state = state.copyWith(startDate: start, endDate: end, periode: event);
    }
  }

  String _monthShort(int month) {
    const months = [
      '', // 0 index not used
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    if (month < 1 || month > 12) return '';
    return months[month];
  }

  void setVoyageurs(String event) {
    state = state.copyWith(voyageurs: event);
  }

  void setAdulte(int event) {
    state = state.copyWith(adultes: event);
  }

  void setEnfants(int event) {
    state = state.copyWith(enfants: event);
  }

  void setValueOfVoyeeurs() {
    print("setValueOfVoyeeurs()");
    final adults = state.adultes;
    final enfants = state.enfants;
    state = state.copyWith(finalAdultes: adults, finalEnfants: enfants);
  }

  Future<void> favorisToggle({required String type, required int id}) async {
    print("signInWithEmailAndPassword()");

    updateFavState(type, id);

    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(LocalStorage.tokenKey);

    print("type: $type");
    print("id: $id");

    try {
      // state = state.copyWith(activities: state.activities.where((e)=>e.id==id).first.);
      final response = await _dio.post(
        ApiRoutes.favoris,
        data: {'eventId': id, 'eventType': type},
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastSuccess(
              position: Alignment.topCenter,
              title: "avec succes",
            );
        return;
      }
      updateFavState(type, id);
    } on DioException catch (e) {
      ref
          .read(notificationRepositoryProvider.notifier)
          .showToastError(
            position: Alignment.topCenter,
            title: e.response?.data['message'] ?? "Erreur est servenue",
          );
      updateFavState(type, id);

      print(e.response?.data);
      // Handle error
    }
  }

  updateFavState(String type, int id) {
    EventModel? updatedEvent;

    if (type == 'activity') {
      int index = state.activities.indexWhere((e) => e.id == id);
      if (index == -1) return;

      List<EventModel> newActivities = List.from(state.activities);
      updatedEvent = newActivities[index].copyWith(
        isFav: !(newActivities[index].isFav ?? false),
      );

      newActivities[index] = updatedEvent;
      state = state.copyWith(activities: newActivities);
    } else if (type == 'competition') {
      int index = state.competitions.indexWhere((e) => e.id == id);
      if (index == -1) return;

      List<EventModel> newCompetitions = List.from(state.competitions);
      updatedEvent = newCompetitions[index].copyWith(
        isFav: !(newCompetitions[index].isFav ?? false),
      );

      newCompetitions[index] = updatedEvent;
      state = state.copyWith(competitions: newCompetitions);
    } else if (type == 'event') {
      int index = state.events.indexWhere((e) => e.id == id);
      if (index == -1) return;

      List<EventModel> newEvents = List.from(state.events);
      updatedEvent = newEvents[index].copyWith(
        isFav: !(newEvents[index].isFav ?? false),
      );

      newEvents[index] = updatedEvent;
      state = state.copyWith(events: newEvents);
    }

    // ✅ Update selectedEvent if it's the same one being toggled
    if (updatedEvent != null && state.selectedEvent?.id == id) {
      state = state.copyWith(selectedEvent: updatedEvent);
    }

    // ✅ Update favorites list
    if (updatedEvent != null) {
      List<EventModel> newFavoris = List.from(state.favoris);
      int favIndex = newFavoris.indexWhere(
        (e) => e.id == id && e.eventType == type,
      );

      if (updatedEvent.isFav == true) {
        if (favIndex == -1) {
          newFavoris.add(updatedEvent);
        } else {
          newFavoris[favIndex] = updatedEvent;
        }
      } else {
        if (favIndex != -1) {
          newFavoris.removeAt(favIndex);
        }
      }

      state = state.copyWith(favoris: newFavoris);
    }
  }

  Future<void> getFavoris() async {
    print("getfavoris()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);

      final response = await _dio.get(
        ApiRoutes.favoris,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final competitions =
            (response.data['competitions'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        final activities =
            (response.data['activities'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        final events =
            (response.data['events'] as List)
                .map((e) => EventModel.fromJson(e))
                .toList();

        state = state.copyWith(
          favoris: [...events, ...competitions, ...activities],
        );
      }
    } on DioException catch (e) {
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    } finally {}
  }
}

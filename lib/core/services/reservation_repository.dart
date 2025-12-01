import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/core/models/activity_model.dart';
import 'package:spots_xplorer_app/core/models/compition_model.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/models/reservation_model.dart';
import 'package:spots_xplorer_app/core/models/reservation_state.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/core/utils/api_routes.dart';
import 'package:spots_xplorer_app/core/utils/base_url.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spots_xplorer_app/core/utils/local_storage.dart';
import 'package:spots_xplorer_app/main.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/confirmation_payement.dart';

part 'reservation_repository.g.dart';

@Riverpod(keepAlive: true)
class ReservationRepository extends _$ReservationRepository {
  final _dio = Dio(BaseOptions(baseUrl: baseUrl));

  @override
  ReservationState build() {
    print('build ReservationState');
    return const ReservationState();
  }

  Future<void> getReservation(String type, String status) async {
    print("getReservation($type, $status)");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
      state = state.copyWith(isLoading: true);
      final response = await _dio.get(
        "${ApiRoutes.reservation}?type=$type&status=$status",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("getReservation Response:==> ${response.data}");
        final data =
            (response.data as List)
                .map((item) => ReservationModel.fromJson(item))
                .toList();
        state = state.copyWith(reservations: data);
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

  Future<void> getDoAgainReservation(String type, String status) async {
    print("getDoAgainReservation()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
      state = state.copyWith(isLoading: true);
      print("Fetching reservations for type: $type, status: $status");
      final response = await _dio.get(
        "${ApiRoutes.reservation}?type=$type&status=$status",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("response data ===>: ${response.data}");
        final data =
            (response.data as List)
                .map((item) => ReservationModel.fromJson(item))
                .toList();
        state = state.copyWith(doAgainReservations: data);
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

  Future<void> createReservation() async {
    print("createReservation()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
      state = state.copyWith(isLoading: true);

      final participantCount = state.childrenCount + state.adultsCount;
      final priceTotal = (double.tryParse(state.totalPrice) ?? 0.0) + 0.89;
      final reservationDate = state.reservationDate;
      final fromHour = state.fromHour;
      final toHour = state.toHour;

      // final date = DateTime.parse("$reservationDate $reservationTime");
      // final reservationDateTime = date.toUtc().toIso8601String();
      final type = state.selectedType;
      final id = ref.read(homeRepositoryProvider).selectedEvent?.id;

      final response = await _dio.post(
        ApiRoutes.createReservations,
        data: {
          "eventId": id,
          "type": type, // competition or activity
          "reservationDate": reservationDate,
          "totalPrice": priceTotal,
          "fromHour": fromHour,
          "toHour": toHour,
          "participantCount": participantCount,
        },
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("Reservation created successfully");
        print("Response data: ===> ${response.data}");
        final reservationid = response.data['id'];
        MainApp.navigationKey.currentContext!.pop();
        showDialog(
          context: MainApp.navigationKey.currentContext!,
          barrierDismissible: false,
          builder: (context) {
            return Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 500, // Maximum width
                  ),
                  child: const ConfirmationPayement(),
                ),
              ),
            );
          },
        );
        await Future.delayed(const Duration(seconds: 3));
        MainApp.navigationKey.currentContext!.pop();
        // MainApp.navigationKey.currentContext!.pushReplacement(
        //   Routes.reservation,
        // ); // Close the dialog after 3 seconds
        getReservation(type, 'pending');
        getReservationById();
        getSelectedReservationById(reservationid.toString(), type);
        MainApp.navigationKey.currentContext!.push(
          Routes.eventDetails,
          extra: true,
        );

        state = state.copyWith(isLanched: false);
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

  Future<void> getReservationById() async {
    print("getReservationById()");
    try {
      final selectedEvent = ref.read(homeRepositoryProvider).selectedEvent;
      print(
        "Selected event: ${selectedEvent?.id}, Type: ${selectedEvent?.eventType}",
      );
      state = state.copyWith(isLoading: true);
      if (selectedEvent == null) {
        print("No selected event found");
        return;
      }
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
      state = state.copyWith(isLoading: true);
      final response = await _dio.get(
        "${ApiRoutes.getReservationById}/${selectedEvent.id}?type=${selectedEvent.eventType}",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("Reservation details: ${response.data}");
        // Optionally, you can update the state with the reservation details
        if (selectedEvent.eventType == "competition") {
          print("Selected event is a competition");
          state = state.copyWith(
            compition: CompitionModel.fromJson(response.data),
          );
        } else if (selectedEvent.eventType == "activity") {
          print("Selected event is an activity");
          state = state.copyWith(
            activity: ActivityModel.fromJson(response.data),
          );
        } else {
          state = state.copyWith(event: EventModel.fromJson(response.data));
        }

        state = state.copyWith(
          selectedId: response.data["reservation"]["id"] ?? -1,
        );
        if ((state.activity?.isReserved ?? false) ||
            (state.compition?.isReserved ?? false)) {
          getSelectedReservationById(
            state.selectedId.toString(),
            selectedEvent.eventType,
          );
        }
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

  Future<void> getSelectedReservationById(String id, String type) async {
    print("==== > getReservationById() <====");
    print("Selected ID: $id, Type: $type");
    state = state.copyWith(isLoadingReservation: true);
    try {
      print("Fetching reservation by ID: $id, Type: $type");
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);

      final response = await _dio.get(
        "${ApiRoutes.reservation}/$id?type=$type",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("getSelectedReservationById Response:==> ${response.data}");
        final reservation = ReservationModel.fromJson(response.data);

        state = state.copyWith(selectedReservation: reservation);
        state = state.copyWith(
          fromHour: state.selectedReservation?.fromHour ?? '',
          reservationDate: state.selectedReservation?.reservationDate ?? '',

          toHour: state.selectedReservation?.toHour ?? '',
          totalPrice: state.selectedReservation?.totalPrice ?? '',
          selectedId: state.selectedReservation?.id ?? -1,
        );
      }
    } on DioException catch (e) {
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    } finally {
      state = state.copyWith(isLoadingReservation: false);
    }
  }

  void setAdulte(int event) {
    state = state.copyWith(adultsCount: event);
  }

  void setChildren(int event) {
    state = state.copyWith(childrenCount: event);
  }

  void setSelectedType(int id, String type, String price) {
    state = state.copyWith(selectedType: type, totalPrice: price);
  }

  void setReservationDate(DateTime date) {
    final formattedDate =
        "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
    state = state.copyWith(reservationDate: formattedDate);
  }

  void setTimeReservation(String fromHour, String toHour) {
    state = state.copyWith(fromHour: fromHour, toHour: toHour);
  }

  void setLanched(bool lanched) {
    state = state.copyWith(isLanched: lanched);
  }

  void onBack() {
    state = state.copyWith(
      isLanched: false,
      reservationDate: '',
      fromHour: '',
      toHour: '',
      totalPrice: '',
      childrenCount: 0,
      adultsCount: 0,
      participantCount: 0,
    );
  }

  bool isReservationValid() {
    final isValid =
        state.reservationDate.isNotEmpty &&
        state.fromHour.isNotEmpty &&
        state.totalPrice.isNotEmpty &&
        (state.childrenCount > 0 || state.adultsCount > 0);
    print("isReservationValid: $isValid");
    return isValid;
  }

  void setSelectedReservation(ReservationModel reservation, String type) {
    print("setSelectedReservation: ${reservation.id}");
    state = state.copyWith(
      selectedReservation: reservation,
      selectedType: type,
    );
  }

  Future<void> cancelReservation() async {
    print("cancelReservation()");
    try {
      final selectedEvent = ref.read(homeRepositoryProvider).selectedEvent;
      final resId = state.selectedId;

      print(
        "Selected event: ${selectedEvent?.id}, Type: ${selectedEvent?.eventType}",
      );
      state = state.copyWith(isCancelLoading: true);
      if (selectedEvent == null) {
        print("No selected event found");
        return;
      }
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
      state = state.copyWith(isLoading: true);

      final response = await _dio.put(
        "${ApiRoutes.cancelReservation}$resId?type=${selectedEvent.eventType}",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );

      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastSuccess(
              position: Alignment.topCenter,
              title: "avec succes",
            );
        getReservation(selectedEvent.eventType, 'pending');
        getReservationById();
        getSelectedReservationById(resId.toString(), selectedEvent.eventType);
        return;
      }
    } on DioException catch (e) {
      print(e.response?.data);
      ref
          .read(notificationRepositoryProvider.notifier)
          .showToastError(position: Alignment.topCenter, title: "error");
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
      ref
          .read(notificationRepositoryProvider.notifier)
          .showToastError(position: Alignment.topCenter, title: "error");
      return;
    } catch (e) {
      ref
          .read(notificationRepositoryProvider.notifier)
          .showToastError(position: Alignment.topCenter, title: "error");
      print("Error: $e");
    } finally {
      state = state.copyWith(isCancelLoading: false);
    }
  }

  Future<void> updateReservation() async {
    print("createReservation()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
      state = state.copyWith(isLoading: true);

      final participantCount = state.childrenCount + state.adultsCount;
      final priceTotal = (double.tryParse(state.totalPrice) ?? 0.0) + 0.89;
      final reservationDate = state.reservationDate;
      final resId = state.selectedReservation?.id;

      final fromHour = state.fromHour;
      final toHour = state.toHour;

      // final date = DateTime.parse("$reservationDate $reservationTime");
      // final reservationDateTime = date.toUtc().toIso8601String();
      final type = state.selectedType;
      final id = state.selectedId;

      final response = await _dio.put(
        "${ApiRoutes.updateReservation}/$resId",
        data: {
          "eventId": id,
          "type": type, // competition or activity
          "reservationDate": reservationDate,
          "totalPrice": priceTotal,
          "fromHour": fromHour,
          "toHour": toHour,
          "participantCount": participantCount,
        },
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("Reservation created successfully");
        print("Response data: ===> ${response.data}");
        final reservationid = response.data['id'];
        MainApp.navigationKey.currentContext!.pop();
        showDialog(
          context: MainApp.navigationKey.currentContext!,
          barrierDismissible: false,
          builder: (context) {
            return Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 500, // Maximum width
                  ),
                  child: const ConfirmationPayement(),
                ),
              ),
            );
          },
        );
        await Future.delayed(const Duration(seconds: 3));
        MainApp.navigationKey.currentContext!.pop();
        // MainApp.navigationKey.currentContext!.pushReplacement(
        //   Routes.reservation,
        // ); // Close the dialog after 3 seconds
        getReservation(type, 'pending');
        getReservationById();
        getSelectedReservationById(resId.toString(), type);
        MainApp.navigationKey.currentContext!.push(
          Routes.eventDetails,
          extra: true,
        );

        state = state.copyWith(isLanched: false);
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
}

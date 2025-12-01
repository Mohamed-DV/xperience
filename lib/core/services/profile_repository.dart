import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/core/models/profile_state.dart';
import 'package:spots_xplorer_app/core/models/user_model.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/core/utils/api_routes.dart';
import 'package:spots_xplorer_app/core/utils/base_url.dart';
import 'package:spots_xplorer_app/core/utils/local_storage.dart';
import 'package:spots_xplorer_app/main.dart';

part 'profile_repository.g.dart';

@Riverpod(keepAlive: true)
class ProfileRepository extends _$ProfileRepository {
  final _dio = Dio(BaseOptions(baseUrl: baseUrl));

  @override
  ProfileState build() {
    print('build Profile');
    return const ProfileState();
  }

  Future<void> getCurrentUser() async {
    print("getHomeEvent()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);

      final response = await _dio.get(
        ApiRoutes.user,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        state = state.copyWith(
          user: UserModel.fromJson(response.data["user"]),
          countReviews: response.data["countReviews"] ?? 0,
          countReservations: response.data["countReservations"] ?? 0,
          isLoading: false,
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
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> updateUser(UserModel user) async {
    state = state.copyWith(isLoadingDetails: true);

    print("getHomeEvent()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);

      final response = await _dio.put(
        ApiRoutes.updateUser,
        data: user.toJson(),
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
        MainApp.navigationKey.currentContext!.pop();

        state = state.copyWith(user: user, isLoadingDetails: false);
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

  Future<void> updatePass(String newPass) async {
    state = state.copyWith(isLoadingDetails: true);

    print("getHomeEvent()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);

      final response = await _dio.put(
        ApiRoutes.changePassword,
        data: {"newPassword": newPass},
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

  Future<void> addReview(String content, int rating) async {
    state = state.copyWith(isLoadingReview: true);

    print("getHomeEvent()");
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);

      final response = await _dio.post(
        ApiRoutes.review,
        data: {"content": content, "rating": rating},
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
      state = state.copyWith(isLoadingReview: false);
    }
  }
}

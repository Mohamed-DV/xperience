import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/core/models/activites_model.dart';
import 'package:spots_xplorer_app/core/models/login_state.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:spots_xplorer_app/core/models/sporting_level_model.dart';
import 'package:spots_xplorer_app/core/models/sub_activite_model.dart';
import 'package:spots_xplorer_app/core/models/user_model.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/core/services/firebase_services.dart';
import 'package:spots_xplorer_app/core/utils/api_routes.dart';
import 'package:spots_xplorer_app/core/utils/base_url.dart';
import 'package:spots_xplorer_app/core/utils/local_storage.dart';
import 'package:spots_xplorer_app/main.dart';
import 'package:spots_xplorer_app/features/auth/presentation/changed_pwd_succes.dart';
import 'package:spots_xplorer_app/features/auth/presentation/confirmation_ui.dart';

part 'login_repository.g.dart';

@Riverpod(keepAlive: true)
class LoginRepository extends _$LoginRepository {
  final log = Logger("LoginRepository");
  final loginFormKey = GlobalKey<FormState>();
  final registerFormKey = GlobalKey<FormState>();
  final _dio = Dio(BaseOptions(baseUrl: baseUrl));

  @override
  LoginState build() {
    print("build()");
    return const LoginState();
  }

  Future<GoRouter> getLoginBasedRouter(
    GlobalKey<NavigatorState> navigationKey,
  ) async {
    return GoRouterSetup.getRouter(navigationKey);
  }

  Future<String?> getSavedEmail() async {
    print("getSavedEmail()");
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('saved_email');

    state = state.copyWith(email: email ?? '', savedEmail: email ?? '');
    return email;
  }

  Future<void> signInWithEmailAndPassword() async {
    print("signInWithEmailAndPassword()");

    print("email: ${state.email}");
    print("password: ${state.password}");
    final email = state.email;
    final password = state.password;

    try {
      state = state.copyWith(loading: true);
      
      // Get FCM token
            final firebaseService = PushNotificationService();
      final fcmToken = await firebaseService.getToken();
      if (fcmToken != null) {
        setDeviceToken(fcmToken);
      }
      final response = await _dio.post(
        ApiRoutes.login,
        data: {
          'email': email, 
          'password': password,
          'deviceToken': state.deviceToken,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final user = UserModel.fromJson(response.data);
        await LocalStorage.store(user, response.data["accessToken"]);

        if (response.data["subCategories"] == [] ||
            response.data["sportingLevel"] == null) {
          MainApp.navigationKey.currentContext?.push(Routes.adapt);
        } else {
          MainApp.navigationKey.currentContext?.go(Routes.home);
        }
      }
      state = state.copyWith(loading: false);
    } on DioException catch (e) {
      state = state.copyWith(loading: false);
      if (e.response?.statusCode == 401) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: "Email ou mot de passe incorrect",
            );
      } else if (e.response?.statusCode == 400) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: e.response?.data['message'] ?? "Erreur de connexion",
            );
      } else if (e.response?.statusCode == 403) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: "Votre compte a été désactivé",
            );
      } else if (e.response?.statusCode == 422) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: "Veuillez vérifier votre adresse e-mail",
            );
      }
      print(e.response?.data);
      // Handle error
    }
  }

  Future<void> signUpWithEmailAndPassword() async {
    print("signUpWithEmailAndPassword()");
    final name = state.name;
    final prenom = state.prenom;
    final email = state.email;
    final password = state.password;

    try {
      state = state.copyWith(loading: true);
      final response = await _dio.post(
        ApiRoutes.register,
        data: {
          'firstName': name,
          'lastName': prenom,
          'email': email,
          'password': password,
        },
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('saved_email', email);
        showDialog(
          context: MainApp.navigationKey.currentContext!,
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
                  child: const ConfirmationUi(),
                ),
              ),
            );
          },
        );
      } else {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: "Erreur de connexion",
            );
      }
      state = state.copyWith(loading: false);
      // Handle successful login
    } on DioException catch (e) {
      state = state.copyWith(loading: false);
      print(e.response?.data);
      // Handle error
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      state = state.copyWith(isGoogleloading: true);
      await InternetAddress.lookup('google.com');
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final user = await FirebaseAuth.instance.signInWithCredential(credential);
      final idToken = await user.user?.getIdToken();

      print("ID Token: $idToken");

      final response = await _dio.post(
        ApiRoutes.oauthVerify,
        data: {"idToken": idToken},
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final user = UserModel.fromJson(response.data);
        await LocalStorage.store(user, response.data["accessToken"]);
        MainApp.navigationKey.currentContext?.go(Routes.adapt);
      }
      state = state.copyWith(isGoogleloading: false);
    } on DioException catch (e) {
      state = state.copyWith(isGoogleloading: false);
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      state = state.copyWith(isGoogleloading: false);
      print("No internet connection");
    } catch (e) {
      state = state.copyWith(isGoogleloading: false);
      print("Error: $e");
    }
  }

  Future<void> signInWithFacebook() async {
    try {
      await InternetAddress.lookup('facebook.com');
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        final AccessToken? accessToken = result.accessToken;

        final credential = FacebookAuthProvider.credential(accessToken!.token);

        final user = await FirebaseAuth.instance.signInWithCredential(
          credential,
        );
        final idToken = await user.user?.getIdToken();

        print("ID Token: $idToken");

        final response = await _dio.post(
          ApiRoutes.oauthVerify,
          data: {"idToken": idToken},
        );
        print("Response: ${response.statusCode}");
        if (response.statusCode == 200 || response.statusCode == 201) {
          print(response.data);
        }
      } else {
        print("Facebook login failed: ${result.message}");
      }
    } on DioException catch (e) {
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> resetPassword() async {
    print("resetPassword()");
    try {
      state = state.copyWith(loading: true);
      final email = state.email;
      final response = await _dio.post(
        ApiRoutes.resetPassword,
        data: {"email": email},
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        MainApp.navigationKey.currentContext!.push(Routes.verifeyOtp);
      }
      state = state.copyWith(loading: false);
    } on DioException catch (e) {
      final reponse = e.response;

      if (reponse?.statusCode == 404 || reponse?.statusCode == 400) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(title: "Email non trouvé");
      } else if (reponse?.statusCode == 422) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(title: "Veuillez vérifier votre adresse e-mail");
      } else {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(title: "Erreur de connexion");
      }
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    } finally {
      state = state.copyWith(loading: false);
    }
  }

  Future<void> resendOtp() async {
    print("resendOtp()");
    try {
      final email = state.email;
      final response = await _dio.post(
        ApiRoutes.resetPassword,
        data: {"email": email},
      );
      print("Response: ${response.statusCode}");
    } on DioException catch (e) {
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<int> verfiyOtp(String otp) async {
    print("verfiyOtp()");
    try {
      state = state.copyWith(loading: true);
      final email = state.email;
      final response = await _dio.post(
        ApiRoutes.verifyOtp,
        data: {"email": email, "otp": otp},
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        MainApp.navigationKey.currentContext!.push(Routes.newPassword);
        return 1;
      }
      return 0;
    } on DioException catch (e) {
      print(e.response?.data);
      return 0;
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
      return 0;
    } catch (e) {
      print("Error: $e");
      return 0;
    } finally {
      state = state.copyWith(loading: false);
    }
  }

  Future<void> updatePassword() async {
    print("updatePassword()");
    try {
      state = state.copyWith(loading: true);
      final email = state.email;
      final password = state.newPassword;
      final response = await _dio.put(
        ApiRoutes.updatePassword,
        data: {"email": email, "newPassword": password},
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        // MainApp.navigationKey.currentContext!.push(Routes.sigin);
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
                  child: const ChangedPwdSucces(),
                ),
              ),
            );
          },
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
      state = state.copyWith(loading: false);
    }
  }

  Future<void> getActivites() async {
    print("getActivites()");
    try {
      final response = await _dio.get(ApiRoutes.getActivites);
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final activites =
            (response.data as List)
                .map((e) => ActivitesModel.fromJson(e))
                .toList();
        state = state.copyWith(activites: activites);
      }
    } on DioException catch (e) {
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    } finally {
      state = state.copyWith(loading: false);
    }
  }

  Future<void> getSportLevel() async {
    print("getSportLevel()");
    try {
      final response = await _dio.get(ApiRoutes.getsportinglevel);
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final sportinglevel =
            (response.data as List)
                .map((e) => SportingLevelModel.fromJson(e))
                .toList();
        state = state.copyWith(sportLevel: sportinglevel);
      }
    } on DioException catch (e) {
      print(e.response?.data);
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    } finally {
      state = state.copyWith(loading: false);
    }
  }

  Future<void> completeUserInfo() async {
    print("completeUserInfo()");
    try {
      state = state.copyWith(loading: true);
      if (state.dateNaissance == null) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: "Sélectionnez votre date de naissance",
            );
        return;
      }
      if (state.selectedActivites.isEmpty) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: "Sélectionnez une activité",
            );
        return;
      }
      if (state.selectedSportLevel == null) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: "Sélectionnez votre niveau sportif",
            );
        return;
      }
      if (state.pays.isEmpty) {
        ref
            .read(notificationRepositoryProvider.notifier)
            .showToastError(
              position: Alignment.topCenter,
              title: "Veuillez sélectionner votre pays",
            );
        return;
      }

      final bithDate =
          state.dateNaissance != null
              ? "${state.dateNaissance!.year}-${state.dateNaissance!.month.toString().padLeft(2, '0')}-${state.dateNaissance!.day.toString().padLeft(2, '0')}"
              : null;
      final activiteFavoris = state.selectedActivites.map((e) => e.id).toList();
      final pays = state.pays;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
      final response = await _dio.post(
        ApiRoutes.completeUserInfo,
        data: {
          "birthDate": bithDate,
          "subActivitiesId": activiteFavoris,
          "sportLevelId": state.selectedSportLevel?.id,
          "country": pays,
        },
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool(LocalStorage.isCompleted, true);
        MainApp.navigationKey.currentContext!.go(Routes.home);
      }
    } on DioException catch (e) {
      print(e.response?.data);
      // logout();
      // Handle error
    } on SocketException catch (_) {
      print("No internet connection");
    } catch (e) {
      print("Error: $e");
    } finally {
      state = state.copyWith(loading: false);
    }
  }

  Future<void> logout() async {
    log.info("logout()");
    try {
      await GoogleSignIn().signOut();
      await LocalStorage.clear();
      MainApp.navigationKey.currentContext?.push(Routes.sigin);
    } catch (e) {
      await LocalStorage.clear();
      MainApp.navigationKey.currentContext?.push(Routes.sigin);
      log.severe(e);
    }
  }

  void setFirstOpen() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("isFirstOpen", true);
  }

  String? validateEmail(String email) {
    print("validateEmail()");
    final isEmail = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email);
    return isEmail ? null : "Email invalide";
  }

  String? validatePassword(String password) {
    print("validatePassword()");
    return password.length >= 8
        ? null
        : "Les mots de passe doivent contenir plus de 8 caractères";
  }

  String? validatePhone(String password) {
    print("validatePhone()");
    return password.length == 9 ? null : "Numéro de téléphone invalide";
  }

  String? validateName(String name) {
    print("validateName()");
    return name.length >= 3 && name.length <= 20
        ? null
        : "Nom invalide (3-20 caractères)";
  }

  void setEmail(String email) {
    print("setEmail()");
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    print("setPassword()");
    state = state.copyWith(password: password);
  }

  void setNewPassword(String password) {
    print("setNewPassword()");
    state = state.copyWith(newPassword: password);
  }

  void setName(String name) {
    print("setName()");
    state = state.copyWith(name: name);
  }

  void setPrenom(String prenom) {
    print("setPrenom()");
    state = state.copyWith(prenom: prenom);
  }

  void setDateNaissance(DateTime dateNaissance) {
    print("setDateNaissance()");
    state = state.copyWith(dateNaissance: dateNaissance);
  }

  void setActiviteFavoris(SubActiviteModel activitesModel) {
    print("setActiviteFavoris()");
    List<SubActiviteModel> activites = List.from(state.selectedActivites);
    if (activites.contains(activitesModel)) {
      activites.removeWhere((activity) => activity.id == activitesModel.id);
    } else {
      activites.add(activitesModel);
    }
    state = state.copyWith(selectedActivites: activites);
  }

  void setNiveauSport(SportingLevelModel niveauSport) {
    print("setNiveauSport()");
    state = state.copyWith(selectedSportLevel: niveauSport);
  }

  void setPays(String pays) {
    print("setPays()");
    state = state.copyWith(pays: pays);
  }

  void setDeviceToken(String deviceToken) {
    print("setDeviceToken()");
    state = state.copyWith(deviceToken: deviceToken);
  }
}

import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/core/utils/local_storage.dart';
import 'package:go_router/go_router.dart';

class AuthGuard {
  static Future<String?> redirect(GoRouterState state) async {
    // 👇 Don't redirect if already on splash
    if (state.fullPath == Routes.splash) {
      return null;
    }

    final isLoggedIn = await LocalStorage.isLoggedIn();
    final isFirstOpen = await LocalStorage.isFirstOpen();

    if (isLoggedIn) {
      return state.fullPath;
      // return Routes.onboarding;
    } else {
      if (state.fullPath == Routes.sigin ||
          state.fullPath == Routes.signup ||
          state.fullPath == Routes.forgetPassword ||
          state.fullPath == Routes.verifeyOtp ||
          state.fullPath == Routes.newPassword) {
        return state.fullPath;
      }
      if (!isFirstOpen) {
        print('Onboarding');
        return Routes.onboarding;
      }
      return Routes.sigin;
    }
  }
}

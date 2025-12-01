import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/core/utils/local_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 2)); // wait 2 seconds
    final isLoggedIn = await LocalStorage.isLoggedIn();
    final isFirstOpen = await LocalStorage.isFirstOpen();

    if (isLoggedIn) {
      context.go(Routes.home); // Go to Home
    } else {
      if (!isFirstOpen) {
        context.go(Routes.onboarding); // First time? Onboarding
      } else {
        context.go(Routes.sigin); // Else Signin
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/imgs/Accueil.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Image.asset(
              'assets/imgs/logo_splash.png',
              width: double.infinity,
              height: 233,
            ),
          ),
        ],
      ),
    );
  }
}

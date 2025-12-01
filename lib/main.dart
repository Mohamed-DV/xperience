import 'package:country_picker/country_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spots_xplorer_app/config/theme/theme.dart';
import 'package:spots_xplorer_app/core/infrastructure/helpers/logger_interceptor.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/core/services/notification_service_provider.dart';
import 'package:spots_xplorer_app/core/shared/providers.dart';
import 'package:spots_xplorer_app/core/utils/base_url.dart';
import 'package:spots_xplorer_app/features/auth/shared/providers.dart';
import 'package:spots_xplorer_app/firebase_options.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});
  static final GlobalKey<NavigatorState> navigationKey =
      GlobalKey<NavigatorState>();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  late Future<GoRouter> _getRouter;
  final GlobalKey<NavigatorState> _navigationKey = MainApp.navigationKey;

  final initializationProvider = FutureProvider<Unit>((ref) async {
    print('=====> initializationProvider <==== ');
    
    // Initialize Dio
    ref.read(dioProvider)
      ..options = BaseOptions(
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
        },
        validateStatus:
            (status) => status != null && status >= 200 && status < 400,
      )
      ..interceptors.add(ref.read(dioInterceptorProvider))
      ..interceptors.add(LoggingInterceptor(baseUrl: baseUrl));
    print('Base Url ===> $baseUrl');
    
    // Initialize Firebase Messaging Service
    try {
      print('=====> Initializing Firebase Messaging <==== ');
      await ref.read(notificationServiceProvider.future);
      print('=====> Firebase Messaging Initialized <==== ');
    } catch (e) {
      print('Error initializing Firebase Messaging: $e');
    }
    
    return unit;
  });
  @override
  void initState() {
    super.initState();
    _getRouter = ref
        .read(loginRepositoryProvider.notifier)
        .getLoginBasedRouter(_navigationKey);
  }

  @override
  Widget build(BuildContext context) {
    // String? locale = ref.watch(loginRepositoryProvider).locale;
    ref.listen(initializationProvider, (_, __) {});
    return ToastificationWrapper(
      child: FutureBuilder(
        future: _getRouter,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return ScreenUtilInit(
              designSize: const Size(393, 562),
              builder: (_, child) {
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  title: 'Spots Xplorer',
                  theme: theme,
                  routerConfig: snapshot.data,
                  supportedLocales: const [
                    Locale('fr'),

                    // const Locale.fromSubtags(
                    //   languageCode: 'zh',
                    //   scriptCode: 'Hant',
                    // ), // Generic traditional Chinese 'zh_Hant'
                  ],
                  localizationsDelegates: const [
                    CountryLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

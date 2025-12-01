import 'package:spots_xplorer_app/config/router/auth_guard.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spots_xplorer_app/core/utils/page_transitions.dart';
import 'package:spots_xplorer_app/features/auth/presentation/adapt_screen.dart';
import 'package:spots_xplorer_app/features/auth/presentation/forget_password.dart';
import 'package:spots_xplorer_app/features/auth/presentation/new_password.dart';
import 'package:spots_xplorer_app/features/auth/presentation/otp_screen.dart';
import 'package:spots_xplorer_app/features/auth/presentation/sigin_screen.dart';
import 'package:spots_xplorer_app/features/auth/presentation/signup_screen.dart';
import 'package:spots_xplorer_app/features/home/presentation/sub_pages/formules_screen.dart';
import 'package:spots_xplorer_app/features/home/presentation/sub_pages/hotel_details_screen.dart';
import 'package:spots_xplorer_app/features/home/presentation/sub_pages/resto_details_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/sub_pages/hotel_reservation_details.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/sub_pages/resto_reservation_details.dart';
import 'package:spots_xplorer_app/features/screens/badge/badge_screen.dart';
import 'package:spots_xplorer_app/features/screens/do_again/doagain_screen.dart';
import 'package:spots_xplorer_app/features/screens/event_details_screen.dart';
import 'package:spots_xplorer_app/features/screens/favoris/favorite_screen.dart';
import 'package:spots_xplorer_app/features/home/presentation/home_screen.dart';
import 'package:spots_xplorer_app/features/screens/on_boarding/onboarding_screen.dart';
import 'package:spots_xplorer_app/features/screens/on_boarding/splash_screen.dart';
import 'package:spots_xplorer_app/features/screens/profile/about_screen.dart';
import 'package:spots_xplorer_app/features/screens/profile/notification_history_screen.dart';
import 'package:spots_xplorer_app/features/screens/profile/notification_settings_screen.dart';
import 'package:spots_xplorer_app/features/screens/profile/profile_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/reservation_screen.dart';
import 'package:spots_xplorer_app/features/screens/profile/services_conditions.dart';
import 'package:spots_xplorer_app/features/screens/profile/update_pass.dart';
import 'package:spots_xplorer_app/features/screens/profile/usage_conditions.dart';
import 'package:spots_xplorer_app/features/screens/profile/user_details.dart';
import 'package:spots_xplorer_app/features/screens/reviews/review_screen.dart';
import 'package:spots_xplorer_app/features/screens/search_ui.dart';
import 'package:spots_xplorer_app/features/screens/seeall_screen.dart';
import 'package:spots_xplorer_app/features/widgets/activite_card.dart';
import 'package:spots_xplorer_app/features/widgets/wrapper/main_wrapper.dart';

// routs
class Routes {
  static const splash = '/splash';
  static const home = '/';
  static const onboarding = '/onboarding';
  static const sigin = '/sigin';
  static const signup = '/signup';
  static const forgetPassword = '/forget-password';
  static const verifeyOtp = '/verifey-otp';
  static const newPassword = '/new-password';
  static const adapt = '/adapt';
  static const eventDetails = '/event-details';
  static const seeAll = '/see-all';

  static const doAgain = '/do-again';
  static const reservation = '/reservation';
  static const favorite = '/favorite';
  static const profile = '/profile';
  static const search = '/search';
  static const hotelDetails = '/hotel-details';
  static const restoDetails = '/resto-details';
  static const formules = '/formules';
  static const restoReservationDetails = '/resto-reservation-details';
  static const hotelReservationDetails = '/hotel-reservation-details';
  static const userDetails = '/user-details';
  static const usageConditions = '/usage-conditions';
  static const servicesConditions = '/services-conditions';
  static const aboutUs = '/about-us';
  static const badges = '/badges';
  static const updatePass = '/update-pass';
  static const review = '/review';
  static const notificationSettings = '/profile/notification-settings';
  static const notificationHistory = '/profile/notification-history';
}

class GoRouterSetup {
  static GoRouter getRouter(GlobalKey<NavigatorState> navigationKey) =>
      GoRouter(
        navigatorKey: navigationKey,
        initialLocation: Routes.splash, // <-- Add this
        redirect: (context, state) => AuthGuard.redirect(state),
        routes: <RouteBase>[
          StatefulShellRoute.indexedStack(
            pageBuilder: (context, state, navigationShell) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: MainWrapper(navShell: navigationShell),
              );
            },
            branches: <StatefulShellBranch>[
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: Routes.home,
                    builder: (context, state) {
                      return HomeScreen(key: state.pageKey);
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: Routes.doAgain,
                    builder: (context, state) {
                      return DoagainScreen(key: state.pageKey);
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: Routes.reservation,
                    builder: (context, state) {
                      return ReservationScreen(key: state.pageKey);
                    },
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: Routes.favorite,
                    builder: (context, state) {
                      return FavoriteScreen(key: state.pageKey);
                    },
                  ),
                ],
              ),

              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: Routes.profile,
                    builder: (context, state) {
                      return ProfileScreen(key: state.pageKey);
                    },
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: Routes.splash,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: SplashScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.onboarding,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: OnboardingScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.adapt,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: AdaptScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.sigin,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: SiginScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.signup,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: SignupScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.forgetPassword,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: ForgetPassword(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.verifeyOtp,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: OtpScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.restoReservationDetails,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: RestoReservationDetails(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.hotelReservationDetails,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: HotelReservationDetails(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.newPassword,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: NewPassword(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.badges,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: BadgeScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.updatePass,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: UpdatePass(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.notificationSettings,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: NotificationSettingsScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.notificationHistory,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: NotificationHistoryScreen(key: state.pageKey),
              );
            },
          ),

          GoRoute(
            path: Routes.hotelDetails,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: HotelDetailsScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.restoDetails,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: RestoDetailsScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.formules,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: FormulesScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.seeAll,
            pageBuilder: (context, state) {
              // You need to pass the activiteType to SeeallScreen
              final activiteType =
                  state.extra as ActivieType? ?? ActivieType.activity;
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: SeeallScreen(
                  key: state.pageKey,
                  activiteType: activiteType,
                ),
              );
            },
          ),
          GoRoute(
            path: Routes.userDetails,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: UserDetailsScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.servicesConditions,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: ServiceConditionsScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.aboutUs,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: AboutSpotsXplorerScreen(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.usageConditions,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: TermsConditionsScreen(key: state.pageKey),
              );
            },
          ),

          GoRoute(
            path: Routes.eventDetails,
            pageBuilder: (context, state) {
              final isFromReserved = state.extra as bool? ?? false;
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: EventDetailsScreen(
                  key: state.pageKey,
                  isFromReserved: isFromReserved,
                ),
              );
            },
          ),
          GoRoute(
            path: Routes.review,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: AddReviewModal(key: state.pageKey),
              );
            },
          ),
          GoRoute(
            path: Routes.search,
            parentNavigatorKey: navigationKey,
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                key: state.pageKey,
                opaque: false,
                barrierColor: Colors.black26,
                transitionsBuilder: (context, anim, secAnim, child) {
                  return FadeTransition(opacity: anim, child: child);
                },
                child: const SearchUi(), // your blur screen
              );
            },
          ),
        ],
      );
}

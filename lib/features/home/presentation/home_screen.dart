import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';
import 'package:spots_xplorer_app/features/home/presentation/sub_pages/main_screen.dart';
import 'package:spots_xplorer_app/features/home/presentation/sub_pages/restaurant_screen.dart';
import 'package:spots_xplorer_app/features/home/presentation/sub_pages/search_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    ref.read(homeRepositoryProvider.notifier).checkUserCompetition();
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    final homeType = ref.watch(homeTypeState);

    return Scaffold(
      backgroundColor: Colors.white,   // ✔ الخلفية بيضاء بحال favoris
      extendBody: false,               // ✔ باش ما يعومش تحت navbar

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: _buildSearchFiled(),
            ),

            SizedBox(height: 20.h),

            Expanded(
              child: homeType == HomeProvidersType.restaurant
                  ? const RestaurantScreen()
                  : (() {
                      final homeState = ref.watch(homeRepositoryProvider);
                      return homeState.destination == '' &&
                              (homeState.adultes + homeState.enfants == 0) &&
                              homeState.startDate == null &&
                              homeState.selectedCategories.isEmpty &&
                              homeState.endDate == null
                          ? const MainScreen()
                          : const SearchScreen();
                    })(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchFiled() {
    final destination = ref.watch(homeRepositoryProvider).destination;
    final voyageurs = ref.watch(homeRepositoryProvider).finalAdultes;
    final periode = ref.watch(homeRepositoryProvider).periode;

    return GestureDetector(
      onTap: () => context.push(Routes.search),
      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child:  Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.background),
          boxShadow: const [
            BoxShadow(
              color: AppColors.grey,
              offset: Offset(1, 1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset("assets/icons/carbon_search.png", height: 28),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Je pars à l'aventure !",
                  style: GoogleFonts.openSans(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${destination != '' ? destination : "Où ?"} - "
                  "${periode != '' ? periode : "Quand ?"} - "
                  "${voyageurs > 0 ? "$voyageurs adultes" : "Qui vient ?"}",
                  style: GoogleFonts.openSans(
                    fontSize: 10.sp,
                    color: AppColors.mediumGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            // const Spacer(),
            // const SizedBox(
            //   height: 25,
            //   child: VerticalDivider(width: 1.5, color: AppColors.black),
            // ),
            // const SizedBox(width: 10),
            // Image.asset("assets/icons/carbon_settings-adjust.png", height: 28),
          ],
        ),
      ),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/features/widgets/ui/period_ui.dart';
import 'package:spots_xplorer_app/features/widgets/ui/voyageur_ui.dart';

class SearchUi extends ConsumerStatefulWidget {
  // final VoidCallback onClose;
  // final VoidCallback onSearch;
  const SearchUi({super.key});

  @override
  ConsumerState<SearchUi> createState() => _SearchUiState();
}

class _SearchUiState extends ConsumerState<SearchUi> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeRepositoryProvider);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Remix.close_fill),
                  ),
                ),

                Center(
                  child: Image.asset(
                    'assets/imgs/logo.png',
                    width: width * 0.4,
                    height: height * 0.08,
                  ),
                ),
                SizedBox(height: height * 0.017),
                Text(
                  "XPLOREZ LES XPERIENCES",
                  style: GoogleFonts.openSans(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  "Choisissez votre destination, durée et nombre de voyageurs pour une expérience inoubliable.",
                  style: GoogleFonts.openSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryGrey,
                  ),
                ),
                SizedBox(height: height * 0.01),
                _buildDestination(),

                SizedBox(height: height * 0.02),
                buildButton(
                  'Période',
                  state.periode != '' ? state.periode : 'Sélectionner ...',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.55,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.r),
                            ),
                          ),
                          child: const PeriodUI(),
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 12),
                buildButton(
                  'Voyageurs',
                  (state.finalAdultes >= 0 && state.enfants > 0)
                      ? '${state.finalAdultes} Adultes et ${state.finalEnfants} Enfants'
                      : (state.finalAdultes > 0)
                      ? '${state.finalAdultes} Adultes'
                      : (state.enfants > 0)
                      ? '${state.enfants} Enfants'
                      : 'Sélectionner ...',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.33,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.r),
                            ),
                          ),
                          child: const VoyageursUI(),
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    ref.read(homeRepositoryProvider.notifier).search();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.primaryPink,
                          AppColors.secondaryPink,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child:
                          ref.watch(homeRepositoryProvider).isLoading
                              ? const Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.white,
                                ),
                              )
                              : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Remix.search_line,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(width: 10),

                                  Text(
                                    'Rechercher',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDestination() {
    final homeRepository = ref.watch(homeRepositoryProvider);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(3, 4),
            color: AppColors.grey,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Text(
                "Destination   ",
                style: GoogleFonts.montserrat(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryGrey,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Image.asset(
                      'assets/icons/line_search.png',
                      width: constraints.maxWidth,
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap:
                      () => ref
                          .read(homeRepositoryProvider.notifier)
                          .setDestination("Martinique"),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            homeRepository.destination == "Martinique"
                                ? AppColors.primary
                                : AppColors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imgs/martiniaue.png',

                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "Martinique",
                          style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: width * 0.02),
              Expanded(
                child: GestureDetector(
                  onTap:
                      () => ref
                          .read(homeRepositoryProvider.notifier)
                          .setDestination("Guadeloupe"),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            homeRepository.destination == "Guadeloupe"
                                ? AppColors.primary
                                : AppColors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imgs/guadeloupe.png',

                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: height * 0.01),
                        Text(
                          "Guadeloupe",
                          style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text, String subtitle, {Function()? onTap}) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            SizedBox(
              child: Stack(
                children: [
                  Text(
                    "$text  ",
                    style: GoogleFonts.openSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.greyDarker,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Image.asset(
                          'assets/icons/line_search.png',
                          width: constraints.maxWidth,
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),
            Text(
              subtitle,
              style: GoogleFonts.openSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

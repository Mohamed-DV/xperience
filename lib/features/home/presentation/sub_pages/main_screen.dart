import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/features/widgets/activite_card.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  late Future<void> _elementsFuture;

  @override
  void initState() {
    ref.read(loginRepositoryProvider.notifier).getActivites();
    _elementsFuture = ref.read(homeRepositoryProvider.notifier).getHomeEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final activities = ref.watch(loginRepositoryProvider).activites;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Les plus belles émotions sont ici", // بحال Figma
              style: GoogleFonts.montserratAlternates(
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF414141), // رمادي
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Une discipline en tête ?",
              style: GoogleFonts.openSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF414141),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activities.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap:
                        () => ref
                            .read(homeRepositoryProvider.notifier)
                            .addSelectedCategory(activities[index]),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 31.w,
                                height: 33.h,
                                child: Image.network(activities[index].icon),
                              ),
                              Text(
                                activities[index].specificTitle,
                                style: GoogleFonts.openSans(
                                  fontSize: 12.sp,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          if (index != 6)
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: const SizedBox(
                                height: 27,
                                child: VerticalDivider(
                                  width: 1.5,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Divider(),

          FutureBuilder(
            future: _elementsFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                final activities = ref.watch(homeRepositoryProvider).activities;
                final competitions =
                    ref.watch(homeRepositoryProvider).competitions;
                final events = ref.watch(homeRepositoryProvider).events;

          //       Widget buildHorizontalList(
          //         List<EventModel> events,
          //         ActivieType type,
          //       ) => Padding(
          //         padding: const EdgeInsets.only(left: 12,bottom: 20),
          //         child: SizedBox(
          //           height: 400.h,
          //           child: ListView.separated(
          //             scrollDirection: Axis.horizontal,
          //             itemCount: events.length,
          //             separatorBuilder: (_, __) => SizedBox(width: 12.w,height: 20.h,),
          //             itemBuilder: (context, index) {
          //               final activite = events[index];
          //               return ActiviteCard(
          //                 activiteType: type,
          //              //   width: 0.70.sw,
          //                 eventModel: activite,
          //               );
          //             },
          //           ),
          //         ),
          //       );
Widget buildHorizontalList(
  List<EventModel> events,
  ActivieType type,
) {
  return Padding(
    
    padding: const EdgeInsets.only(left: 12,right: 5),
    child: Container(
      color: Colors.white,
      //margin: EdgeInsets.only(bottom: 20.h),
      height: 330.h, // EXACT card height
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return ActiviteCard(
            eventModel: events[index],
            activiteType: type,
          );
        },
      ),
    ),
  );
}

                return Column(
                  children: [
                    const SizedBox(height: 25),
                    _buildCardMore(
                      'assets/icons/Activities.png',
                      'Des Activités Incroyables',
                      ActivieType.activity,
                    ),
                    const SizedBox(height: 20),
                    buildHorizontalList(activities, ActivieType.activity),
                    const SizedBox(height: 20),
                    _buildCardMore(
                      'assets/icons/badge_ico.png',
                      'Des Compétitions intenses',
                      ActivieType.competition,
                    ),
                    const SizedBox(height: 10),
                    buildHorizontalList(competitions, ActivieType.competition),
                    const SizedBox(height: 20),
                    _buildCardMore(
                      'assets/icons/tickit_ico.png',
                      'Des Évènements hauts en couleurs',
                      ActivieType.evenement,
                    ),
                    const SizedBox(height: 10),
                    buildHorizontalList(events, ActivieType.evenement),
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCardMore(String icon, String title, ActivieType activiteType) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),

          boxShadow: const [
            BoxShadow(
              color: AppColors.grey,
              offset: Offset(1, 1),
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(icon, width: 25, height: 20),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                style: GoogleFonts.montserrat(
                  height: 0,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            GestureDetector(
              onTap: () => context.push(Routes.seeAll, extra: activiteType),
              child: Text(
                "Voir tout",
                style: GoogleFonts.montserrat(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primary,
                  color: AppColors.primary,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 
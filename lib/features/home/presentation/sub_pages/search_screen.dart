import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/features/widgets/tab_bar_ui.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeRepositoryProvider);
    final activities = ref.watch(loginRepositoryProvider).activites;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  (state.selectedCategories.isEmpty)
                      ? "Filtrer Par catégories"
                      : "Catégorie Sélectionnée",
                  style: GoogleFonts.montserrat(
                    fontSize: 20.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (state.selectedCategories.isNotEmpty)
                  GestureDetector(
                    onTap: () {
                      isSelected = !isSelected;
                      // showModalBottomSheet(
                      //   context: context,
                      //   shape: const RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.vertical(
                      //       top: Radius.circular(20),
                      //     ),
                      //   ),
                      //   builder: (context) {
                      //     return SizedBox(
                      //       height: 200,
                      //       child: _buildCateroyListToAdd(),
                      //     );
                      //   },
                      // );
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.50,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.r),
                              ),
                            ),
                            child: _buildCateroyListToAdd(),
                          );
                        },
                      );
                      setState(() {});
                    },
                    child: Text(
                      "Ajouter",
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primary,
                        fontSize: 10.sp,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(height: 10.h),

          state.selectedCategories.isEmpty
              ? Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SizedBox(
                  height: 84,
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
                                    height: 32.h,
                                    child: Image.network(
                                      activities[index].icon,
                                    ),
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
              )
              : Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SizedBox(
                  height: 84,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.selectedCategories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap:
                            () => ref
                                .read(homeRepositoryProvider.notifier)
                                .removeSelectedCategory(
                                  state.selectedCategories[index],
                                ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.black.withOpacity(0.1),
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 31.w,
                                      height: 32.h,
                                      child: Image.network(
                                        state.selectedCategories[index].icon,
                                      ),
                                    ),
                                    Text(
                                      state
                                          .selectedCategories[index]
                                          .specificTitle,
                                      style: GoogleFonts.openSans(
                                        fontSize: 12.sp,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 10,
                              child: Icon(
                                Remix.close_line,
                                size: 20,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

          const Divider(),
          const SizedBox(height: 25),
          const TabBarUi(),
          // const SizedBox(height: 1000, child: TabBarUi()),
        ],
      ),
    );
  }

  Widget _buildCateroyListToAdd() {
    final state = ref.watch(homeRepositoryProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 84,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: state.unSelectedCategories.length,
          separatorBuilder:
              (context, index) => Divider(
                color: AppColors.primary.withOpacity(0.15),
                thickness: 1,
                height: 20,
              ),
          itemBuilder: (context, index) {
            final category = state.unSelectedCategories[index];
            return ListTile(
              leading: SizedBox(
                width: 36.w,
                height: 36.h,
                child: Image.network(category.icon),
              ),
              title: Text(
                category.specificTitle,
                style: GoogleFonts.openSans(
                  fontSize: 14.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Remix.add_line,
                color: AppColors.primary,
                size: 22,
              ),
              onTap: () {
                ref
                    .read(homeRepositoryProvider.notifier)
                    .addSelectedCategory(category);
                // Navigator.of(context).pop();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 8,
              ),
              tileColor: AppColors.white,
              hoverColor: AppColors.primary.withOpacity(0.07),
            );
          },
        ),
      ),
    );
  }
}

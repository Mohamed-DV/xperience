import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/activites_model.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';

class ActiviteSheet extends ConsumerStatefulWidget {
  const ActiviteSheet({super.key});

  @override
  ConsumerState<ActiviteSheet> createState() => _ActiviteSheetState();
}

class _ActiviteSheetState extends ConsumerState<ActiviteSheet> {
  List<int> selectedActivites = [];
  @override
  Widget build(BuildContext context) {
    final avtivites = ref.watch(loginRepositoryProvider).activites;
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                color: AppColors.lightPink800,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          Text(
            "Activités favorites",
            style: GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(color: AppColors.primaryPink, thickness: .5),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text(
                    "Merci d'indiquer vos activités favorites",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryPink,
                    ),
                  ),

                  const SizedBox(height: 20),
                  ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return ActivitesItemCard(activite: avtivites[index]);
                    },
                    itemCount: avtivites.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Divider(color: AppColors.primaryPink, thickness: .5),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.grey80,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Text(
                              'Retour',
                              style: GoogleFonts.montserrat(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryGrey,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppColors.primaryPink,
                                    AppColors.secondaryPink,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'Sélectionner',
                                style: GoogleFonts.montserrat(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActivitesItemCard extends ConsumerStatefulWidget {
  final ActivitesModel activite;
  const ActivitesItemCard({super.key, required this.activite});

  @override
  ConsumerState<ActivitesItemCard> createState() => _ActivitesItemCardState();
}

class _ActivitesItemCardState extends ConsumerState<ActivitesItemCard> {
  @override
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.activite.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.openSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: AppColors.black,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          AnimatedCrossFade(
            firstChild: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3,
              ),
              itemCount: widget.activite.subCategories.length,
              itemBuilder: (BuildContext context, int index) {
                final subActivite = widget.activite.subCategories[index];
                final isSelected = ref
                    .watch(loginRepositoryProvider)
                    .selectedActivites
                    .contains(subActivite);
                return GestureDetector(
                  onTap:
                      () => ref
                          .read(loginRepositoryProvider.notifier)
                          .setActiviteFavoris(subActivite),
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.primary : AppColors.white,
                      border:
                          isSelected
                              ? null
                              : Border.all(
                                color: AppColors.lightPink50,
                                width: 1,
                              ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        subActivite.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.openSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: isSelected ? AppColors.white : AppColors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            secondChild: const SizedBox.shrink(),
            crossFadeState:
                isExpanded
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 300),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';

class VoyageursUI extends ConsumerStatefulWidget {
  const VoyageursUI({super.key});

  @override
  ConsumerState<VoyageursUI> createState() => _VoyageursUIState();
}

class _VoyageursUIState extends ConsumerState<VoyageursUI> {
  int adultes = 1;
  int enfants = 0;

  @override
  void initState() {
    super.initState();
    adultes = ref.read(homeRepositoryProvider).adultes;
    enfants = ref.read(homeRepositoryProvider).enfants;
  }

  @override
  Widget build(BuildContext context) {
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
          Text(
            "Voyageurs",
            style: GoogleFonts.montserrat(
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryGrey,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Adultes",
                    style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    "12 ans et plus",
                    style: GoogleFonts.openSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyDarker,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      adultes--;
                      if (adultes < 0) {
                        adultes = 0;
                      }
                      setState(() {});
                      // ref
                      //     .read(homeRepositoryProvider.notifier)
                      //     .setAdulte(adultes);
                    },
                    icon: const Icon(
                      Remix.indeterminate_circle_line,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    adultes.toString(),
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.lightPink800,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      adultes++;
                      // ref
                      //     .read(homeRepositoryProvider.notifier)
                      //     .setAdulte(adultes);
                      setState(() {});
                    },
                    icon: const Icon(
                      Remix.add_circle_line,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enfants",
                    style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    "Moins de 12 ans",
                    style: GoogleFonts.openSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyDarker,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      enfants--;
                      if (enfants < 0) {
                        enfants = 0;
                      }
                      setState(() {});
                      // ref
                      //     .read(homeRepositoryProvider.notifier)
                      //     .setEnfants(enfants);
                    },
                    icon: const Icon(
                      Remix.indeterminate_circle_line,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    enfants.toString(),
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.lightPink800,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      enfants++;
                      // ref
                      //     .read(homeRepositoryProvider.notifier)
                      //     .setEnfants(enfants);
                      setState(() {});
                    },
                    icon: const Icon(
                      Remix.add_circle_line,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: AppColors.primary.withOpacity(0.2)),
          const SizedBox(height: 12),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  // ref.read(homeRepositoryProvider.notifier).setEnfants(0);
                  // ref.read(homeRepositoryProvider.notifier).setAdulte(1);
                  context.pop();
                },
                child: Text(
                  'Passer',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyDarker,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  ref.read(homeRepositoryProvider.notifier).setAdulte(adultes);
                  ref.read(homeRepositoryProvider.notifier).setEnfants(enfants);

                  context.pop();
                  ref
                      .read(homeRepositoryProvider.notifier)
                      .setValueOfVoyeeurs();
                },
                child: Text(
                  'Suivant',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/features/home/domain/restaurent_model.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';

class RestoCard extends ConsumerWidget {
  final RestaurentModel resto;
  const RestoCard({super.key, required this.resto});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        ref.read(sharedIdProvider.notifier).state = resto.id.toString();
        context.push(Routes.restoDetails);
      },
      child: Padding(
        padding: EdgeInsets.only(right: screenWidth * 0.05),
        child: Container(
          padding: EdgeInsets.only(bottom: screenHeight * 0.012),
          width: screenWidth * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.white,
            boxShadow: const [
              BoxShadow(
                color: AppColors.grey,
                offset: Offset(1, 1),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: screenHeight * 0.27,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child:
                      resto.images.isNotEmpty
                          ? Image.network(
                            resto.images.first.image,
                            fit: BoxFit.cover,
                          )
                          : Image.asset(
                            'assets/imgs/resto1back.jpg',
                            fit: BoxFit.cover,
                          ),
                ),
              ),
              SizedBox(height: screenHeight * 0.008),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Remix.star_fill,
                                size: screenWidth * 0.03,
                                color: AppColors.primary,
                              ),
                              SizedBox(width: screenWidth * 0.025),
                              Text(
                                "Pas encore d'avis",
                                style: GoogleFonts.montserrat(
                                  fontSize: screenWidth * 0.025,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.openSans(
                          fontSize: screenWidth * 0.036,
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(text: resto.etablishement),
                          TextSpan(
                            text: " - ${resto.city}",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.04,
                              color: AppColors.greyDarker,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "€€",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.03,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

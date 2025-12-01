import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/features/home/domain/hotel_model.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';

class HotelCard extends ConsumerWidget {
  final HotelModel hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        ref.read(sharedIdProvider.notifier).state = hotel.id.toString();
        context.push(Routes.hotelDetails);
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
                height: screenHeight * 0.35,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child:
                      hotel.images.isNotEmpty
                          ? Image.network(
                            hotel.images.first.image,
                            fit: BoxFit.cover,
                          )
                          : Image.asset(
                            'assets/imgs/restoback.jpg',
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
                    Row(
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
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset(
                            'assets/icons/Hosting.png',
                            fit: BoxFit.cover,
                            width: screenWidth * 0.05,
                            height: screenWidth * 0.05,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.005),
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.openSans(
                          fontSize: screenWidth * 0.036,
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(text: hotel.title),
                          TextSpan(
                            text: " - ${hotel.city}",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.04,
                              color: AppColors.greyDarker,
                            ),
                          ),
                        ],
                      ),
                    ),

                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.openSans(
                          fontSize: screenWidth * 0.035,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          const TextSpan(text: "À partir de "),
                          TextSpan(
                            text: "${hotel.price} €",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.04,
                              color: AppColors.primary,
                            ),
                          ),
                          TextSpan(
                            text: "/nuits",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/utils/helpers.dart';
import 'package:spots_xplorer_app/features/reservation/domain/restaurant_reservation_model.dart';
import 'package:spots_xplorer_app/features/reservation/shared/provider.dart';

class ReservationRestoCard extends ConsumerWidget {
  final RestaurantReservationModel reservation;
  const ReservationRestoCard({super.key, required this.reservation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth * 0.24; // Responsive image width
    final imageHeight = imageWidth * 0.9; // Maintain aspect ratio

    return GestureDetector(
      onTap: () {
        ref.read(restoReservationModelProvider.notifier).state = reservation;
        context.push(Routes.restoReservationDetails);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.03,
          vertical: screenWidth * 0.015,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(4, 2),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          width: double.infinity,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  reservation.restaurant.images?.first.image ?? '',
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),

                // Image.network(
                //     reservation.restaurant.forms?.first.image1 ?? '',
                //     width: imageWidth,
                //     height: imageHeight,
                //     fit: BoxFit.cover,
                //   ),
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Date Reservation
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/icons/calander.png',
                                width: screenWidth * 0.04,
                                height: screenWidth * 0.04,
                              ),
                              SizedBox(width: screenWidth * 0.012),
                              Text(
                                formatShortDateReservation(
                                  reservation.reservationDate,
                                ),
                                style: GoogleFonts.openSans(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary,
                                ),
                              ),
                              Text(
                                ' à ${formatShortTimeReservation(reservation.reservationTime)}',

                                style: GoogleFonts.openSans(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        reservation.restaurant.etablishement ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                          color: AppColors.black,
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payez sur place",
                            style: GoogleFonts.montserrat(
                              color: AppColors.primary,
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

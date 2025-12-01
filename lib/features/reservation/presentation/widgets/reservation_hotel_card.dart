import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/utils/helpers.dart';
import 'package:spots_xplorer_app/features/reservation/domain/hotel_reservation_model.dart';
import 'package:spots_xplorer_app/features/reservation/shared/provider.dart';

class ReservationHotelCard extends ConsumerWidget {
  final HotelReservationModel reservation;
  const ReservationHotelCard({super.key, required this.reservation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth * 0.24; // Responsive image width
    final imageHeight = imageWidth * 0.9; // Maintain aspect ratio

    return GestureDetector(
      onTap: () {
        ref.read(hotelReservationModelProvider.notifier).state = reservation;
        context.push(Routes.hotelReservationDetails);
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
                  reservation.accomodation.images.first.image,
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
                            ],
                          ),
                        ],
                      ),
                      RichText(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          style: GoogleFonts.montserrat(
                            color: AppColors.black,
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(text: reservation.accomodation.title),
                            TextSpan(
                              text: ' - ',
                              style: GoogleFonts.montserrat(
                                color: AppColors.black.withOpacity(0.6),
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: reservation.accomodation.city,
                              style: GoogleFonts.montserrat(
                                color: AppColors.blackSecondary,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "${reservation.totalPrice}€",
                                style: GoogleFonts.montserrat(
                                  color: AppColors.primary,
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "- (${reservation.accomodation.price}€/nuits)",
                                style: GoogleFonts.montserrat(
                                  color: AppColors.primary,
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/timer.png',
                                width: screenWidth * 0.05,
                                height: screenWidth * 0.05,
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                // getRestDays(reservation.reservationDate),
                                "1 Nuit",
                                style: GoogleFonts.openSans(
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
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

  String getRestDays(String isoDate) {
    final dateTime = DateTime.parse(isoDate).toLocal();
    final now = DateTime.now();
    final difference = dateTime.difference(now);

    if (difference.inDays > 0) {
      return '${difference.inDays} jours';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hrs';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} min';
    } else {
      return 'Maintenant';
    }
  }
}

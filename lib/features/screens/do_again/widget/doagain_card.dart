import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/models/reservation_model.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
import 'package:spots_xplorer_app/core/utils/helpers.dart';

class DoagainCard extends ConsumerWidget {
  final ReservationModel reservation;
  final String type;
  const DoagainCard({super.key, required this.reservation, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth * 0.24; // Responsive image width
    final imageHeight = imageWidth * 0.9; // Maintain aspect ratio
String? getReservationImage(ReservationModel r, String type) {
  if (type == "activity") {
    if (r.activity?.images != null && r.activity!.images.isNotEmpty) {
      return r.activity!.images.first.image;
    }
  }

  if (type == "event") {
    if (r.event?.images != null && r.event!.images.isNotEmpty) {
      return r.event!.images.first.image;
    }
  }

  if (type == "competition") {
    if (r.competition?.images != null && r.competition!.images.isNotEmpty) {
      return r.competition!.images.first.image;
    }
  }

  return null; // no image
}
   final img = getReservationImage(reservation, type);
    return GestureDetector(
      onTap: () {
             
        ref
            .read(reservationRepositoryProvider.notifier)
            .setSelectedReservation(reservation, type);
        EventModel event =
            type == 'activity'
                ? EventModel(
                  id: reservation.activity!.id,
                  title: reservation.activity!.title,
                  images: [],
                  eventType: 'activity',
                )
                : type == 'event'
                ? EventModel(
                  id: reservation.event!.id,
                  title: reservation.event!.title,
                  images: [],
                  eventType: 'event',
                )
                : EventModel(
                  id: reservation.competition!.id,
                  title: reservation.competition!.title,
                  images: [],
                  eventType: 'competition',
                );
        ref
            .read(homeRepositoryProvider.notifier)
            .setSelectedEvent(event, false);
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
  child: img != null
      ? Image.network(
          img,
          width: imageWidth,
          height: imageHeight,
          fit: BoxFit.cover,
        )
      : Image.asset(
          'assets/imgs/cover.jpg',
          width: imageWidth,
          height: imageHeight,
          fit: BoxFit.cover,
        ),
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Remix.star_fill,
                                size: 18,
                                color: AppColors.primary,
                              ),
                              SizedBox(width: screenWidth * 0.025),
                              Text(
                                "0",
                                style: GoogleFonts.montserrat(
                                  fontSize: screenWidth * 0.03,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                " (0 Avis)",
                                style: GoogleFonts.montserrat(
                                  fontSize: screenWidth * 0.03,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
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
                                formatShortDate(reservation.reservationDate),
                                style: GoogleFonts.openSans(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        type == 'event'
                            ? reservation.event?.title ?? ' '
                            : type == 'competition'
                            ? reservation.competition?.title ?? ' '
                            : reservation.activity?.title ?? ' ',
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
                            type == 'event'
                                ? "${reservation.event?.price ?? '--'}€"
                                : type == 'competition'
                                ? "${reservation.competition?.price ?? '--'}€"
                                : "${reservation.activity?.price ?? '--'}€",
                            style: GoogleFonts.montserrat(
                              color: AppColors.primary,
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          // Row(
                          //   children: [
                          //     Image.asset(
                          //       'assets/icons/Chrono.Compet.png',
                          //       width: screenWidth * 0.07,
                          //       height: screenWidth * 0.055,
                          //     ),
                          //     SizedBox(width: screenWidth * 0.012),
                          //     Text(
                          //       '3 hrs',
                          //       style: GoogleFonts.montserratAlternates(
                          //         fontSize: screenWidth * 0.035,
                          //         fontWeight: FontWeight.w700,
                          //         color: AppColors.primary,
                          //       ),
                          //     ),
                          //   ],
                          // ),
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

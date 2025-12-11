import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/models/reservation_model.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
import 'package:spots_xplorer_app/core/utils/helpers.dart';

class ReservationCard extends ConsumerWidget {
  final ReservationModel reservation;
  final String type;
  const ReservationCard({
    super.key,
    required this.reservation,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth * 0.24; // Responsive image width
    final imageHeight = imageWidth * 0.9; // Maintain aspect ratio

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
        ref.read(homeRepositoryProvider.notifier).setSelectedEvent(event, true);
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
              type == 'activity'
                  ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:
                        reservation.activity?.images != null &&
                                reservation.activity!.images!.isNotEmpty
                            ? Image.network(
                              reservation.activity!.images!.first.image ?? "",
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
                  )
                  : type == 'event'
                  ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:
                        reservation.event?.images != null &&
                                reservation.event!.images!.isNotEmpty
                            ? Image.network(
                              reservation.event!.images!.first.image ??"",
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
                  )
                  : ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:
                        reservation.competition?.images != null &&
                                reservation.competition!.images!.isNotEmpty 
                            ? Image.network(
                              reservation.competition!.images!.first.image ??"",
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
                                "${formatShortDate(reservation.reservationDate ??"")} à ${formatShortTimeReservation(reservation.fromHour ?? '00:00')}",
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
                        type == 'activity'
                            ? (reservation.activity?.title ??
                                'Unknown Activity')
                            : type == 'event'
                            ? (reservation.event?.title ?? 'Unknown Event')
                            : (reservation.competition?.title ??
                                'Unknown Competition'),
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
                            "${reservation.totalPrice ?? '--'}€",
                            style: GoogleFonts.montserrat(
                              color: AppColors.primary,
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w700,
                            ),
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
                                type == 'activity'
                                    ? getRestDays(
                                      reservation.activity?.time ?? '--',
                                    )
                                    : type == 'event'
                                    ? getRestDays(
                                      reservation.event?.time ?? '--',
                                    )
                                    : getRestDays(
                                      reservation.competition?.time ?? '--',
                                    ),

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
    // Assumes isoDate is in the format "HH:mm:ss"
    final parts = isoDate.split(':');
    if (parts.isNotEmpty) {
      return '${parts[0]}h';
    }
    return '--';
  }
}

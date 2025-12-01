import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/counter_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/date_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/payment_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/time_slot_selector.dart';

class SelectDateReservationScreen extends ConsumerStatefulWidget {
  final String totalPrice;
  final int reservationId;
  final String reservationType;
  final bool forUpdate;

  const SelectDateReservationScreen({
    required this.reservationType,
    required this.reservationId,
    required this.totalPrice,
    this.forUpdate = false,
    super.key,
  });

  @override
  ConsumerState<SelectDateReservationScreen> createState() =>
      _SelectDateReservationScreenState();
}

class _SelectDateReservationScreenState
    extends ConsumerState<SelectDateReservationScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(reservationRepositoryProvider.notifier).setAdulte(1);
      ref
          .read(reservationRepositoryProvider.notifier)
          .setSelectedType(
            widget.reservationId,
            widget.reservationType,
            widget.totalPrice,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final reservationState = ref.watch(reservationRepositoryProvider);
    print(
      "reservationState: ${reservationState.adultsCount + reservationState.childrenCount}",
    );
    return Positioned(
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.63,

        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(3, 3),
              color: AppColors.blackSecondary,
            ),
          ],
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child:
            reservationState.isLoadingReservation
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/calander.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Sélectionnez une date de réservation',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      DateSelector(
                        initialDate:
                            DateTime.parse(
                              ref
                                  .watch(reservationRepositoryProvider)
                                  .reservationDate,
                            ) ??
                            DateTime.now(),

                        daysCount: 30, // Show next 30 days
                        onDateSelected: (selectedDate) {
                          ref
                              .read(reservationRepositoryProvider.notifier)
                              .setReservationDate(selectedDate);
                        },
                      ),
                      const SizedBox(height: 8),
                      const Divider(color: AppColors.primary, thickness: 1),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/clock.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Sélectionnez un créneau horaire',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      widget.reservationType == "competition"
                          ? TimeSlotSelector(
                            initialFromHour: reservationState.fromHour,
                            initialToHour: reservationState.toHour,
                            onTimeSlotSelected:
                                (from, to) => ref
                                    .read(
                                      reservationRepositoryProvider.notifier,
                                    )
                                    .setTimeReservation(from, to),
                            timeSlots: [
                              DateTime.now().copyWith(
                                hour: 10,
                                minute: 0,
                                second: 0,
                                microsecond: 0,
                              ),
                            ],
                          )
                          : TimeSlotSelector(
                            initialFromHour: reservationState.fromHour,
                            initialToHour: reservationState.toHour,
                            onTimeSlotSelected:
                                (from, to) => ref
                                    .read(
                                      reservationRepositoryProvider.notifier,
                                    )
                                    .setTimeReservation(from, to),
                            onInitialTimeSlotSelected: (p0) => {},

                            timeSlots: [
                              DateTime.now().copyWith(
                                hour: 9,
                                minute: 0,
                                second: 0,
                                microsecond: 0,
                              ),
                              DateTime.now().copyWith(
                                hour: 10,
                                minute: 0,
                                second: 0,
                                microsecond: 0,
                              ),
                              DateTime.now().copyWith(
                                hour: 11,
                                minute: 0,
                                second: 0,
                                microsecond: 0,
                              ),
                              DateTime.now().copyWith(
                                hour: 12,
                                minute: 0,
                                second: 0,
                                microsecond: 0,
                              ),
                              DateTime.now().copyWith(
                                hour: 13,
                                minute: 0,
                                second: 0,
                                microsecond: 0,
                              ),
                              DateTime.now().copyWith(
                                hour: 14,
                                minute: 0,
                                second: 0,
                                microsecond: 0,
                              ),
                              DateTime.now().copyWith(
                                hour: 15,
                                minute: 0,
                                second: 0,
                                microsecond: 0,
                              ),
                            ],
                          ),
                      const SizedBox(height: 8),
                      const Divider(color: AppColors.primary, thickness: 1),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/group1.png',
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Sélectionnez le nombre des participants',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Row(
                          children: [
                            Expanded(
                              child: CounterSelector(
                                title: 'Adultes',
                                subtitle: '13 ans et plus',
                                onCountChanged: (p0) {
                                  ref
                                      .read(
                                        reservationRepositoryProvider.notifier,
                                      )
                                      .setAdulte(p0);
                                },
                              ),
                            ),
                            const SizedBox(height: 16),
                            Expanded(
                              child: CounterSelector(
                                title: 'Enfants',
                                subtitle: 'moins de 13 ans',
                                onCountChanged: (p1) {
                                  ref
                                      .read(
                                        reservationRepositoryProvider.notifier,
                                      )
                                      .setChildren(p1);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Divider(color: AppColors.primary, thickness: 1),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 12,
                        ),
                        width: MediaQuery.of(context).size.width,

                        child: ClipRRect(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Prix Total',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.primaryGrey,
                                        ),
                                      ),
                                      Text(
                                        '${((reservationState.adultsCount + reservationState.childrenCount) * double.parse(widget.totalPrice)).toStringAsFixed(2)}€',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.primaryGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap:
                                      () => {
                                        if (ref
                                            .read(
                                              reservationRepositoryProvider
                                                  .notifier,
                                            )
                                            .isReservationValid())
                                          {showPayement(widget.forUpdate)}
                                        else
                                          {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Veuillez remplir tous les champs requis.',
                                                ),
                                              ),
                                            ),
                                          },
                                      },

                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
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
                                      'Page suivante',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 18,
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
                      ),
                    ],
                  ),
                ),
      ),
    );
  }

  void showPayement(bool forUpdate) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,

      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      builder:
          (context) => DraggableScrollableSheet(
            initialChildSize: 0.9, //set this as you want
            maxChildSize: 0.9, //set this as you want
            minChildSize: 0.50,
            builder:
                (context, scrollController) =>
                    PaymentSelector(forUpdate: forUpdate),
          ),
    );
  }
}

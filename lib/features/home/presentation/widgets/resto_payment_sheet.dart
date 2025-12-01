import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/utils/helpers.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/confirmation_payement.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/payment_selector.dart';

class RestoPaymentSheet extends ConsumerStatefulWidget {
  const RestoPaymentSheet({super.key});

  @override
  ConsumerState<RestoPaymentSheet> createState() => _RestoPaymentSheetState();
}

class _RestoPaymentSheetState extends ConsumerState<RestoPaymentSheet> {
  @override
  Widget build(BuildContext context) {
    final resto = ref.watch(restaurantProvider);
    ref.listen(myhomeNotifierProvider, (pr, state) {
      state.maybeWhen(
        createRestaurantReservationSuccess: () async {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return Dialog(
                backgroundColor: Colors.transparent,
                insetPadding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 500, // Maximum width
                    ),
                    child: const ConfirmationPayement(),
                  ),
                ),
              );
            },
          );
          await Future.delayed(const Duration(seconds: 3));
          context.go(Routes.reservation); // Close the dialog aft
        },
        createRestaurantReservationFailure: (message) {
          print(message);
        },
        orElse: () {},
      );
    });
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
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
          ),
          const SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildCoverReservation(),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                  const SizedBox(height: 12),
                  buildPaymentDates(),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                  const SizedBox(height: 12),
                  buildRestoPaymentSheet(),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                  const SizedBox(height: 12),
                  buildConditionsAnnulation(),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                  buildButonConfirmationPayment(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverReservation() {
    final resto = ref.watch(detailsRestoProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.network(resto.images.first.image, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            // spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                     SizedBox(height: 10.h,),
                  const SizedBox.shrink(), // Placeholder for future use
                  Text(
                    'Restaurant',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),

              Text(
                resto.etablishement,
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/star_ico.png',
                    width: 18,
                    height: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Aucun avis',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildButonConfirmationPayment() {
    return Column(
      children: [
        Text(
          "En cliquant sur ce bouton, lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat.",
          style: GoogleFonts.montserrat(
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryGrey,
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            final reservation = ref.read(reservationRestaurantProvider);
            ref
                .read(myhomeNotifierProvider.notifier)
                .createRestaurantReservation(
                  reservation.copyWith(type: 'restaurant'),
                );
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.primaryPink, AppColors.secondaryPink],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Confirmer le paiement',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildPaymentDates() {
    final resto = ref.watch(reservationRestaurantProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Votre Reservation',
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dates',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  formatDayMonthYear(resto.reservationDate ?? ''),
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Text(
                'Modifier',
                style: GoogleFonts.montserrat(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Heures',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  // formatTime('2023-10-01 14:00:00'),
                  "${resto.reservationTime ?? ''} h",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Text(
                'Choisir',
                style: GoogleFonts.montserrat(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choix gourmand',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  'A table - ${resto.participantCount} per',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Text(
                'Modifier',
                style: GoogleFonts.montserrat(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildRestoPaymentSheet() {
    final resto = ref.watch(reservationRestaurantProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Détails du prix',
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 12),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text(
        //       '${resto.participantCount} per.',
        //       style: GoogleFonts.montserrat(
        //         fontSize: 14,
        //         fontWeight: FontWeight.w400,
        //         color: AppColors.primaryGrey,
        //       ),
        //     ),
        //     Text(
        //       '${resto.totalPrice}€',
        //       style: GoogleFonts.montserrat(
        //         fontSize: 14,
        //         fontWeight: FontWeight.w400,
        //         color: AppColors.primaryGrey,
        //       ),
        //     ),
        //   ],
        // ),
        Column(
          children:
              resto.selectedForms
                  .map(
                    (e) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e.name,
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryGrey,
                          ),
                        ),
                        Text(
                          '${e.price} €',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryGrey,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Frais de service',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
            Text(
              '0.89€',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: AppColors.primaryGrey, thickness: 0.5),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
            Text(
              '${(resto.totalPrice ?? 0) + 0.89}€',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildConditionsAnnulation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Conditions d\'annulations',
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        RichText(
          text: TextSpan(
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: AppColors.primaryGrey,
            ),
            children: [
              const TextSpan(
                text:
                    "Cette activité est non-remboursable. Pour toutes urgences veuillez contacter l'organisateur. ",
              ),
              TextSpan(
                text: "En savoir plus",
                style: GoogleFonts.montserrat(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConditionAnnulation(),
                          ),
                        );
                      },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

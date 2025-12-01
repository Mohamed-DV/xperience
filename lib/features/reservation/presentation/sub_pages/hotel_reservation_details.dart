import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/core/utils/helpers.dart';
import 'package:spots_xplorer_app/features/home/domain/details_hotel_model.dart';
import 'package:spots_xplorer_app/features/home/presentation/widgets/hotel_payment_sheet.dart';
import 'package:spots_xplorer_app/features/home/presentation/widgets/resto_payment_sheet.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';
import 'package:spots_xplorer_app/features/reservation/domain/hotel_reservation_model.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/counter_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/date_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/payment_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/reservation_details_button.dart';
import 'package:spots_xplorer_app/features/reservation/shared/provider.dart';
import 'package:spots_xplorer_app/features/widgets/expandable_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelReservationDetails extends ConsumerStatefulWidget {
  const HotelReservationDetails({super.key});

  @override
  ConsumerState<HotelReservationDetails> createState() =>
      _HotelReservationDetailsState();
}

class _HotelReservationDetailsState
    extends ConsumerState<HotelReservationDetails> {
  int _currentCarouselIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final hotel = ref.watch(hotelReservationModelProvider);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(width: width, height: height),
          // Carousel with indicator
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .39,
                child: CarouselSlider.builder(
                  itemCount: hotel.accomodation.images.length,
                  itemBuilder: (context, index, realIdx) {
                    final imgPath = hotel.accomodation.images[index];
                    print('imgPath ==> $imgPath');
                    return Image.network(
                      imgPath.image,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    );
                  },
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * .39,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentCarouselIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: height * 0.065,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      width: _currentCarouselIndex == index ? width * 0.09 : 8,
                      height: height * 0.01,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color:
                            _currentCarouselIndex == index
                                ? AppColors.primary
                                : AppColors.lightPink800,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // ref
                        //     .read(reservationRepositoryProvider.notifier)
                        //     .onBack();
                        context.pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Remix.arrow_left_line),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/icons/carbon_location-heart.png',
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              width: width,
              height: height * 0.65,
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotel.accomodation.title,
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: height * 0.01),

                    buildInfoCard(hotel.accomodation),

                    const SizedBox(height: 12),
                    const Divider(color: AppColors.primaryPink),
                    const SizedBox(height: 12),
                    Text(
                      'Plus d\'infos :',
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ExpandableText(text: hotel.accomodation.description),
                    const SizedBox(height: 12),
                    const Divider(color: AppColors.primaryPink),
                    const SizedBox(height: 12),
                    Text(
                      'Ses Atouts',
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                          hotel.accomodation.assets
                              .map((e) => buildAtoutItem(e.title))
                              .toList(),
                    ),
                    const SizedBox(height: 12),
                    const Divider(color: AppColors.primaryPink),
                    const SizedBox(height: 12),
                    Text(
                      'Les Équipements',
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                          hotel.accomodation.equipements
                              .map((e) => buildAtoutItem(e.title))
                              .toList(),
                    ),
                    const SizedBox(height: 12),
                    const Divider(color: AppColors.primaryPink),
                    const SizedBox(height: 12),
                    // Text(
                    //   'Contacts',
                    //   style: GoogleFonts.montserratAlternates(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.w600,
                    //     color: AppColors.black,
                    //   ),
                    // ),
                    // const SizedBox(height: 12),
                    // buildContact('Tél', hotel.phone),
                    // const SizedBox(height: 4),
                    // buildContact('Mail', resto.email),
                    // const SizedBox(height: 4),
                    // buildContact('Site internet', resto.website),

                    // const SizedBox(height: 12),

                    // const SizedBox(height: 12),
                    // SizedBox(
                    //   height: height * 0.24,
                    //   width:
                    //       MediaQuery.of(
                    //         context,
                    //       ).size.width, // Add width constraint
                    //   child: ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     children: const [
                    //       ReviewCard(
                    //         avatarUrl:
                    //             'https://randomuser.me/api/portraits/men/1.jpg',
                    //         name: 'Ignace Volbert',
                    //         badges: 4,
                    //         rating: 5,
                    //         timeAgo: 'Il y a 5 jours',
                    //         review:
                    //             "Un séjour parfait ! L'appartement est spacieux et bien équipé, avec une vue incroyable sur la mer. L'accès à la plage est très pratique.",
                    //       ),
                    //       ReviewCard(
                    //         avatarUrl:
                    //             'https://randomuser.me/api/portraits/women/2.jpg',
                    //         name: 'Christine Dupont',
                    //         badges: 8,
                    //         rating: 4,
                    //         timeAgo: 'Il y a 2 semaines',
                    //         review:
                    //             "Très bel endroit et hôte très accueillant. Quelques détails pourraient être améliorés mais globalement satisfait !",
                    //       ),
                    //       // Add more ReviewCard widgets if needed
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/carbon_star-filled.png',
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Aucun avis',
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.2),
                  ],
                ),
              ),
            ),
          ),

          // Bottom reservation button
          const ReservationDetailsButton(
            titile: "Réservation effectuée !",
            subtitle: "Besoin d'autre chose ?",
            detials: HotelReservationPaymentSheet(),
          ),
        ],
      ),
    );
  }
}

Widget buildInfoCard(AccomodationModel hotel) {
  // get first and last day from your response
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/Isolation_Mode.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () async {
                      double lat = hotel.location.coordinates[0];
                      double lng = hotel.location.coordinates[1];

                      final url =
                          'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      }
                    },
                    child: Text(
                      hotel.city,
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primary,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 24),
                  Text(
                    'Cuisine Locale - Pizzeria - Bar',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mediumGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/icons/calander.png', width: 20, height: 20),
              const SizedBox(width: 5),
              Text(
                '5 nov. - 9 nov. 2024',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/carbon_star-filled.png',
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 5),
              Text(
                'Aucun avis',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 12),
    ],
  );
}

Widget buildAtoutItem(String atout) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0),
    child: Row(
      children: [
        Text(
          '• ',
          style: GoogleFonts.openSans(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          atout,
          style: GoogleFonts.openSans(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
        ),
      ],
    ),
  );
}

Widget buildContact(String text, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0),
    child: RichText(
      text: TextSpan(
        text: '• $text : ',
        style: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
        children: [
          TextSpan(
            text: value,
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    ),
  );
}

class HotelReservationPaymentSheet extends ConsumerStatefulWidget {
  const HotelReservationPaymentSheet({super.key});

  @override
  ConsumerState<HotelReservationPaymentSheet> createState() =>
      _HotelReservationPaymentSheetState();
}

class _HotelReservationPaymentSheetState
    extends ConsumerState<HotelReservationPaymentSheet> {
  @override
  Widget build(BuildContext context) {
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
                  buildHotelPaymentSheet(),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                  const SizedBox(height: 12),
                  buildConditionsAnnulation(),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverReservation() {
    final resto = ref.watch(hotelReservationModelProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.network(
              resto.accomodation.images.first.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
           // spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(), // Placeholder for future use
                  Text(
                    'Hébergements',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),

              Text(
                resto.accomodation.title,
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

  Widget buildPaymentDates() {
    final resto = ref.watch(hotelReservationModelProvider);
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
                  // resto.reservationDate ?? '',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            // GestureDetector(
            //   onTap: () {
            //     context.pop();
            //   },
            //   child: Text(
            //     'Modifier',
            //     style: GoogleFonts.montserrat(
            //       decoration: TextDecoration.underline,
            //       fontSize: 14,
            //       fontWeight: FontWeight.w600,
            //       color: AppColors.black,
            //     ),
            //   ),
            // ),
          ],
        ),
        const SizedBox(height: 12),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           'Heures',
        //           style: GoogleFonts.montserratAlternates(
        //             fontSize: 16,
        //             fontWeight: FontWeight.w600,
        //             color: AppColors.black,
        //           ),
        //         ),
        //         Text(
        //           // formatTime('2023-10-01 14:00:00'),
        //           "${resto.accomodation.reservationTime ?? ''} h",
        //           style: GoogleFonts.montserrat(
        //             fontSize: 14,
        //             color: AppColors.primaryGrey,
        //           ),
        //         ),
        //       ],
        //     ),
        //     GestureDetector(
        //       onTap: () {
        //         context.pop();
        //       },
        //       child: Text(
        //         'Choisir',
        //         style: GoogleFonts.montserrat(
        //           decoration: TextDecoration.underline,
        //           fontSize: 14,
        //           fontWeight: FontWeight.w600,
        //           color: AppColors.black,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Participants',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  '${resto.participantCount} per',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            // GestureDetector(
            //   onTap: () {
            //     context.pop();
            //   },
            //   child: Text(
            //     'Modifier',
            //     style: GoogleFonts.montserrat(
            //       decoration: TextDecoration.underline,
            //       fontSize: 14,
            //       fontWeight: FontWeight.w600,
            //       color: AppColors.black,
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }

  Widget buildHotelPaymentSheet() {
    final resto = ref.watch(hotelReservationModelProvider);

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${resto.totalPrice}€ x ${resto.participantCount} per.',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
            Text(
              '${resto.totalPrice}€',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
          ],
        ),
        // Column(
        //   children:
        //       resto.selectedForms
        //           .map(
        //             (e) => Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   e.name,
        //                   style: GoogleFonts.montserrat(
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w400,
        //                     color: AppColors.primaryGrey,
        //                   ),
        //                 ),
        //                 Text(
        //                   '${e.price} €',
        //                   style: GoogleFonts.montserrat(
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w400,
        //                     color: AppColors.primaryGrey,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           )
        //           .toList(),
        // ),
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
              '${(double.parse(resto.totalPrice) ?? 0) + 0.89}€',
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

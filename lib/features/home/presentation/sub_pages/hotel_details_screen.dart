import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/features/home/domain/details_hotel_model.dart';
import 'package:spots_xplorer_app/features/home/presentation/widgets/hotel_payment_sheet.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/button_lunch.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/counter_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/date_selector.dart';
import 'package:spots_xplorer_app/features/widgets/expandable_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelDetailsScreen extends ConsumerStatefulWidget {
  const HotelDetailsScreen({super.key});

  @override
  ConsumerState<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends ConsumerState<HotelDetailsScreen> {
  int _currentCarouselIndex = 0;

  @override
  void initState() {
    Future.microtask(() {
      ref
          .read(myhomeNotifierProvider.notifier)
          .getDetailsHotel(ref.read(sharedIdProvider));
    });
    super.initState();
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final hotelStateType = ref.watch(hotelTypeState);

    final state = ref.watch(myhomeNotifierProvider);
    state.maybeWhen(
      getDetailsHotelSuccess: (hotel) {
        Future.microtask(() {
          ref.read(detailsHotelModelProvider.notifier).state = hotel;
        });
        setState(() {
          isLoading = false;
        });
      },
      orElse: () {},
    );
    final hotel = ref.watch(detailsHotelModelProvider);
    return Scaffold(
      body:
          isLoading
              ? const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              )
              : Stack(
                children: [
                  SizedBox(width: width, height: height),
                  // Carousel with indicator
                  Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .39,
                        child: CarouselSlider.builder(
                          itemCount: hotel.images.length,
                          itemBuilder: (context, index, realIdx) {
                            final imgPath = hotel.images[index];
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
                              width:
                                  _currentCarouselIndex == index
                                      ? width * 0.09
                                      : 8,
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

                  if (hotelStateType == HotelProvidersType.initial)
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 18,
                        ),
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
                                hotel.title,
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(height: height * 0.01),

                              buildInfoCard(hotel),

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
                              ExpandableText(text: hotel.description),
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
                                    hotel.assets
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
                                    hotel.equipements
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

                  if (hotelStateType == HotelProvidersType.reserve)
                    RestoSelectReservation(resto: hotel),
                  const SizedBox(),
                  if (hotelStateType == HotelProvidersType.initial)
                    ButtonLunch(
                      onPressed: () {
                        ref.read(hotelTypeState.notifier).state =
                            HotelProvidersType.reserve;
                      },
                      price: '',
                      bigTitle: 'À partir de ${hotel.price}€',
                      subtitle: 'par nuits',
                    ),
                ],
              ),
    );
  }
}

Widget buildInfoCard(DetailsHotelModel hotel) {
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

class RestoSelectReservation extends ConsumerStatefulWidget {
  final DetailsHotelModel resto;
  const RestoSelectReservation({super.key, required this.resto});

  @override
  ConsumerState<RestoSelectReservation> createState() =>
      _RestoSelectReservationState();
}

class _RestoSelectReservationState
    extends ConsumerState<RestoSelectReservation> {
  int adulteCount = 1;
  int childrenCout = 0;
  @override
  Widget build(BuildContext context) {
    String selectedTable = '';
    final hotel = ref.watch(detailsHotelModelProvider);
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
        child: SingleChildScrollView(
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
                daysCount: 30, // Show next 30 days
                onDateSelected: (selectedDate) {
                  final date = DateFormat('yyyy-MM-dd').format(selectedDate);
                  ref
                      .read(reservationHotelProvider.notifier)
                      .update((state) => state.copyWith(reservationDate: date));
                },
              ),

              const SizedBox(height: 12),
              const SizedBox(height: 8),
              const Divider(color: AppColors.primary, thickness: 1),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset('assets/icons/group1.png', width: 25, height: 25),
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
                          adulteCount = p0;
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: CounterSelector(
                        title: 'Enfants',
                        subtitle: 'moins de 13 ans',
                        onCountChanged: (p1) {
                          childrenCout = p1;
                          setState(() {});
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                '${double.parse(hotel.price) * (adulteCount + childrenCout)}€',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primaryGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            int totalCount = adulteCount + childrenCout;
                            double totalprice =
                                totalCount * double.parse(hotel.price);
                            ref
                                .read(reservationHotelProvider.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    participantCount: totalCount,
                                    totalPrice: totalprice,
                                    eventId: hotel.id,
                                  ),
                                );

                            // Check if complete all value
                            final reservation = ref.read(
                              reservationHotelProvider,
                            );

                            if (reservation.reservationDate == null) {
                              ref
                                  .read(notificationRepositoryProvider.notifier)
                                  ..showToastWarning(title: "Action non permise");
(
                                    title:
                                        "Merci de compléter tous les choix avant de continuer.",
                                  );
                              return;
                            }

                            showPayement(context);
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

  void showPayement(BuildContext context) {
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
            builder: (context, scrollController) => const HotelPaymentSheet(),
          ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/notification_repository.dart';
import 'package:spots_xplorer_app/core/utils/data/language_data.dart';
import 'package:spots_xplorer_app/features/home/domain/details_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/domain/reservation_restaurant_model.dart';
import 'package:spots_xplorer_app/features/home/presentation/sub_pages/formules_screen.dart';
import 'package:spots_xplorer_app/features/home/presentation/widgets/resto_button_reservation.dart';
import 'package:spots_xplorer_app/features/home/presentation/widgets/resto_payment_sheet.dart';
import 'package:spots_xplorer_app/features/home/shared/provider.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/button_lunch.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/counter_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/date_selector.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/resto_time_selector.dart';
import 'package:spots_xplorer_app/features/widgets/expandable_text.dart';
import 'package:url_launcher/url_launcher.dart';

class RestoDetailsScreen extends ConsumerStatefulWidget {
  const RestoDetailsScreen({super.key});

  @override
  ConsumerState<RestoDetailsScreen> createState() => _RestoDetailsScreenState();
}

class _RestoDetailsScreenState extends ConsumerState<RestoDetailsScreen> {
  int _currentCarouselIndex = 0;
  @override
  void initState() {
    Future.microtask(() {
      ref.read(restoTypeState.notifier).state = RestoProvidersType.initial;

      ref
          .read(myhomeNotifierProvider.notifier)
          .getDetailsResturant(ref.read(sharedIdProvider));
      ref.read(formsIdSelected.notifier).state = [];
      ref.read(reservationRestaurantProvider.notifier).state =
          ReservationRestaurantModel.empty();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final restoProviderType = ref.watch(restoTypeState);

    final state = ref.watch(myhomeNotifierProvider);

    return state.maybeWhen(
      initial: () => const Center(child: CircularProgressIndicator()),
      getDetailsResruantSuccess: (resto) {
        Future.microtask(() {
          ref.read(detailsRestoProvider.notifier).state = resto;
        });
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
                      itemCount: resto.images.length,
                      itemBuilder: (context, index, realIdx) {
                        final imgPath = resto.images[index];
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
                              _currentCarouselIndex == index ? width * 0.09 : 8,
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

              if (restoProviderType == RestoProvidersType.initial)
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
                            resto.etablishement,
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: height * 0.01),

                          buildInfoCard(resto),

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
                          ExpandableText(text: resto.description),
                          const SizedBox(height: 12),
                          const Divider(color: AppColors.primaryPink),
                          const SizedBox(height: 12),
                          Text(
                            'Les Horaires',
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
                                formatOpeningHours(
                                  resto.openingHours,
                                ).map((e) => Text(e)).toList(),
                          ),
                          const SizedBox(height: 12),
                          const Divider(color: AppColors.primaryPink),
                          const SizedBox(height: 12),
                          Text(
                            'Les Caractéristiques',
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
                                resto.characteristics
                                    .map((e) => buildAtoutItem(e.title))
                                    .toList(),
                          ),
                          const SizedBox(height: 12),
                          const Divider(color: AppColors.primaryPink),
                          const SizedBox(height: 12),
                          Text(
                            'Contacts',
                            style: GoogleFonts.montserratAlternates(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            ),
                          ),
                          const SizedBox(height: 12),
                          buildContact('Tél', resto.phone),
                          const SizedBox(height: 4),
                          buildContact('Mail', resto.email),
                          const SizedBox(height: 4),
                          buildContact('Site internet', resto.website),

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

              if (restoProviderType == RestoProvidersType.reserve)
                RestoSelectReservation(resto: resto),

              if (restoProviderType == RestoProvidersType.formule)
                const FormulesPhase2(),

              if (restoProviderType == RestoProvidersType.initial)
                RestoButtonReservation(
                  onPressed: () {
                    ref.read(detailsRestoProvider.notifier).state = resto;
                    context.push(Routes.formules);
                  },
                  onPressedReserve: () {
                    ref.read(restoTypeState.notifier).state =
                        RestoProvidersType.reserve;
                  },
                  price: '222',
                  title: 'Les formules',
                  subtitle: 'Je réserve',
                ),
            ],
          ),
        );
      },
      failure: (failure) {
        print('failure ==> $failure');
        return const Scaffold(
          body: Center(child: Text('Failed to load hotels')),
        );
      },
      orElse: () => const SizedBox(),
    );
  }
}

List<String> formatOpeningHours(List<OpeningHourModel> openingHours) {
  final dayMapFr = {
    "Monday": "Lundi",
    "Tuesday": "Mardi",
    "Wednesday": "Mercredi",
    "Thursday": "Jeudi",
    "Friday": "Vendredi",
    "Saturday": "Samedi",
    "Sunday": "Dimanche",
  };

  String formatHour(String hour) {
    return hour.replaceFirst(':', 'h');
  }

  // Step 1: group consecutive days with same open/close
  List<List<OpeningHourModel>> grouped = [];
  List<OpeningHourModel> currentGroup = [];

  for (var day in openingHours) {
    if (currentGroup.isEmpty) {
      currentGroup.add(day);
    } else {
      final first = currentGroup.first;
      if (first.open == day.open && first.close == day.close) {
        currentGroup.add(day);
      } else {
        grouped.add(List.from(currentGroup));
        currentGroup = [day];
      }
    }
  }
  if (currentGroup.isNotEmpty) {
    grouped.add(currentGroup);
  }

  // Step 2: build text lines
  final List<String> lines = [];

  for (var group in grouped) {
    final open = formatHour(group.first.open);
    final close = formatHour(group.first.close);

    if (group.length == 1) {
      final dayName = dayMapFr[group.first.day] ?? group.first.day;
      lines.add('$dayName : $open - $close');
    } else {
      final firstDay = dayMapFr[group.first.day] ?? group.first.day;
      final lastDay = dayMapFr[group.last.day] ?? group.last.day;
      lines.add('$firstDay au $lastDay : $open - $close');
    }
  }

  return lines;
}

Widget buildInfoCard(DetailsRestaurantModel resto) {
  // get first and last day from your response
  final firstDay = resto.openingHours.first.day;
  final lastDay = resto.openingHours.last.day;

  // map to French short names
  final firstDayShort = dayMap[firstDay] ?? '';
  final lastDayShort = dayMap[lastDay] ?? '';
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
                      double lat = resto.location.coordinates[0];
                      double lng = resto.location.coordinates[1];

                      final url =
                          'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      }
                    },
                    child: Text(
                      resto.city,
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
                'Du $firstDayShort au $lastDayShort',
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
  final DetailsRestaurantModel resto;
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
    final today = DateTime.now();
    final weekdayMap = {
      1: "Monday",
      2: "Tuesday",
      3: "Wednesday",
      4: "Thursday",
      5: "Friday",
      6: "Saturday",
      7: "Sunday",
    };

    final todayName = weekdayMap[today.weekday]; // e.g., Thursday
    final todayHours = widget.resto.openingHours.firstWhere(
      (element) => element.day == todayName,
    );
    String selectedTable = '';

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
                      .read(reservationRestaurantProvider.notifier)
                      .update((state) => state.copyWith(reservationDate: date));
                },
              ),
              const SizedBox(height: 8),
              const Divider(color: AppColors.primary, thickness: 1),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset('assets/icons/clock.png', width: 25, height: 25),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Sélectionnez l\'heure',
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
              RestoTimeSelector(
                onTimeSlotSelected: (p0) {
                  ref
                      .read(reservationRestaurantProvider.notifier)
                      .update((state) => state.copyWith(reservationTime: p0));
                },
                onInitialTimeSlotSelected: (p0) {},
                timeSlots: generateTimeSlots(todayHours.open, todayHours.close),
              ),
              const SizedBox(height: 8),
              const Divider(color: AppColors.primary, thickness: 1),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset('assets/icons/clock.png', width: 25, height: 25),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Sélectionnez',
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
              ReservationChoiceButtons(
                onSelected: (p0) {
                  ref
                      .read(reservationRestaurantProvider.notifier)
                      .update((state) => state.copyWith(typeReservation: p0));
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
                                'Bienvenue',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryGrey,
                                ),
                              ),
                              Text(
                                'Bon appétit',
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
                            ref
                                .read(reservationRestaurantProvider.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    participantCount: totalCount,
                                  ),
                                );

                            // Check if complete all value
                            final reservation = ref.read(
                              reservationRestaurantProvider,
                            );

                            if (reservation.reservationDate == null ||
                                reservation.reservationTime == null) {
                              ref
                                  .read(notificationRepositoryProvider.notifier)
                                  ..showToastWarning(title: "Action non permise");
(
                                    title:
                                        "Merci de compléter tous les choix avant de continuer.",
                                  );
                              return;
                            }

                            ref.read(restoTypeState.notifier).state =
                                RestoProvidersType.formule;
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

  List<DateTime> generateTimeSlots(String open, String close) {
    final now = DateTime.now();

    final openParts = open.split(':').map(int.parse).toList(); // e.g., [12, 00]
    final closeParts =
        close.split(':').map(int.parse).toList(); // e.g., [23, 00]

    final start = DateTime(
      now.year,
      now.month,
      now.day,
      openParts[0],
      openParts[1],
    );

    final end = DateTime(
      now.year,
      now.month,
      now.day,
      closeParts[0],
      closeParts[1],
    );

    final List<DateTime> slots = [];
    var current = start;

    while (current.isBefore(end)) {
      slots.add(current);
      current = current.add(const Duration(minutes: 30));
    }

    return slots;
  }
}

class FormulesPhase2 extends ConsumerStatefulWidget {
  const FormulesPhase2({super.key});

  @override
  ConsumerState<FormulesPhase2> createState() => _FormulesPhase2State();
}

class _FormulesPhase2State extends ConsumerState<FormulesPhase2> {
  @override
  Widget build(BuildContext context) {
    final detailsResto = ref.watch(detailsRestoProvider);
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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap:
                      () =>
                          ref.read(restoTypeState.notifier).state =
                              RestoProvidersType.reserve,
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back_ios, size: 20),
                      Text(
                        'Les Formules',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(color: AppColors.primary, thickness: 1),

                Expanded(
                  child: ListView(
                    children:
                        detailsResto.forms
                            .map(
                              (form) => FormuleCard(
                                isSelected: ref
                                    .watch(formsIdSelected)
                                    .contains(form.id),
                                imageUrl: form.image1,
                                title: form.name,
                                subtitle: form.description,
                                entries: [
                                  '🥗 Entrée : ${form.entrance}',
                                  '🍗 Plat : ${form.dishe}',
                                  '🍨 Dessert : ${form.dessert}',
                                  '🥤 Boisson : ${form.drink}',
                                ],
                                price: '${form.price}€',
                                onPressed: () {
                                  final currentForms =
                                      ref
                                          .read(
                                            reservationRestaurantProvider
                                                .notifier,
                                          )
                                          .state
                                          .selectedForms;

                                  // Create a *modifiable copy*
                                  final formList = List<FormModel>.from(
                                    currentForms,
                                  );

                                  final formsId = ref.read(
                                    formsIdSelected.notifier,
                                  );

                                  // Create a modifiable copy of the selected IDs too
                                  final currentIds = List<int>.from(
                                    ref.read(formsIdSelected),
                                  );

                                  if (currentIds.contains(form.id)) {
                                    // remove Id
                                    currentIds.remove(form.id);
                                    formList.removeWhere(
                                      (f) => f.id == form.id,
                                    );
                                  } else {
                                    // add Id
                                    currentIds.add(form.id);
                                    formList.add(form);
                                  }

                                  // update the state
                                  formsId.state = currentIds;

                                  ref
                                      .read(
                                        reservationRestaurantProvider.notifier,
                                      )
                                      .update(
                                        (state) => state.copyWith(
                                          selectedForms: formList,
                                        ),
                                      );

                                  setState(() {});
                                },
                              ),
                            )
                            .toList(),
                  ),
                ),
              ],
            ),
            ButtonLunch(
              onPressed: () {
                final forms = ref.read(formsIdSelected);
                final price = calculateTotal(
                  detailsResto.forms,
                  ref.watch(formsIdSelected),
                );
                ref
                    .read(reservationRestaurantProvider.notifier)
                    .update(
                      (state) =>
                          state.copyWith(forms: forms, totalPrice: price),
                    );
                if (forms.isEmpty) {
                  ref
                      .read(notificationRepositoryProvider.notifier)
                      ..showToastWarning(title: "Action non permise");
(
                        position: Alignment.topRight,
                        title: "Merci de choisir une formule.",
                      );
                  return;
                }

                ref
                    .read(reservationRestaurantProvider.notifier)
                    .update(
                      (state) => state.copyWith(eventId: detailsResto.id),
                    );
                showPayement(context);
              },
              price: '',
              bigTitle: 'Total',
              subtitle:
                  '${calculateTotal(detailsResto.forms, ref.watch(formsIdSelected))}€',
            ),
          ],
        ),
      ),
    );
  }

  double calculateTotal(List<FormModel> items, List<int> selectedIds) {
    return items
        .where((item) => selectedIds.contains(item.id))
        .fold(0.0, (sum, item) => sum + double.parse(item.price));
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
            builder: (context, scrollController) => const RestoPaymentSheet(),
          ),
    );
  }
}

class ReservationChoiceButtons extends StatefulWidget {
  final Function(String) onSelected;
  const ReservationChoiceButtons({super.key, required this.onSelected});

  @override
  State<ReservationChoiceButtons> createState() =>
      _ReservationChoiceButtonsState();
}

class _ReservationChoiceButtonsState extends State<ReservationChoiceButtons> {
  String selected = 'table'; // 'table' or 'emporter'

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Réserver un table button
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = 'table';
              });
              widget.onSelected('sur_place');
              print('Réserver un table clicked');
            },
            child: Container(
              height: 48,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color:
                    selected == 'table'
                        ? const Color(0xFFC1125A)
                        : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFC1125A), width: 1.5),
                boxShadow:
                    selected == 'table'
                        ? [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ]
                        : [],
              ),
              child: Center(
                child: Text(
                  'Réserver un table',
                  style: TextStyle(
                    color: selected == 'table' ? Colors.white : Colors.black87,
                    fontWeight:
                        selected == 'emporter'
                            ? FontWeight.w500
                            : FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),

        // A emporter button
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = 'emporter';
              });
              widget.onSelected('emporter');
            },
            child: Container(
              height: 48,
              margin: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color:
                    selected == 'emporter'
                        ? const Color(0xFFC1125A)
                        : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFC1125A), width: 1.5),
                boxShadow:
                    selected == 'emporter'
                        ? [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ]
                        : [],
              ),
              child: Center(
                child: Text(
                  'A emporter',
                  style: TextStyle(
                    color:
                        selected == 'emporter' ? Colors.white : Colors.black87,
                    fontWeight:
                        selected == 'emporter'
                            ? FontWeight.bold
                            : FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/sub_pages/hebergement_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/sub_pages/resto_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/reservation_card.dart';

class ReservationTabUi extends StatefulWidget {
  final String status;
  const ReservationTabUi({super.key, required this.status});

  @override
  State<ReservationTabUi> createState() => _ReservationTabUiState();
}

class _ReservationTabUiState extends State<ReservationTabUi>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: height * 0.069,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.grey),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 10.0,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelPadding: EdgeInsets.symmetric(horizontal: 8),
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: AppColors.black,
                  gradient: LinearGradient(
                    colors: [AppColors.primaryPink, AppColors.secondaryPink],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black54,
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        // Image.asset(
                        //   'assets/icons/Activities.png',
                        //   width: 18,
                        //   height: 20,
                        // ),
                        Text(
                          'Activités',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        // Image.asset(
                        //   'assets/icons/badge_ico.png',
                        //   width: 18,
                        //   height: 20,
                        // ),
                        // const Spacer(),
                        Tab(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Image.asset(
                              //   'assets/icons/badge_ico.png',
                              //   width: 18,
                              //   height: 20,
                              // ),
                              // const Spacer(),
                              Text(
                                'Compétitions',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Image.asset(
                        //   'assets/icons/tickit_ico.png',
                        //   width: 18,
                        //   height: 20,
                        // ),
                        // const Spacer(),
                        Text(
                          'Événements',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HebergementScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Aller aux réservations d\'hébergements',
                    style: GoogleFonts.openSans(
                      decoration: TextDecoration.underline,
                      color: AppColors.background,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RestoScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Aller aux réservations de restaurants',
                    style: GoogleFonts.openSans(
                      decoration: TextDecoration.underline,
                      color: AppColors.background,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),

          Expanded(
            child: TabBarView(
              children: [
                TabBarData('activity', widget.status, 'Activités'),
                TabBarData('competition', widget.status, 'Compétitions'),
                TabBarData('event', widget.status, 'Événements'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarData extends ConsumerStatefulWidget {
  final String type;
  final String status;
  final String title;
  const TabBarData(this.type, this.status, this.title, {super.key});

  @override
  ConsumerState<TabBarData> createState() => _TabBarDataState();
}

class _TabBarDataState extends ConsumerState<TabBarData> {
  @override
  void initState() {
    ref
        .read(reservationRepositoryProvider.notifier)
        .getReservation(widget.type, widget.status);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final reservations = ref.watch(reservationRepositoryProvider).reservations;
    return ref.watch(reservationRepositoryProvider).isLoading
        ? SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.8,
          child: const Center(
            child: CircularProgressIndicator(color: AppColors.primary),
          ),
        )
        : reservations.isEmpty
        ? Center(
          child: Text(
            'Aucune ${widget.title.toLowerCase()}',
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        )
        : ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: reservations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child:
                  widget.type == 'competition'
                      ? ReservationCard(
                        reservation: reservations[index],
                        type: widget.type,
                      )
                      : widget.type == 'activity'
                      ? ReservationCard(
                        reservation: reservations[index],
                        type: widget.type,
                      )
                      : widget.type == 'event'
                      ? ReservationCard(
                        reservation: reservations[index],
                        type: widget.type,
                      )
                      : null,
            );
          },
        );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/sub_pages/hebergement_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/sub_pages/resto_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/reservation_card.dart';

// class ReservationTabUi extends StatefulWidget {
//   final String status;
//   const ReservationTabUi({super.key, required this.status});

//   @override
//   State<ReservationTabUi> createState() => _ReservationTabUiState();
// }

// class _ReservationTabUiState extends State<ReservationTabUi>
//     with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     return DefaultTabController(
//       initialIndex: 0,
//       length: 3,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Container(
//               height: height * 0.069,
//               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(100),
//                 border: Border.all(color: Colors.grey),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.08),
//                     blurRadius: 10.0,
//                     offset: const Offset(0, -2),
//                   ),
//                 ],
//               ),
//               child: const TabBar(
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 labelPadding: EdgeInsets.symmetric(horizontal: 8),
//                 dividerColor: Colors.transparent,
//                 indicator: BoxDecoration(
//                   color: AppColors.black,
//                   gradient: LinearGradient(
//                     colors: [AppColors.primaryPink, AppColors.secondaryPink],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   ),
//                   borderRadius: BorderRadius.all(Radius.circular(100)),
//                 ),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.black54,
//                 tabs: [
//                   Tab(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,

//                       children: [
//                         // Image.asset(
//                         //   'assets/icons/Activities.png',
//                         //   width: 18,
//                         //   height: 20,
//                         // ),
//                         Text(
//                           'Activités',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Tab(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,

//                       children: [
//                         // Image.asset(
//                         //   'assets/icons/badge_ico.png',
//                         //   width: 18,
//                         //   height: 20,
//                         // ),
//                         // const Spacer(),
//                         Tab(
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               // Image.asset(
//                               //   'assets/icons/badge_ico.png',
//                               //   width: 18,
//                               //   height: 20,
//                               // ),
//                               // const Spacer(),
//                               Text(
//                                 'Compétitions',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Tab(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Image.asset(
//                         //   'assets/icons/tickit_ico.png',
//                         //   width: 18,
//                         //   height: 20,
//                         // ),
//                         // const Spacer(),
//                         Text(
//                           'Événements',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: height * 0.02),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const HebergementScreen(),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     'Aller aux réservations d\'hébergements',
//                     style: GoogleFonts.openSans(
//                       decoration: TextDecoration.underline,
//                       color: AppColors.background,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: height * 0.01),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const RestoScreen(),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     'Aller aux réservations de restaurants',
//                     style: GoogleFonts.openSans(
//                       decoration: TextDecoration.underline,
//                       color: AppColors.background,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * 0.02),

//           Expanded(
//             child: TabBarView(
//               children: [
//                 TabBarData('activity', widget.status, 'Activités'),
//                 TabBarData('competition', widget.status, 'Compétitions'),
//                 TabBarData('event', widget.status, 'Événements'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TabBarData extends ConsumerStatefulWidget {
//   final String type;
//   final String status;
//   final String title;
//   const TabBarData(this.type, this.status, this.title, {super.key});

//   @override
//   ConsumerState<TabBarData> createState() => _TabBarDataState();
// }

// class _TabBarDataState extends ConsumerState<TabBarData> {
//   @override
//   void initState() {
//     ref
//         .read(reservationRepositoryProvider.notifier)
//         .getReservation(widget.type, widget.status);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final reservations = ref.watch(reservationRepositoryProvider).reservations;
//     return ref.watch(reservationRepositoryProvider).isLoading
//         ? SizedBox(
//           width: double.infinity,
//           height: MediaQuery.of(context).size.height * 0.8,
//           child: const Center(
//             child: CircularProgressIndicator(color: AppColors.primary),
//           ),
//         )
//         : reservations.isEmpty
//         ? Center(
//           child: Text(
//             'Aucune ${widget.title.toLowerCase()}',
//             style: const TextStyle(fontSize: 16, color: Colors.grey),
//           ),
//         )
//         : ListView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: reservations.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 8),
//               child:
//                   widget.type == 'competition'
//                       ? ReservationCard(
//                         reservation: reservations[index],
//                         type: widget.type,
//                       )
//                       : widget.type == 'activity'
//                       ? ReservationCard(
//                         reservation: reservations[index],
//                         type: widget.type,
//                       )
//                       : widget.type == 'event'
//                       ? ReservationCard(
//                         reservation: reservations[index],
//                         type: widget.type,
//                       )
//                       : null,
//             );
//           },
//         );
//   }
// }

class CategoryItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              boxShadow: isSelected
                  ? [
                      // Glow effect
                      BoxShadow(
                        color: const Color(0xFFFF2E84).withOpacity(0.28),
                        blurRadius: 25,
                        spreadRadius: 6,
                        offset: const Offset(0, 6),
                      ),
                    ]
                  : [],
            ),
            child: Image.asset(
              icon,
              width: 45,
              height: 45,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
              color: isSelected ? const Color(0xFFFF2E84) : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class CategorySlider extends StatefulWidget {
  final Function(int) onSelect;

  const CategorySlider({super.key, required this.onSelect});

  @override
  State<CategorySlider> createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  int selected = 0;

  final items = [
    {"icon": "assets/icons/Activities.png", "label": "Activités"},
    {"icon": "assets/icons/badge_ico.png", "label": "Compétitions"},
    {"icon": "assets/icons/tickit_ico.png", "label": "Événements"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFEFC),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(items.length, (index) {
          return CategoryItem(
            icon: items[index]["icon"]!,
            label: items[index]["label"]!,
            isSelected: selected == index,
            onTap: () {
              setState(() => selected = index);
              widget.onSelect(index);
            },
          );
        }),
      ),
    );
  }
}

class ReservationTabUi extends ConsumerStatefulWidget {
  final String status;

  const ReservationTabUi({super.key, required this.status});

  @override
  ConsumerState<ReservationTabUi> createState() => _ReservationTabUiState();
}

class _ReservationTabUiState extends ConsumerState<ReservationTabUi> {
  int currentTab = 0;

  @override
  void initState() {
    super.initState();
    _loadDataForTab(0); // now ref works fine
  }

  void _loadDataForTab(int index) {
  final type = index == 0
      ? "activity"
      : index == 1
          ? "competition"
          : "event";

  print("🔥 Loading $type ...");

  ref
      .read(reservationRepositoryProvider.notifier)
      .getReservation(type, widget.status);
}


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final state = ref.read(reservationRepositoryProvider);
ref.listen(reservationRepositoryProvider, (prev, next) {
  setState(() {});
});

    final reservations = state.reservations;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ----- SLIDER -----
        CategorySlider(
  onSelect: (index) {
    if (currentTab != index) {
      setState(() => currentTab = index);
      _loadDataForTab(index);
    }
  },
),


        SizedBox(height: height * 0.02),

        // ----- SHORTCUTS -----
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HebergementScreen()),
                ),
                child: Text(
                  "Aller aux réservations d'hébergements",
                  style: GoogleFonts.openSans(
                    decoration: TextDecoration.underline,
                    color: AppColors.background,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RestoScreen()),
                ),
                child: Text(
                  "Aller aux réservations de restaurants",
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

        // ----- CONTENT -----
        Expanded(
          child: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                )
              : reservations.isEmpty
                  ? Center(
                      child: Text(
                        currentTab == 0
                            ? "Aucune activités"
                            : currentTab == 1
                                ? "Aucune compétitions"
                                : "Aucun événements",
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: reservations.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: ReservationCard(
                            reservation: reservations[index],
                            type: currentTab == 0
                                ? "activity"
                                : currentTab == 1
                                    ? "competition"
                                    : "event",
                          ),
                        );
                      },
                    ),
        ),
      ],
    );
  }
}


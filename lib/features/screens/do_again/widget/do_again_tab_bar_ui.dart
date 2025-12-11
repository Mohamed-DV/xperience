// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:spots_xplorer_app/config/theme/app_colors.dart';
// import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
// import 'package:spots_xplorer_app/features/screens/do_again/widget/compition_todo_card.dart';
// import 'package:spots_xplorer_app/features/screens/do_again/widget/doagain_card.dart';

// class DoAgainTabBarUi extends StatelessWidget {
//   final String status;
//   const DoAgainTabBarUi({super.key, required this.status});
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//     return DefaultTabController(
//       initialIndex: 0,
//       length: 3,
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Container(
//               height: height * 0.055,
//               padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
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
//               child: TabBar(
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 labelPadding: const EdgeInsets.symmetric(horizontal: 8),
//                 dividerColor: Colors.transparent,
//                 indicator: const BoxDecoration(
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
//                 labelStyle: const TextStyle(
//                   fontSize: 13,
//                   fontWeight: FontWeight.bold, // Selected tab fontWeight
//                 ),
//                 unselectedLabelStyle: const TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w600, // Unselected tab fontWeight
//                 ),
//                 tabs: [
//                   Tab(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Image.asset(
//                           'assets/icons/Activities.png',
//                           width: width * 0.08,
//                           height: height * 0.04,
//                         ),
//                         const Text('Activités'),
//                       ],
//                     ),
//                   ),
//                   Tab(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Image.asset(
//                           'assets/icons/Flag.png',
//                           width: width * 0.08,
//                           height: height * 0.04,
//                         ),
//                         const Text('Compétitions'),
//                       ],
//                     ),
//                   ),
//                   Tab(
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Image.asset(
//                           'assets/icons/tickit_ico.png',
//                           width: width * 0.08,
//                           height: height * 0.04,
//                         ),
//                         const Text('Événements'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: TabBarView(
//               children: [
//                 TabBarData('activity', status),
//                 TabBarData('competition', status),
//                 TabBarData('event', status),
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
//   const TabBarData(this.type, this.status, {super.key});

//   @override
//   ConsumerState<TabBarData> createState() => _TabBarDataState();
// }

// class _TabBarDataState extends ConsumerState<TabBarData> {
//   @override
//   void initState() {
//     ref
//         .read(reservationRepositoryProvider.notifier)
//         .getDoAgainReservation(widget.type, widget.status);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final reservations =
//         ref.watch(reservationRepositoryProvider).doAgainReservations;
//     return ref.watch(reservationRepositoryProvider).isLoading
//         ? SizedBox(
//           width: double.infinity,
//           height: MediaQuery.of(context).size.height * 0.8,
//           child: const Center(
//             child: CircularProgressIndicator(color: AppColors.primary),
//           ),
//         )
//         : reservations.isEmpty
//         ? const Center(
//           child: Text(
//             'No Event',
//             style: TextStyle(fontSize: 16, color: Colors.grey),
//           ),
//         )
//         : ListView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: reservations.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 8),
//               child:
//               // widget.type == 'competition'
//               //     ? CompitionTodoCard(reservation: reservations[index])
//               DoagainCard(reservation: reservations[index], type: widget.type),
//             );
//           },
//         );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/reservation_tab_ui.dart';
import 'package:spots_xplorer_app/features/screens/do_again/widget/doagain_card.dart';

// ⚠️ On réutilise le même ReservationTypeSlider
// (celui que tu as déjà dans ton fichier ReservationTabUi)

class DoAgainTabBarUi extends ConsumerStatefulWidget {
  final String status;
  const DoAgainTabBarUi({super.key, required this.status});

  @override
  ConsumerState<DoAgainTabBarUi> createState() => _DoAgainTabBarUiState();
}

class _DoAgainTabBarUiState extends ConsumerState<DoAgainTabBarUi> {
  int currentTab = 0;

  @override
  void initState() {
    super.initState();
    _loadDataForTab(0);
  }

  void _loadDataForTab(int index) {
    final type = index == 0
        ? 'activity'
        : index == 1
            ? 'competition'
            : 'event';

    ref
        .read(reservationRepositoryProvider.notifier)
        .getDoAgainReservation(type, widget.status);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    // ✅ watch (pas read) pour rebuild automatiquement
    final state = ref.watch(reservationRepositoryProvider);
    final reservations = state.doAgainReservations;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ---- SLIDER (same as Reservation) ----
        ReservationTypeSlider(
          selectedIndex: currentTab,
          onSelect: (i) {
            if (currentTab != i) {
              setState(() => currentTab = i);
              _loadDataForTab(i);
            }
          },
        ),

        SizedBox(height: height * 0.02),

        // ---- LIST CONTENT ----
        Expanded(
          child: state.isLoading
              ? SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: const Center(
                    child:
                        CircularProgressIndicator(color: AppColors.primary),
                  ),
                )
              : reservations.isEmpty
                  ? const Center(
                      child: Text(
                        'No Event',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: reservations.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: DoagainCard(
                            reservation: reservations[index],
                            type: currentTab == 0
                                ? 'activity'
                                : currentTab == 1
                                    ? 'competition'
                                    : 'event',
                          ),
                        );
                      },
                    ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/reservation_hotel_card.dart';
import 'package:spots_xplorer_app/features/reservation/shared/provider.dart';

class HebergementScreen extends ConsumerStatefulWidget {
  const HebergementScreen({super.key});

  @override
  ConsumerState<HebergementScreen> createState() => _HebergementScreenState();
}

class _HebergementScreenState extends ConsumerState<HebergementScreen> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(myReservationNotifierProvider.notifier).gethotel();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(myReservationNotifierProvider);
    return state.maybeWhen(
      getReservationHotelSuccess: (resto) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 32,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Remix.arrow_left_s_line),
                        color: AppColors.primary,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Text(
                        "Vos Arrêts Gourmands ",
                        style: GoogleFonts.montserrat(
                          color: AppColors.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children:
                        resto
                            .map(
                              (e) => ReservationHotelCard(reservation: e),
                            ) // Replace with your widget
                            .toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      initial: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(color: AppColors.primary),
          ),
        );
      },
      orElse: () {
        return const Scaffold(
          body: Center(
            child: Text("Aucune réservation d'hébergement trouvée."),
          ),
        );
      },
    );
  }
}

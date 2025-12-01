import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/reservation_resto_card.dart';
import 'package:spots_xplorer_app/features/reservation/shared/provider.dart';

class RestoScreen extends ConsumerStatefulWidget {
  const RestoScreen({super.key});

  @override
  ConsumerState<RestoScreen> createState() => _RestoScreenState();
}

class _RestoScreenState extends ConsumerState<RestoScreen> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(myReservationNotifierProvider.notifier).getRestaurant();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(myReservationNotifierProvider);
    return state.maybeWhen(
      getReservationResruantSuccess: (resto) {
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
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children:
                          resto
                              .map((e) => ReservationRestoCard(reservation: e))
                              .toList(),
                    ),
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
        return const Scaffold(body: SizedBox());
      },
    );
  }
}

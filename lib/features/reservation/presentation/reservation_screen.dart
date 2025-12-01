import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/widgets/reservation_tab_ui.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
              child: Text(
                "Vos Prochaines Aventures ",
                style: GoogleFonts.montserrat(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const Expanded(child: ReservationTabUi(status: 'pending')),
          ],
        ),
      ),
    );
  }
}

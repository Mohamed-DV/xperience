import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';

class ConfirmationUi extends StatelessWidget {
  const ConfirmationUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppColors.backgroundWhite,
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset('assets/icons/confirmed.png', width: 189, height: 189),
            const SizedBox(height: 20),
            Text(
              'Un lien de confirmation vous a été envoyé par email.',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryGrey,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Veuillez valider votre adresse email avant de poursuivre la connexion.',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Handle button tap
                context.pushReplacement(Routes.sigin);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.primaryPink, AppColors.secondaryPink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    'Se connecter',
                    style: GoogleFonts.openSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';

class ShowQr extends StatelessWidget {
  const ShowQr({super.key});

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
            // Generate a random QR code using qr_flutter
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              child: QrImageView(
                data: '@3bdelazizRass',
                version: QrVersions.auto,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Voici votre QR Code Personnalisé',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryGrey,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.primaryPink, AppColors.secondaryPink],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Retourner Xplorer',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // GestureDetector(
            //   onTap: () {
            //     // Handle button tap
            //     context.go(Routes.sigin);
            //   },
            //   child: Container(
            //     width: double.infinity,
            //     height: 50,
            //     decoration: BoxDecoration(
            //       gradient: const LinearGradient(
            //         colors: [AppColors.primaryPink, AppColors.secondaryPink],
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //       ),
            //       borderRadius: BorderRadius.circular(6),
            //     ),
            //     child: Center(
            //       child: Text(
            //         'Se connecter',
            //         style: GoogleFonts.openSans(
            //           fontSize: 18.sp,
            //           fontWeight: FontWeight.w700,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

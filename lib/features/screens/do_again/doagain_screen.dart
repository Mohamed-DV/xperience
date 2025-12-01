import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/features/screens/do_again/widget/do_again_tab_bar_ui.dart';

class DoagainScreen extends StatefulWidget {
  const DoagainScreen({super.key});

  @override
  State<DoagainScreen> createState() => _DoagainScreenState();
}

class _DoagainScreenState extends State<DoagainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
              child: Text(
                "Vos dernières Aventures",
                style: GoogleFonts.montserrat(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const Expanded(child: DoAgainTabBarUi(status: "completed")),
          ],
        ),
      ),
    );
  }
}

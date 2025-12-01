import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';

class BadgeScreen extends StatefulWidget {
  const BadgeScreen({super.key});

  @override
  State<BadgeScreen> createState() => _BadgeScreenState();
}

class _BadgeScreenState extends State<BadgeScreen> {
  List<String> badges = [
    'assets/icons/badge1.svg',
    'assets/icons/badge2.svg',
    'assets/icons/badge3.svg',
    'assets/icons/badge4.svg',
    'assets/icons/badge5.svg',
    'assets/icons/badge6.svg',
    'assets/icons/badge7.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Mes badges',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 items per row
                  crossAxisSpacing: 0.w, // Horizontal spacing between items
                  mainAxisSpacing: 0.h, // Vertical spacing between items
                  childAspectRatio:
                      1.0, // Square aspect ratio (width/height = 1)
                ),
                itemCount: badges.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(16.w),
                    child: SvgPicture.asset(badges[index], fit: BoxFit.contain),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

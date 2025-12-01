import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';

enum ActivieType { activity, competition, evenement }
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:spots_xplorer_app/config/theme/app_colors.dart';
// import 'package:spots_xplorer_app/core/models/event_model.dart';

class ActiviteCard extends ConsumerWidget {
  final EventModel eventModel;
  final ActivieType activiteType;

  const ActiviteCard({
    super.key,
    required this.eventModel,
    required this.activiteType,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return GestureDetector(
   onTap:
          () => ref
              .read(homeRepositoryProvider.notifier)
              .setSelectedEvent(eventModel, false),
      child:
    Container(
      margin: const EdgeInsets.only(bottom: 20),  // 👈 مهم shadow from bottom
      width: 242,
      height: 418,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),

        // 👇 SHADOW يبان من التحت كذلك
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(70, 0, 0, 0),
            offset: Offset(0, 6),  // يدفع shadow للتحت
            blurRadius: 14,
            spreadRadius: 1,
          ),
        ],
      ),

      clipBehavior: Clip.none, // IMPORTANT: shadow not cut
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE FIX
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
               eventModel.images.first.image,
              width: 242,
              height: 316,
              fit: BoxFit.cover, // EXACT Figma
            ),
          ),
SizedBox(height: 5,),
 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Remix.star_fill,
                            size: 19.sp,
                            color: AppColors.primary,
                          ),
                          SizedBox(width:5),
                          Text(
                            "Pas encore d'avis",
                            style: GoogleFonts.montserrat(
                              fontSize: 10.sp,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            activiteType == ActivieType.activity
                                ? 'assets/icons/Hosting.png'
                                : activiteType == ActivieType.competition
                                ? 'assets/icons/compitionbadge.png'
                                : "assets/icons/tickit_ico.png",
                            width: 19.w,
                            height: 19.h,
                          ),
                        ],
                      ),
          // TEXT AREA — padding EXACT = 12
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventModel.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 6),
                 Text(
                        activiteType == ActivieType.activity
                            ? eventModel.country ?? '--'
                            : eventModel.eventType == 'competition'
                            ? 'Martinique'
                            : ' ',
                        style: GoogleFonts.montserratAlternates(
                          fontSize: 16,
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.openSans(
                            fontSize: 12.sp,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            const TextSpan(text: "À partir de "),
                            TextSpan(
                              text: "${eventModel.price}€",
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                                color: AppColors.primary,
                              ),
                            ),
                            TextSpan(
                              text:
                                  activiteType == ActivieType.competition
                                      ? "/personne - ${eventModel.duration ?? 7} jours"
                                      : "/personne",
                            ),
                          ],
                        ),
                      ),
                // SizedBox(height: 4.h),
                // Text(
                //   eventModel.country ?? 'Unknown Location',
                //   style: GoogleFonts.openSans(
                //     fontSize: 12,
                //     fontWeight: FontWeight.w400,
                //     color: AppColors.greyDark,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
 )
        ]
      )
    )
    );
  }
}

// class ActiviteCard extends ConsumerWidget {
//   final EventModel eventModel;
//   final double? width; // ✅ Optional
//   final ActivieType activiteType;
//   final bool isFromFav;

//   const ActiviteCard({
//     super.key,
//     required this.activiteType,
//     this.width,
//     required this.eventModel,
//     this.isFromFav = false,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     // ✅ Default width = 70% of screen width for horizontal lists
//     final cardWidth = width ?? screenWidth * 0.7;

//     final imageHeight = screenHeight * 0.32;
//     final borderRadius = BorderRadius.circular(12);
//     final horizontalPadding = EdgeInsets.symmetric(
//       horizontal: screenWidth * 0.025,
//     );
//     final titleFontSize = screenWidth * 0.038;
//     final subtitleFontSize = screenWidth * 0.035;
//     final priceFontSize = screenWidth * 0.03;
//     final reviewFontSize = screenWidth * 0.03;
//     final iconSize = screenWidth * 0.05;

//     return GestureDetector(
//       onTap:
//           () => ref
//               .read(homeRepositoryProvider.notifier)
//               .setSelectedEvent(eventModel, false),
//       child: Stack(
//         children: [
//           Container(
//             width: cardWidth,
//              // ✅ Fixed width
// height: screenHeight * 0.45,
//             decoration: BoxDecoration(
//               borderRadius: borderRadius,
//               color: AppColors.white,
//               boxShadow: const [
//                 BoxShadow(
//                   color: AppColors.grey,
//                   offset: Offset(1, 1),
//                   blurRadius: 10,
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: imageHeight,
//                   child: ClipRRect(
//                     borderRadius: borderRadius,
//                     child:
//                         eventModel.images.isNotEmpty
//                             ? Image.network(
//                               eventModel.images.first.image,
//                               fit: BoxFit.cover,
//                             )
//                             : Image.asset(
//                               'assets/imgs/cover.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                   ),
//                 ),
//                 SizedBox(height: screenHeight * 0.008),
//                 Padding(
//                   padding: horizontalPadding,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Remix.star_fill,
//                             size: iconSize,
//                             color: AppColors.primary,
//                           ),
//                           SizedBox(width: screenWidth * 0.025),
//                           Text(
//                             "Pas encore d'avis",
//                             style: GoogleFonts.montserrat(
//                               fontSize: reviewFontSize,
//                               color: AppColors.primary,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           const Spacer(),
//                           Image.asset(
//                             activiteType == ActivieType.activity
//                                 ? 'assets/icons/Hosting.png'
//                                 : activiteType == ActivieType.competition
//                                 ? 'assets/icons/compitionbadge.png'
//                                 : "assets/icons/tickit_ico.png",
//                             width: iconSize,
//                             height: iconSize,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: screenHeight * 0.012),
//                       Text(
//                         eventModel.title,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         style: GoogleFonts.montserrat(
//                           fontSize: titleFontSize,
//                           color: AppColors.black,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       Text(
//                         activiteType == ActivieType.activity
//                             ? eventModel.country ?? '--'
//                             : eventModel.eventType == 'competition'
//                             ? 'Martinique'
//                             : ' ',
//                         style: GoogleFonts.montserratAlternates(
//                           fontSize: subtitleFontSize,
//                           color: AppColors.black,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       RichText(
//                         text: TextSpan(
//                           style: GoogleFonts.openSans(
//                             fontSize: priceFontSize,
//                             color: AppColors.primary,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           children: [
//                             const TextSpan(text: "À partir de "),
//                             TextSpan(
//                               text: "${eventModel.price}€",
//                               style: GoogleFonts.openSans(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: priceFontSize,
//                                 color: AppColors.primary,
//                               ),
//                             ),
//                             TextSpan(
//                               text:
//                                   activiteType == ActivieType.competition
//                                       ? "/personne - ${eventModel.duration ?? 7} jours"
//                                       : "/personne",
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 10,
//             right: 10,
//             child: CircleAvatar(
//               backgroundColor: AppColors.backgroundWhite,
//               child: Center(
//                 child: IconButton(
//                   onPressed: () {
//                     ref
//                         .read(homeRepositoryProvider.notifier)
//                         .favorisToggle(
//                           type: eventModel.eventType,
//                           id: eventModel.id,
//                         );
//                   },
//                   icon: Icon(
//                     Icons.favorite,
//                     color:
//                         isFromFav || eventModel.isFav!
//                             ? AppColors.danger
//                             : AppColors.greyDarker,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// enum ActivieType { activity, competition, event }

class FigmaCard extends StatelessWidget {
  final ActivieType type;
  final String image;
  final String title;
  final String location;
  final String price;
  final double rating;
  final int reviews;
  final int? days;
  final VoidCallback? onTap;

  const FigmaCard({
    super.key,
    required this.type,
    required this.image,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    required this.reviews,
    this.days,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 240.w,
        margin: EdgeInsets.only(right: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: SizedBox(
  height: 390.h, 
     child:     Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔥 الصورة الآن RATIO 4/3 – نفس Figma وبدون Overflow
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 10.h),

            // ⭐ Rating
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                children: [
                  Icon(Icons.star, color: Color(0xFFFF0A8A), size: 14.sp),
                  SizedBox(width: 4.w),
                  Text(
                    "$rating ",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "($reviews Avis)",
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    _getIcon(),
                    width: 22.w,
                  )
                ],
              ),
            ),

            SizedBox(height: 8.h),

            // Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                "$title - $location",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserratAlternates(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            SizedBox(height: 6.h),

            // Price
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "À partir de ",
                      style: GoogleFonts.openSans(
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "$price€",
                      style: GoogleFonts.openSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: type == ActivieType.competition && days != null
                          ? "/personne - $days jours"
                          : "/personne",
                      style: GoogleFonts.openSans(
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 12.h),
          ],
        ),
      ),
      )
    );
  }

  String _getIcon() {
    switch (type) {
      case ActivieType.activity:
        return "assets/icons/Hosting.png";
      case ActivieType.competition:
        return "assets/icons/compitionbadge.png";
      default:
        return "assets/icons/tickit_ico.png";
    }
  }
}


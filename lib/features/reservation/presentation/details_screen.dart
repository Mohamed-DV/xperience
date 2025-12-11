import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:remixicon/remixicon.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/activity_model.dart';
import 'package:spots_xplorer_app/core/models/compition_model.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/features/widgets/expandable_text.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends ConsumerStatefulWidget {
  final CompitionModel? compitionModel;
  final ActivityModel? activityModel;
  final EventModel? eventModel;
  const DetailsScreen(
    this.compitionModel,
    this.activityModel,
    this.eventModel, {
    super.key,
  });
String getFrenchDate(String rawDate) {
  final date = DateTime.parse(rawDate);
  final formatter = DateFormat("EEEE d MMMM yyyy", "fr_FR");
  return formatter.format(date);
}

  @override
  ConsumerState<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends ConsumerState<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Positioned(
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        width: width,
        height: height * 0.63,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(3, 3),
              color: AppColors.blackSecondary,
            ),
          ],
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.compitionModel?.title ??
                    widget.activityModel?.title ??
                    widget.eventModel?.title ??
                    'Événement non spécifié',
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: height * 0.01),
              widget.compitionModel != null
                  ? buildInfoCardCompition()
                  : widget.activityModel != null
                  ? buildInfoCardActivity()
                  : const SizedBox.shrink(),
              const SizedBox(height: 12),
              const Divider(color: AppColors.primaryPink),
              const SizedBox(height: 12),
              Text(
                'Plus d\'infos :',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 12),
              ExpandableText(
                text:
                    widget.compitionModel?.description ??
                    widget.activityModel?.description ??
                    widget.eventModel?.description ??
                    'Aucune description disponible pour cet événement.',
              ),
              const SizedBox(height: 12),
              const Divider(color: AppColors.primaryPink),
              const SizedBox(height: 12),
              Text(
                'Contacts',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  text: '• Tél : ',
                  style: GoogleFonts.openSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          widget.compitionModel?.phone ??
                          widget.activityModel?.phone ??
                          widget.eventModel?.phone ??
                          ' -- ',
                      style: GoogleFonts.openSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '• Mail : ',
                  style: GoogleFonts.openSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          widget.compitionModel?.email ??
                          widget.activityModel?.email ??
                          widget.eventModel?.email ??
                          ' -- ',
                      style: GoogleFonts.openSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '• Site internet : ',
                  style: GoogleFonts.openSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          widget.compitionModel?.website ??
                          widget.activityModel?.website ??

                          widget.eventModel?.website ??
                          ' -- ',
                      style: GoogleFonts.openSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () async {
                              final url =
                                  widget.compitionModel?.website ??
                              widget.activityModel?.website ??
                                  widget.activityModel?.website;
                              if (url != null && url.isNotEmpty) {
                                final uri = Uri.parse(url);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Impossible d\'ouvrir le lien',
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              const Divider(color: AppColors.primaryPink),
              SizedBox(height: height * 0.01),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Remix.star_fill, color: AppColors.lightPink800),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Participez et soyez le premier à donner votre avis',
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.lightPink800,
                      ),
                    ),
                  ),
                ],
              ),
              if (widget.activityModel?.isReserved == true ||
                  widget.compitionModel?.isReserved == true)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.01),

                          TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              hintText: 'Mon avis ici ...',
                              fillColor: AppColors.primary.withOpacity(0.1),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: AppColors.primaryPink,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: AppColors.primaryPink,
                                  width: 1,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 10,
                              ),
                            ),
                          ),

                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: width * 0.25,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 0.008,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      AppColors.primaryPink,
                                      AppColors.secondaryPink,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(99),
                                ),
                                child: Center(
                                  child: Text(
                                    'Publier',
                                    style: GoogleFonts.montserratAlternates(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              SizedBox(height: height * 0.2),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoCardActivity() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/Isolation_Mode.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final address = widget.activityModel?.street;
                        if (address != null && address.isNotEmpty) {
                          final url = Uri.encodeFull(
                            'https://www.google.com/maps/search/?api=1&query=$address',
                          );
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(Uri.parse(url));
                          }
                        }
                      },
                      child: Text(
                        widget.activityModel?.street ?? '-- Street',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserratAlternates(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.primary,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset('assets/icons/vitasse.png', width: 20, height: 20),
                const SizedBox(width: 5),
                Text(
                  widget.activityModel?.distance ?? '-- km',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,

                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/icons/calander.png', width: 20, height: 20),
                const SizedBox(width: 5),
                Text(
                  '09 Jun 2025',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Image.asset(
            //       'assets/icons/Chrono.Compet.png',
            //       width: 25,
            //       height: 20,
            //     ),
            //     const SizedBox(width: 5),
            //     Text(
            //       '3 hrs',
            //       style: GoogleFonts.montserratAlternates(
            //         fontSize: 14,
            //         fontWeight: FontWeight.w700,
            //         color: AppColors.primary,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Image.asset(
              'assets/icons/carbon_star-filled.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 5),
            Text(
              'Aucun avis',
              style: GoogleFonts.montserratAlternates(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildInfoCardCompition() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/Isolation_Mode.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final address = widget.compitionModel?.meetAddress;
                        if (address != null && address.isNotEmpty) {
                          final url = Uri.encodeFull(
                            'https://www.google.com/maps/search/?api=1&query=$address',
                          );
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(Uri.parse(url));
                          }
                        }
                      },
                      child: Text(
                        widget.compitionModel?.meetAddress ?? '-- Street',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserratAlternates(
                          fontSize: 14,

                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.primary,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset('assets/icons/vitasse.png', width: 20, height: 20),
                const SizedBox(width: 5),
                Text(
                  '${widget.compitionModel?.distance.toString() ?? '--'} km',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,

                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Image.asset('assets/icons/calander.png', width: 20, height: 20),
            const SizedBox(width: 5),
            Text(
              getFrenchDate(widget.compitionModel!.meetDate!)?? '--',
              style: GoogleFonts.montserratAlternates(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Image.asset(
              'assets/icons/carbon_star-filled.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 5),
            Text(
              'Aucun avis',
              style: GoogleFonts.montserratAlternates(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
  
String getFrenchDate(String rawDate) {
  final date = DateTime.parse(rawDate);
  final formatter = DateFormat("EEEE d MMMM yyyy", "fr_FR");
  return formatter.format(date);
}

}

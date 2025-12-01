import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/sporting_level_model.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/features/widgets/activite_sheet.dart';

class AdaptScreen extends ConsumerStatefulWidget {
  const AdaptScreen({super.key});

  @override
  ConsumerState<AdaptScreen> createState() => _AdaptScreenState();
}

class _AdaptScreenState extends ConsumerState<AdaptScreen> {
  @override
  void initState() {
    ref.read(loginRepositoryProvider.notifier).getActivites();
    ref.read(loginRepositoryProvider.notifier).getSportLevel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginRepositoryProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Image.asset("assets/imgs/logo.png", width: 164, height: 70),
                const SizedBox(height: 20),
                Text(
                  'Adaptez votre expérience',
                  style: GoogleFonts.montserrat(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Dites nous en plus et aidez-nous à mieux répondre à vos attentes',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryGrey,
                  ),
                ),
                const SizedBox(height: 20),
                buildButton(
                  'Date de naissance',
                  state.dateNaissance == null
                      // ? 'aaaa/mm/jj'
                      ? 'jj/mm/aaaa'
                      : "${state.dateNaissance!.day.toString().padLeft(2, '0')}/${state.dateNaissance!.month.toString().padLeft(2, '0')}/${state.dateNaissance!.year}",
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    ).then((selectedDate) {
                      if (selectedDate != null) {
                        ref
                            .read(loginRepositoryProvider.notifier)
                            .setDateNaissance(
                              // "${selectedDate.year.toString()}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}",
                              selectedDate,
                            );
                        print(
                          "Selected date: ${ref.read(loginRepositoryProvider).dateNaissance}",
                        );
                      }
                    });
                  },
                ),
                const SizedBox(height: 20),
                buildButton(
                  'Activités favorites',
                  state.selectedActivites.isEmpty
                      ? 'Sélectionner'
                      : state.selectedActivites
                          .map((e) => e.title)
                          .toList()
                          .join(", "),

                  onTap: () => showActivitiesSheet(),
                ),
                const SizedBox(height: 20),
                buildButton(
                  'Niveau Sportif',
                  state.selectedSportLevel == null
                      ? 'Choisir'
                      : state.selectedSportLevel!.title,
                  onTap: () => showNiveauSportSheet(),
                ),
                const SizedBox(height: 20),
                buildButton(
                  'Pays d\'origine',
                  state.pays == "" ? 'Choisir' : state.pays,
                  onTap:
                      () => showCountryPicker(
                        context: context,
                        showPhoneCode: false,
                        showSearch: true,
                        onSelect: (Country country) {
                          ref
                              .read(loginRepositoryProvider.notifier)
                              .setPays(country.nameLocalized ?? "");
                        },
                      ),
                ),
                const SizedBox(height: 32),

                GestureDetector(
                  onTap:
                      () =>
                          ref
                              .read(loginRepositoryProvider.notifier)
                              .completeUserInfo(),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.primaryPink,
                          AppColors.secondaryPink,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child:
                          state.loading
                              ? const CircularProgressIndicator(
                                color: AppColors.white,
                              )
                              : Text(
                                'Démarrer l\'XPLORATION',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16.sp,
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
        ),
      ),
    );
  }

  Widget buildButton(String text, String subtitle, {Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 20),
            Text(
              text,
              style: GoogleFonts.openSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryGrey,
              ),
            ),
            const Spacer(),
            Expanded(
              child: Text(
                textAlign: TextAlign.end,
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.openSans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  void showActivitiesSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,

      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      builder:
          (context) => DraggableScrollableSheet(
            initialChildSize: 0.8, //set this as you want
            maxChildSize: 0.8, //set this as you want
            minChildSize: 0.50,
            builder: (context, scrollController) => const ActiviteSheet(),
          ),
    );
  }

  void showNiveauSportSheet() {
    final state = ref.watch(loginRepositoryProvider);
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      builder:
          (context) => SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    width: 64,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.greyDarker,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children:
                          state.sportLevel.map((e) {
                            return buildCardSport(e);
                          }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  Widget buildCardSport(SportingLevelModel sportingLevelModel) {
    return GestureDetector(
      onTap: () {
        ref
            .read(loginRepositoryProvider.notifier)
            .setNiveauSport(sportingLevelModel);
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          width: double.infinity,

          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            sportingLevelModel.title,
            style: GoogleFonts.openSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryGrey,
            ),
          ),
        ),
      ),
    );
  }
}

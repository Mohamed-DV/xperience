import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/router/app_router.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/login_repository.dart';
import 'package:spots_xplorer_app/core/services/profile_repository.dart';
import 'package:spots_xplorer_app/main.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(profileRepositoryProvider.notifier).getCurrentUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(profileRepositoryProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body:
          profileState.isLoading
              ? const Center(child: CircularProgressIndicator())
              : SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mon Profile',
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                        const SizedBox(height: 12),

                        Center(
                          child: Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/imgs/cover.jpg',
                                ),
                                radius: 50,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${profileState.user?.firstName ?? ''} ${profileState.user?.lastName ?? ''}',
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.black,
                                ),
                              ),
                              const SizedBox(height: 12),
                              _buildInfoTravel(
                                profileState.countReservations,
                                profileState.countReviews,
                              ),
                              const SizedBox(height: 12),
                            ],
                          ),
                        ),

                        // Mon Compte ====
                        Text(
                          'Mon Compte',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: AppColors.primaryGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(2, 2),
                                  blurRadius: 4,
                                  color: AppColors.black.withOpacity(0.2),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                _buildCard(
                                  onTap: () {
                                    context.push(Routes.userDetails);
                                  },
                                  'assets/icons/user.png',
                                  'Informations personnelles',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  'assets/icons/notification.png',
                                  'Notifications',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  onTap: () {
                                    context.push(Routes.badges);
                                  },
                                  'assets/icons/stars.png',
                                  'Mes Badges',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  'assets/icons/language-square.png',
                                  'Langue et Traductions',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  'assets/icons/gmail_groups.png',
                                  'Devenir Annonceur',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  onTap: () {
                                    context.push(Routes.updatePass);
                                  },
                                  'assets/icons/security-safe.png',
                                  'Connexion et sécurité',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  onTap: () {
                                    context.push(Routes.notificationSettings);
                                  },
                                  'assets/icons/notification.png',
                                  'Paramètres de Notifications',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                // _buildCard(
                                //   onTap: () {
                                //     context.push(Routes.notificationHistory);
                                //   },
                                //   'assets/icons/notification-history.png',
                                //   'Historique des Notifications',
                                // ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        // SUPPORT ====
                        Text(
                          'Support',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: AppColors.primaryGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(2, 2),
                                  blurRadius: 4,
                                  color: AppColors.black.withOpacity(0.2),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                _buildCard(
                                  onTap: () {
                                    context.push(Routes.aboutUs);
                                  },
                                  'assets/icons/message-question.png',
                                  'À propos de Spot Xplorer',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  'assets/icons/user-tag.png',
                                  'Nous Contacter',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  onTap: () {
                                    context.push(Routes.review);
                                  },
                                  'assets/icons/Rate.png',
                                  'Laissez-nous un Avis',
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        // METIONS LEGALES ====
                        Text(
                          'Mentions Légales',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: AppColors.primaryGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(2, 2),
                                  blurRadius: 4,
                                  color: AppColors.black.withOpacity(0.2),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                _buildCard(
                                  onTap: () {
                                    context.push(Routes.servicesConditions);
                                  },
                                  'assets/icons/tether-(usdt).png',
                                  'Conditions de services',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  onTap: () {
                                    context.push(Routes.usageConditions);
                                  },
                                  'assets/icons/tether-(usdt).png',
                                  'Conditions d\'utilisation',
                                ),
                                const SizedBox(height: 4),
                                Divider(color: AppColors.grey.withOpacity(0.3)),
                                _buildCard(
                                  'assets/icons/task-square.png',
                                  'Politique de confidentialité',
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            ref.read(loginRepositoryProvider.notifier).logout();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/logout.png',
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'Déconnexion',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: AppColors.danger,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
    );
  }

  Widget _buildInfoTravel(reservations, avis) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/passport.png',
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    reservations.toString(),
                    style: GoogleFonts.montserrat(
                      fontSize: 36,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Text(
                'Reservations',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: AppColors.primaryGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
            child: VerticalDivider(color: AppColors.black),
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/badgee.png', width: 32, height: 32),
                  const SizedBox(width: 8),
                  Text(
                    '15',
                    style: GoogleFonts.montserrat(
                      fontSize: 36,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Text(
                'Mes Badges',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: AppColors.primaryGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
            child: VerticalDivider(color: AppColors.black),
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/star_ico.png',
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    avis.toString(),
                    style: GoogleFonts.montserrat(
                      fontSize: 36,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Text(
                'Mes Avis',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: AppColors.primaryGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String img, String title, {onTap}) {
    return GestureDetector(
      onTap:
          onTap ??
          () {
            // Handle tap if needed
          },
      child: Row(
        children: [
          Image.asset(img, width: 25, height: 25),
          const SizedBox(width: 12),
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              color: AppColors.primaryGrey,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Image.asset('assets/icons/arrow_right.png', width: 20, height: 20),
        ],
      ),
    );
  }
}

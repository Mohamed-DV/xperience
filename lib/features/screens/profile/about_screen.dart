import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSpotsXplorerScreen extends StatelessWidget {
  const AboutSpotsXplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'À Propos',
          style: GoogleFonts.openSans(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Logo
            Center(
              child: Column(
                children: [
                  Container(
                    width: 80.r,
                    height: 80.r,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: Colors.grey[300]!, width: 1),
                    ),
                    child: Icon(
                      Icons.sports_tennis,
                      size: 40.r,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Spots Xplorer',
                    style: GoogleFonts.openSans(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Version 1.0.0',
                    style: GoogleFonts.openSans(
                      fontSize: 16.sp,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),

            // Mission
            _buildSection(
              'Notre Mission',
              'Spots Xplorer a pour mission de démocratiser l\'accès aux activités sportives et de loisirs au Maroc. Nous connectons les passionnés de sport avec les meilleurs établissements et facilitons la découverte de nouvelles activités près de chez vous.',
            ),

            // What is Spots Xplorer
            _buildSection(
              'Qu\'est-ce que Spots Xplorer ?',
              'Spots Xplorer est la première application mobile marocaine dédiée à la découverte et à la réservation d\'activités sportives. Que vous soyez amateur de football, tennis, natation, fitness ou sports extrêmes, notre plateforme vous aide à trouver l\'établissement idéal.',
            ),

            // Key Features
            _buildSection(
              'Fonctionnalités Principales',
              '🏃‍♂️ Découverte d\'Activités\nTrouvez facilement des sports et activités près de vous\n\n📍 Géolocalisation Intelligente\nLocalisez les établissements les plus proches\n\n📅 Réservation Simplifiée\nRéservez vos créneaux en quelques clics\n\n⭐ Évaluations et Avis\nConsultez les retours d\'autres utilisateurs\n\n💳 Paiement Sécurisé\nPayez en ligne en toute sécurité\n\n📱 Notifications\nRecevez des rappels et mises à jour',
            ),

            // Our Story
            _buildSection(
              'Notre Histoire',
              'Fondée en 2024, Spots Xplorer est née de la passion pour le sport et de la volonté de faciliter l\'accès aux infrastructures sportives au Maroc. Notre équipe, composée de développeurs et d\'entrepreneurs passionnés, a créé cette plateforme pour répondre aux besoins réels des sportifs marocains.',
            ),

            // Values
            _buildSection(
              'Nos Valeurs',
              '🎯 Innovation\nNous utilisons les dernières technologies pour offrir la meilleure expérience utilisateur.\n\n🤝 Communauté\nNous créons des liens entre les sportifs et les établissements locaux.\n\n✅ Qualité\nNous sélectionnons soigneusement nos partenaires pour garantir des services de qualité.\n\n🔒 Confiance\nLa sécurité de vos données et transactions est notre priorité.',
            ),

            // Coverage
            _buildSection(
              'Couverture Géographique',
              'Actuellement disponible dans les principales villes du Maroc :\n\n• Casablanca\n• Rabat\n• Marrakech\n• Fès\n• Tanger\n• Agadir\n• Meknès\n• Oujda\n\nNous étendons continuellement notre réseau pour couvrir tout le royaume.',
            ),

            // Team
            _buildSection(
              'Notre Équipe',
              'L\'équipe Spots Xplorer est composée de professionnels passionnés :\n\n• Développeurs expérimentés\n• Experts en UX/UI Design\n• Spécialistes marketing digital\n• Équipe support client dédiée\n• Partenaires commerciaux locaux\n\nTous unis par la même vision : révolutionner l\'expérience sportive au Maroc.',
            ),

            // Partnerships
            _buildSection(
              'Nos Partenaires',
              'Nous collaborons avec plus de 200 établissements sportifs à travers le Maroc :\n\n• Clubs de fitness et musculation\n• Centres aquatiques\n• Terrains de football et tennis\n• Salles de sports de combat\n• Centres de wellness et spa\n• Activités outdoor et aventure',
            ),

            // Future Vision
            _buildSection(
              'Vision d\'Avenir',
              'Notre objectif est de devenir la référence incontournable du sport au Maroc. Nous travaillons sur :\n\n• L\'extension à de nouvelles villes\n• L\'ajout de nouvelles fonctionnalités\n• Le développement de partenariats exclusifs\n• L\'amélioration continue de l\'expérience utilisateur',
            ),

            // Awards and Recognition
            _buildSection(
              'Reconnaissances',
              '🏆 Startup de l\'année 2024 - TechCrunch Morocco\n🥇 Meilleure Application Sport - Digital Morocco Awards\n⭐ Note moyenne 4.8/5 sur les stores d\'applications\n📈 Plus de 50 000 utilisateurs actifs',
            ),

            // Contact Information
            _buildSection(
              'Contactez-Nous',
              'Nous sommes toujours à votre écoute :\n\n📧 Email: contact@spotsxplorer.com\n📧 Support: support@spotsxplorer.com\n📱 Téléphone: +212 XXX XXX XXX\n🏢 Adresse: Marrakech, Maroc\n🌐 Site Web: www.spotsxplorer.com\n\nSuivez-nous sur les réseaux sociaux :\n• Facebook: @SpotsXplorer\n• Instagram: @spots_xplorer\n• LinkedIn: Spots Xplorer',
            ),

            SizedBox(height: 30.h),

            // Social Links (Placeholder buttons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSocialButton('Website', Icons.language, () {}),
                _buildSocialButton('Email', Icons.email, () {}),
                _buildSocialButton('Phone', Icons.phone, () {}),
              ],
            ),

            SizedBox(height: 30.h),

            // Footer
            Center(
              child: Column(
                children: [
                  Text(
                    '© 2024 Spots Xplorer',
                    style: GoogleFonts.openSans(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Fait avec ❤️ au Maroc',
                    style: GoogleFonts.openSans(
                      fontSize: 12.sp,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.openSans(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            content,
            style: GoogleFonts.openSans(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey[700],
              height: 1.6,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton(String label, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.grey[300]!, width: 1),
        ),
        child: Column(
          children: [
            Icon(icon, size: 24.r, color: Colors.black),
            SizedBox(height: 4.h),
            Text(
              label,
              style: GoogleFonts.openSans(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

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
          'Conditions d\'Utilisation',
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
            // Header
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.description_outlined,
                    size: 60.r,
                    color: Colors.grey[600],
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Conditions d\'Utilisation',
                    style: GoogleFonts.openSans(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Dernière mise à jour: ${_getCurrentDate()}',
                    style: GoogleFonts.openSans(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),

            // Introduction
            _buildSection(
              'Introduction',
              'Bienvenue sur Spots Xplorer. Ces conditions d\'utilisation régissent votre utilisation de notre application mobile et de nos services. En utilisant notre application, vous acceptez ces conditions dans leur intégralité.',
            ),

            // Acceptance of Terms
            _buildSection(
              'Acceptation des Conditions',
              'En téléchargeant, installant ou utilisant l\'application Spots Xplorer, vous confirmez que vous avez lu, compris et accepté d\'être lié par ces conditions d\'utilisation. Si vous n\'acceptez pas ces conditions, veuillez ne pas utiliser notre application.',
            ),

            // User Account
            _buildSection(
              'Compte Utilisateur',
              'Pour utiliser certaines fonctionnalités de l\'application, vous devez créer un compte. Vous êtes responsable de maintenir la confidentialité de vos informations de connexion et de toutes les activités qui se produisent sous votre compte.',
            ),

            // Permitted Use
            _buildSection(
              'Utilisation Autorisée',
              'Vous pouvez utiliser notre application uniquement à des fins légales et conformément à ces conditions. Vous vous engagez à ne pas utiliser l\'application pour:\n\n• Violer des lois ou règlements\n• Transmettre du contenu illégal ou offensant\n• Porter atteinte aux droits d\'autrui\n• Compromettre la sécurité de l\'application',
            ),

            // Content and Intellectual Property
            _buildSection(
              'Contenu et Propriété Intellectuelle',
              'Tout le contenu de l\'application, y compris les textes, images, logos et codes, est protégé par les droits d\'auteur et autres droits de propriété intellectuelle. Vous n\'êtes pas autorisé à copier, modifier ou distribuer ce contenu sans autorisation.',
            ),

            // User Content
            _buildSection(
              'Contenu Utilisateur',
              'En publiant du contenu sur notre application, vous nous accordez le droit d\'utiliser, modifier et afficher ce contenu. Vous êtes responsable du contenu que vous publiez et devez vous assurer qu\'il respecte nos conditions d\'utilisation.',
            ),

            // Privacy
            _buildSection(
              'Confidentialité',
              'Votre vie privée est importante pour nous. Notre politique de confidentialité explique comment nous collectons, utilisons et protégeons vos informations personnelles. En utilisant notre application, vous acceptez notre politique de confidentialité.',
            ),

            // Disclaimers
            _buildSection(
              'Avertissements',
              'L\'application est fournie "en l\'état" sans garantie d\'aucune sorte. Nous ne garantissons pas que l\'application sera exempte d\'erreurs, de virus ou d\'autres composants nuisibles.',
            ),

            // Limitation of Liability
            _buildSection(
              'Limitation de Responsabilité',
              'Dans la mesure permise par la loi, nous ne serons pas responsables des dommages directs, indirects, accessoires ou consécutifs résultant de votre utilisation de l\'application.',
            ),

            // Modifications
            _buildSection(
              'Modifications',
              'Nous nous réservons le droit de modifier ces conditions d\'utilisation à tout moment. Les modifications prendront effet dès leur publication dans l\'application. Il est de votre responsabilité de consulter régulièrement ces conditions.',
            ),

            // Termination
            _buildSection(
              'Résiliation',
              'Nous pouvons suspendre ou résilier votre accès à l\'application à tout moment, avec ou sans préavis, si vous violez ces conditions d\'utilisation.',
            ),

            // Governing Law
            _buildSection(
              'Droit Applicable',
              'Ces conditions d\'utilisation sont régies par les lois du Maroc. Tout litige sera soumis à la juridiction exclusive des tribunaux marocains.',
            ),

            // Contact Information
            _buildSection(
              'Contact',
              'Si vous avez des questions concernant ces conditions d\'utilisation, vous pouvez nous contacter à:\n\nEmail: support@spotsxplorer.com\nAdresse: Marrakech, Maroc\nTéléphone: +212 XXX XXX XXX',
            ),

            SizedBox(height: 30.h),
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

  String _getCurrentDate() {
    final now = DateTime.now();
    final months = [
      'Janvier',
      'Février',
      'Mars',
      'Avril',
      'Mai',
      'Juin',
      'Juillet',
      'Août',
      'Septembre',
      'Octobre',
      'Novembre',
      'Décembre',
    ];
    return '${now.day} ${months[now.month - 1]} ${now.year}';
  }
}

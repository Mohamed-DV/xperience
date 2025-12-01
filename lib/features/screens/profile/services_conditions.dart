import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceConditionsScreen extends StatelessWidget {
  const ServiceConditionsScreen({super.key});

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
          'Conditions de Service',
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
                    Icons.handshake_outlined,
                    size: 60.r,
                    color: Colors.grey[600],
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Conditions de Service',
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

            // Service Description
            _buildSection(
              'Description des Services',
              'Spots Xplorer est une application mobile qui permet aux utilisateurs de découvrir, réserver et profiter d\'activités sportives et de loisirs. Nos services incluent la géolocalisation d\'établissements sportifs, la réservation en ligne, et la gestion de profils utilisateurs.',
            ),

            // Service Availability
            _buildSection(
              'Disponibilité des Services',
              'Nos services sont disponibles 24h/24 et 7j/7, sous réserve de maintenance programmée ou de circonstances exceptionnelles. Nous nous efforçons de maintenir une disponibilité maximale mais ne pouvons garantir un accès ininterrompu.',
            ),

            // Registration and Account
            _buildSection(
              'Inscription et Compte',
              'Pour utiliser nos services, vous devez:\n\n• Créer un compte avec des informations exactes\n• Avoir au moins 16 ans ou le consentement parental\n• Maintenir la sécurité de votre compte\n• Nous notifier immédiatement de tout usage non autorisé',
            ),

            // Booking Services
            _buildSection(
              'Services de Réservation',
              'Notre service de réservation vous permet de:\n\n• Réserver des créneaux dans des établissements sportifs\n• Modifier ou annuler vos réservations selon les conditions de chaque établissement\n• Recevoir des confirmations par email ou notification\n• Accéder à l\'historique de vos réservations',
            ),

            // Payment Terms
            _buildSection(
              'Conditions de Paiement',
              'Les paiements sont traités de manière sécurisée via nos partenaires de paiement agréés. Les prix affichés incluent toutes les taxes applicables. Les remboursements sont soumis aux conditions d\'annulation de chaque établissement.',
            ),

            // Cancellation Policy
            _buildSection(
              'Politique d\'Annulation',
              'Les conditions d\'annulation varient selon l\'établissement:\n\n• Annulation gratuite jusqu\'à 24h avant le créneau\n• Annulation tardive peut entraîner des frais\n• No-show peut être facturé intégralement\n• Conditions spécifiques affichées lors de la réservation',
            ),

            // User Responsibilities
            _buildSection(
              'Responsabilités de l\'Utilisateur',
              'En utilisant nos services, vous vous engagez à:\n\n• Fournir des informations exactes et à jour\n• Respecter les règles des établissements\n• Arriver à l\'heure pour vos réservations\n• Signaler tout problème ou incident\n• Utiliser les services de manière responsable',
            ),

            // Establishment Partnerships
            _buildSection(
              'Partenariats avec les Établissements',
              'Nous travaillons en partenariat avec des établissements sportifs indépendants. Spots Xplorer agit comme intermédiaire pour faciliter les réservations mais n\'est pas responsable de la qualité des services fournis par les établissements partenaires.',
            ),

            // Data and Privacy
            _buildSection(
              'Données et Confidentialité',
              'Nous collectons et utilisons vos données pour:\n\n• Traiter vos réservations\n• Améliorer nos services\n• Vous envoyer des notifications importantes\n• Personnaliser votre expérience\n\nVos données sont protégées selon notre politique de confidentialité.',
            ),

            // Geolocation Services
            _buildSection(
              'Services de Géolocalisation',
              'Notre application utilise votre localisation pour:\n\n• Afficher les établissements à proximité\n• Calculer les distances et itinéraires\n• Proposer des recommandations personnalisées\n\nVous pouvez désactiver la géolocalisation dans les paramètres de votre appareil.',
            ),

            // Service Modifications
            _buildSection(
              'Modifications des Services',
              'Nous nous réservons le droit de modifier, suspendre ou interrompre tout ou partie de nos services à tout moment, avec ou sans préavis. Nous nous efforcerons de vous informer des modifications importantes à l\'avance.',
            ),

            // Technical Support
            _buildSection(
              'Support Technique',
              'Notre équipe de support est disponible pour vous aider:\n\n• Support par email: support@spotsxplorer.com\n• FAQ disponible dans l\'application\n• Temps de réponse: 24-48 heures\n• Support disponible en français et arabe',
            ),

            // Service Limitations
            _buildSection(
              'Limitations des Services',
              'Nos services peuvent être limités par:\n\n• Disponibilité des établissements partenaires\n• Contraintes techniques ou de maintenance\n• Réglementations locales\n• Conditions météorologiques exceptionnelles',
            ),

            // Quality Assurance
            _buildSection(
              'Assurance Qualité',
              'Nous nous engageons à maintenir la qualité de nos services en:\n\n• Vérifiant régulièrement nos partenaires\n• Collectant vos commentaires et évaluations\n• Améliorant continuellement l\'application\n• Résolvant rapidement les problèmes signalés',
            ),

            // Contact and Support
            _buildSection(
              'Contact et Support',
              'Pour toute question concernant nos services:\n\nEmail: support@spotsxplorer.com\nAdresse: Marrakech, Maroc\nTéléphone: +212 XXX XXX XXX\nHeures d\'ouverture: Lun-Ven 9h-18h',
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

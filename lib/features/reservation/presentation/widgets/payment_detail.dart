import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/reservation_model.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';
import 'package:spots_xplorer_app/core/utils/helpers.dart';

class PaymentDetails extends ConsumerStatefulWidget {
  const PaymentDetails({super.key});

  @override
  ConsumerState<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends ConsumerState<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    final reservation =
        ref.read(reservationRepositoryProvider).selectedReservation;
    print('Selected Reservation:=====>  $reservation');
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Container(
                width: 80,
                height: 3,
                decoration: BoxDecoration(
                  color: AppColors.lightPink800,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildCoverReservation(reservation!),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                  const SizedBox(height: 12),
                  buildPaymentDates(reservation),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                  const SizedBox(height: 12),
                  buildPaymentDetails(reservation),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                  const SizedBox(height: 12),
                  buildConditionsAnnulation(),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.primaryPink, thickness: 0.5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverReservation(ReservationModel reservation) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.network(
              ref.watch(reservationRepositoryProvider).selectedType ==
                      'activity'
                  ? reservation.activity!.images?.first.image ??
                      'https://via.placeholder.com/150'
                  : reservation.competition?.images?.first.image ??
                      'https://via.placeholder.com/150',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
          //  spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/Bike.png', width: 25, height: 25),
                  const SizedBox(height: 4),
                  Text(
                    ref.watch(reservationRepositoryProvider).selectedType ==
                            'activity'
                        ? 'Activité'
                        : 'Compétition',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),

              Text(
                ref.watch(reservationRepositoryProvider).selectedType ==
                        'activity'
                    ? reservation.activity?.title ?? 'Activité'
                    : reservation.competition?.title ?? 'Événement',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/star_ico.png',
                    width: 18,
                    height: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Aucun avis',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildPaymentDates(ReservationModel reservation) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Votre Compétition',
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dates',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  formatDayMonthYear(reservation.reservationDate ?? ""),
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            // GestureDetector(
            //   onTap: () {
            //     context.pop();
            //   },
            //   child: Text(
            //     'Modifier',
            //     style: GoogleFonts.montserrat(
            //       decoration: TextDecoration.underline,
            //       fontSize: 14,
            //       fontWeight: FontWeight.w600,
            //       color: AppColors.black,
            //     ),
            //   ),
            // ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Heures',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  formatTime(reservation.reservationDate ?? ""),
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            // GestureDetector(
            //   onTap: () {
            //     context.pop();
            //   },
            //   child: Text(
            //     'Choisir',
            //     style: GoogleFonts.montserrat(
            //       decoration: TextDecoration.underline,
            //       fontSize: 14,
            //       fontWeight: FontWeight.w600,
            //       color: AppColors.black,
            //     ),
            //   ),
            // ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Participants',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  '2',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            // GestureDetector(
            //   onTap: () {
            //     context.pop();
            //   },
            //   child: Text(
            //     'Modifier',
            //     style: GoogleFonts.montserrat(
            //       decoration: TextDecoration.underline,
            //       fontSize: 14,
            //       fontWeight: FontWeight.w600,
            //       color: AppColors.black,
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }

  Widget buildPaymentDetails(ReservationModel reservation) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Détails du prix',
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '2 per.',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
            Text(
              '${reservation.totalPrice}€',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Frais de service',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
            Text(
              '0.89€',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: AppColors.primaryGrey, thickness: 0.5),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
            Text(
              '${reservation.totalPrice}€',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildConditionsAnnulation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Conditions d\'annulations',
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        RichText(
          text: TextSpan(
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: AppColors.primaryGrey,
            ),
            children: [
              const TextSpan(
                text:
                    "Cette activité est non-remboursable. Pour toutes urgences veuillez contacter l'organisateur. ",
              ),
              TextSpan(
                text: "En savoir plus",
                style: GoogleFonts.montserrat(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConditionAnnulation(),
                          ),
                        );
                      },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ConditionAnnulation extends StatelessWidget {
  const ConditionAnnulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Conditions Générales d’Annulation et de Modification de Réservation",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Les présentes conditions d’annulation et de modification de réservation définissent les règles applicables entre le client (ci-après « le Client ») et la société ou prestataire organisateur de l’activité (ci-après « l’Organisateur »), dans le cadre d’une réservation d’activités de loisir, de sport ou de bien-être.",
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle("1. Objet"),
            _buildSectionText(
              "Ces conditions visent à encadrer les modalités de rétractation, d’annulation, de remboursement et de modification d’une prestation réservée par le Client. Toute réservation effectuée implique l’adhésion pleine et entière aux présentes conditions.",
            ),
            const SizedBox(height: 12),
            _buildSectionTitle("2. Modalités d’annulation par le Client"),
            _buildSectionSubtitle("2.1. Délai d’annulation"),
            _buildBulletText(
              "Plus de 72h avant le début de l’activité : le Client peut annuler sans frais. Un remboursement intégral ou un report de la prestation est proposé.",
            ),
            _buildBulletText(
              "Entre 72h et 48h avant le début de l’activité : un remboursement partiel de 70% est accordé, ou bien le report de la prestation est possible une seule fois.",
            ),
            _buildBulletText(
              "Entre 48h et 24h avant le début de l’activité : remboursement de 50% maximum, ou report sous réserve de disponibilité.",
            ),
            _buildBulletText(
              "Moins de 24h avant l’activité : aucun remboursement ne sera accordé sauf en cas de force majeure (cf. article 2.3).",
            ),
            const SizedBox(height: 8),
            _buildSectionSubtitle("2.2. Non-présentation"),
            _buildSectionText(
              "Si le Client ne se présente pas à la date et heure convenues, la prestation est considérée comme consommée. Aucun remboursement ou report ne sera proposé.",
            ),
            const SizedBox(height: 8),
            _buildSectionSubtitle("2.3. Cas de force majeure"),
            _buildSectionText(
              "En cas de maladie grave, accident, ou empêchement majeur documenté, un report ou un remboursement exceptionnel pourra être accordé sur présentation de justificatifs dans un délai de 7 jours.",
            ),
            const SizedBox(height: 12),
            _buildSectionTitle("3. Modalités d’annulation par l’Organisateur"),
            _buildSectionText(
              "L’Organisateur se réserve le droit d’annuler ou de reporter l’activité en cas de :",
            ),
            _buildBulletText(
              "Conditions météorologiques défavorables ou dangereuses",
            ),
            _buildBulletText(
              "Nombre insuffisant de participants pour assurer l’activité (minimum requis précisé au moment de la réservation)",
            ),
            _buildBulletText("Raisons logistiques ou de sécurité"),
            _buildBulletText(
              "Cas de force majeure (catastrophes naturelles, pandémie, grève, etc.)",
            ),
            _buildSectionText(
              "Dans ces cas, le Client sera informé dans les plus brefs délais et aura le choix entre :",
            ),
            _buildBulletText("Le remboursement intégral de la prestation"),
            _buildBulletText(
              "Le report à une date ultérieure selon disponibilité",
            ),
            const SizedBox(height: 12),
            _buildSectionTitle("4. Modification de réservation"),
            _buildSectionText(
              "Toute demande de modification (date, horaire, nombre de participants, etc.) doit être adressée par écrit (émail ou formulaire en ligne) au moins 48h avant la date prévue. Au-delà de ce délai, l’Organisateur se réserve le droit de refuser toute modification.",
            ),
            _buildSectionText(
              "Aucune modification n’est possible dans les 24h précédant la prestation, sauf cas de force majeure.",
            ),
            const SizedBox(height: 12),
            _buildSectionTitle(
              "5. Procédure de demande d’annulation ou modification",
            ),
            _buildSectionText("Les demandes doivent comporter :"),
            _buildBulletText("Le nom complet du Client"),
            _buildBulletText("La date de réservation"),
            _buildBulletText("Le numéro de réservation"),
            _buildBulletText("Les coordonnées de contact"),
            _buildSectionText(
              "Elles doivent être envoyées à l’adresse e-mail indiquée lors de la confirmation de réservation, ou via le formulaire prévu à cet effet sur le site web de l’Organisateur.",
            ),
            const SizedBox(height: 12),
            _buildSectionTitle("6. Délai de remboursement"),
            _buildSectionText(
              "En cas de remboursement accepté, celui-ci interviendra dans un délai de 7 à 14 jours ouvrés à compter de la validation de l’annulation par l’Organisateur.",
            ),
            _buildSectionText(
              "Le remboursement sera effectué par le même moyen de paiement que celui utilisé lors de la réservation, sauf accord préalable contraire.",
            ),
            const SizedBox(height: 12),
            _buildSectionTitle("7. Responsabilité"),
            _buildSectionText(
              "L’Organisateur ne pourra être tenu responsable des annulations ou modifications imposées par des circonstances extérieures, notamment les conditions météorologiques ou les décisions administratives. En cas de doute, le Client est invité à contacter le service client.",
            ),
            const SizedBox(height: 12),
            _buildSectionTitle("8. Acceptation des conditions"),
            _buildSectionText(
              "En confirmant sa réservation, le Client reconnaît avoir pris connaissance et accepté l’ensemble des présentes conditions d’annulation et de modification. Aucune réclamation ne sera recevable si ces règles ne sont pas respectées.",
            ),
            const SizedBox(height: 12),
            _buildSectionText(
              "Pour toute question complémentaire, merci de nous contacter à l’adresse suivante : contact@spotsxplorer.com",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
    );
  }

  Widget _buildSectionSubtitle(String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: Text(
        subtitle,
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryPink,
        ),
      ),
    );
  }

  Widget _buildBulletText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "• ",
            style: TextStyle(fontSize: 14, color: AppColors.black),
          ),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: GoogleFonts.montserrat(fontSize: 14, color: AppColors.black),
      ),
    );
  }
}

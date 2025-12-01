import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/features/widgets/activite_card.dart';

class SeeallScreen extends ConsumerStatefulWidget {
  final ActivieType activiteType;
  const SeeallScreen({super.key, required this.activiteType});

  @override
  ConsumerState<SeeallScreen> createState() => _SeeallScreenState();
}

class _SeeallScreenState extends ConsumerState<SeeallScreen> {
  @override
  Widget build(BuildContext context) {
    final activities = ref.watch(homeRepositoryProvider).activities;
    final competitions = ref.watch(homeRepositoryProvider).competitions;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.activiteType == ActivieType.activity
                ? 'Activités'
                : widget.activiteType == ActivieType.competition
                ? 'Compétitions'
                : 'Événements',
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: ListView.builder(
          itemCount: activities.length,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, index) {
            return widget.activiteType == ActivieType.activity
                ? Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ActiviteCard(
                  //  width: double.infinity,
                    eventModel: activities[index],
                    activiteType: ActivieType.activity,
                  ),
                )
                : Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ActiviteCard(
                   // width: double.infinity,
                    eventModel: competitions[index],
                    activiteType: ActivieType.competition,
                  ),
                );
          },
        ),
      ),
    );
  }
}

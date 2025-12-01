import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/models/event_model.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/features/widgets/activite_card.dart';

class TabBarUi extends ConsumerWidget {
  const TabBarUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeRepositoryProvider);
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 38,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 10.0,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(
                    color: AppColors.black,
                    gradient: LinearGradient(
                      colors: [AppColors.primaryPink, AppColors.secondaryPink],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    _tabItem(
                      context,
                      'assets/icons/Activities.png',
                      'Activités',
                    ),
                    _tabItem(context, 'assets/icons/Flag.png', 'Compétitions'),
                    _tabItem(
                      context,
                      'assets/icons/tickit_ico.png',
                      'Événements',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                children: [
                  _buildTab(
                    state.isLoading,
                    state.searchedActivities,
                    'Activités',
                  ),
                  _buildTab(
                    state.isLoading,
                    state.searchedCompetitions,
                    'Compétitions',
                  ),
                  _buildTab(
                    state.isLoading,
                    state.searchedEvents,
                    'Événements',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _tabItem(BuildContext context, String icon, String label) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Tab(
    child: Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        Image.asset(icon, width: width * 0.06, height: height * 0.04),

        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    ),
  );
}

Widget _buildTab(bool isLoading, List<EventModel> events, String title) {
  if (isLoading) {
    return const Center(
      child: CircularProgressIndicator(color: AppColors.primary),
    );
  }

  if (events.isEmpty) {
    return Center(child: Text('Aucun $title trouvé'));
  }

  return ListView.builder(
    padding: const EdgeInsets.only(left: 12, bottom: 16),
    itemCount: events.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: ActiviteCard(
         // width: double.infinity,
          eventModel: events[index],
          activiteType:
              events[index].eventType == 'competition'
                  ? ActivieType.competition
                  : events[index].eventType == 'event'
                  ? ActivieType.evenement
                  : ActivieType.activity,
        ),
      );
    },
  );
}

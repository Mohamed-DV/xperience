import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/activity_details_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/compition_details_screen.dart';
import 'package:spots_xplorer_app/features/reservation/presentation/event_details_screen.dart';

class EventDetailsScreen extends ConsumerStatefulWidget {
  final bool isFromReserved;
  const EventDetailsScreen({super.key, required this.isFromReserved});

  @override
  ConsumerState<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends ConsumerState<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    print(
      'EventDetailsScreen: widget.isFromReserved: ${widget.isFromReserved}',
    );
    final selectedEvent = ref.watch(homeRepositoryProvider).selectedEvent;

    if (selectedEvent == null) {
      return const Center(child: CircularProgressIndicator());
    }

    switch (selectedEvent.eventType) {
      case 'competition':
        return CompitionDetailsScreen(isFromReserved: widget.isFromReserved);
      case 'event':
        return EventsDetailsScreen(isFromReserved: widget.isFromReserved);
      case 'activity':
        return ActivityDetailsScreen(isFromReserved: widget.isFromReserved);
      default:
        return const Center(child: Text('Unknown event type'));
    }
  }
}

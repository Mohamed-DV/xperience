import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';

class TimeSlotSelector extends ConsumerStatefulWidget {
  final Function(String, String)? onTimeSlotSelected;
  final Function(String)? onInitialTimeSlotSelected;
  final List<DateTime> timeSlots;
  final String? initialFromHour; // Change to String for "10:00:00" format
  final String? initialToHour;

  const TimeSlotSelector({
    super.key,
    required this.timeSlots,
    this.onTimeSlotSelected,
    this.onInitialTimeSlotSelected,
    this.initialFromHour, // String format like "10:00:00"
    this.initialToHour, // String format like "11:00:00"
  });

  @override
  ConsumerState<TimeSlotSelector> createState() => _TimeSlotSelectorState();
}

class _TimeSlotSelectorState extends ConsumerState<TimeSlotSelector> {
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    // Delay the initial selection until after the widget tree is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setInitialSelection();
    });
  }

  void _setInitialSelection() {
    if (widget.initialFromHour != null) {
      // Parse the hour from string format "10:00:00"
      final hourFromString = _parseHourFromTimeString(widget.initialFromHour!);

      if (hourFromString != null) {
        // Find the time slot that matches the initial hour
        for (int i = 0; i < widget.timeSlots.length; i++) {
          final timeSlot = widget.timeSlots[i];
          if (timeSlot.hour == hourFromString) {
            // Only update state if widget is mounted
            if (mounted) {
              setState(() {
                selectedIndex = i;
              });

              // Trigger the callback with initial values
              if (widget.onTimeSlotSelected != null) {
                final fromHour =
                    '${timeSlot.hour.toString().padLeft(2, '0')}:${timeSlot.minute.toString().padLeft(2, '0')}';
                final toHour =
                    '${timeSlot.hour + 1 > 23 ? '00' : (timeSlot.hour + 1).toString().padLeft(2, '0')}:${timeSlot.minute.toString().padLeft(2, '0')}';
                widget.onTimeSlotSelected!(fromHour, toHour);
              }
            }
            break;
          }
        }
      }
    }
  }

  // Helper method to parse hour from "10:00:00" format
  int? _parseHourFromTimeString(String timeString) {
    try {
      final parts = timeString.split(':');
      if (parts.isNotEmpty) {
        return int.parse(parts[0]);
      }
    } catch (e) {
      print('Error parsing time string: $e');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double itemHeight = MediaQuery.of(context).size.height * 0.06;

    final selectedDate =
        DateTime.tryParse(
          ref.watch(reservationRepositoryProvider).reservationDate.toString() ??
              '',
        )?.add(
          Duration(
            hours: DateTime.now().hour,
            minutes: DateTime.now().minute,
            seconds: DateTime.now().second,
          ),
        ) ??
        DateTime.now();
    print('Selected Date: $selectedDate');

    return SizedBox(
      height: itemHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.timeSlots.length,
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          final time = widget.timeSlots[index];
          final isPast =
              time.isBefore(selectedDate) &&
              time.day == selectedDate.day &&
              time.month == selectedDate.month &&
              time.year == selectedDate.year;
          final fromHour =
              '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
          final toHour =
              '${time.hour + 1 > 23 ? '00' : (time.hour + 1).toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
          return GestureDetector(
            onTap:
                isPast
                    ? null
                    : () {
                      setState(() => selectedIndex = index);
                      if (widget.onTimeSlotSelected != null) {
                        widget.onTimeSlotSelected!(fromHour, toHour);
                      }
                    },
            child: Opacity(
              opacity: isPast ? 0.4 : 1.0,
              child: Container(
                margin: EdgeInsets.only(right: screenWidth * 0.04),
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primaryPink600 : Colors.white,
                  border: Border.all(color: AppColors.primaryPink600, width: 1),
                  borderRadius: BorderRadius.circular(itemHeight * 0.27),
                ),
                child: Center(
                  child: Text(
                    '$fromHour - $toHour',
                    style: TextStyle(
                      fontSize: itemHeight * 0.32,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

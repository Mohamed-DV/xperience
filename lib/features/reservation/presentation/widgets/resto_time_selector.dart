import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/reservation_repository.dart';

class RestoTimeSelector extends ConsumerStatefulWidget {
  final Function(String)? onTimeSlotSelected;
  final Function(String)? onInitialTimeSlotSelected;
  final List<DateTime> timeSlots;

  const RestoTimeSelector({
    super.key,
    required this.timeSlots,
    this.onTimeSlotSelected,
    this.onInitialTimeSlotSelected,
  });

  @override
  ConsumerState<RestoTimeSelector> createState() => _RestoTimeSelectorState();
}

class _RestoTimeSelectorState extends ConsumerState<RestoTimeSelector> {
  int? selectedIndex;

  @override
  void initState() {
    // No default selection
    super.initState();
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
          final showTime =
              '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
          return GestureDetector(
            onTap:
                isPast
                    ? null
                    : () {
                      setState(() => selectedIndex = index);
                      if (widget.onTimeSlotSelected != null) {
                        widget.onTimeSlotSelected!(showTime);
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
                    showTime,
                    style: TextStyle(
                      fontSize: itemHeight * 0.32,
                      fontWeight: FontWeight.w500,
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

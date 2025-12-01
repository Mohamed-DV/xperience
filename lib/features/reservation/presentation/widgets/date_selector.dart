import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';

class DateSelector extends StatefulWidget {
  final int daysCount; // How many days to show
  final Function(DateTime)? onDateSelected;
  final DateTime? initialDate; // Add initial date parameter

  const DateSelector({
    super.key,
    this.daysCount = 30,
    this.onDateSelected,
    this.initialDate, // Add to constructor
  });

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  int? selectedIndex;

  List<DateTime> get dates => List.generate(
    widget.daysCount,
    (index) => DateTime.now().add(Duration(days: index)),
  );

  @override
  void initState() {
    super.initState();
    // Set initial selected index based on initialDate
    if (widget.initialDate != null) {
      _setInitialSelection();
    }
  }

  void _setInitialSelection() {
    final targetDate = widget.initialDate!;
    final today = DateTime.now();

    // Find the index of the date that matches the initial date
    for (int i = 0; i < dates.length; i++) {
      final date = dates[i];
      if (date.year == targetDate.year &&
          date.month == targetDate.month &&
          date.day == targetDate.day) {
        selectedIndex = i;
        break;
      }
    }

    // If initialDate is not in the range, find the closest valid date
    if (selectedIndex == null) {
      final daysDifference = targetDate.difference(today).inDays;
      if (daysDifference >= 0 && daysDifference < widget.daysCount) {
        selectedIndex = daysDifference;
      } else if (daysDifference >= widget.daysCount) {
        // If target date is beyond our range, select the last available date
        selectedIndex = widget.daysCount - 1;
      } else {
        // If target date is in the past, select today (index 0)
        selectedIndex = 0;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double itemWidth = screenWidth * 0.22; // Responsive width
    final double itemHeight = MediaQuery.of(context).size.height * 0.12;

    return SizedBox(
      height: itemHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          final date = dates[index];
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() => selectedIndex = index);
              if (widget.onDateSelected != null) {
                widget.onDateSelected!(date);
              }
            },
            child: Container(
              width: itemWidth,
              margin: EdgeInsets.only(right: screenWidth * 0.035),
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.0,
                vertical: itemHeight * 0.12,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryPink600 : Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.primaryPink600, width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      toBeginningOfSentenceCase(
                        DateFormat.EEEE('fr_FR').format(date),
                      ),
                      style: GoogleFonts.montserratAlternates(
                        fontSize: itemHeight * 0.15,
                        color: isSelected ? Colors.white : Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: itemHeight * 0.01),
                  Text(
                    DateFormat.d('fr_FR').format(date),
                    style: GoogleFonts.montserratAlternates(
                      fontSize: itemHeight * 0.2,
                      fontWeight: FontWeight.w400,
                      color: isSelected ? Colors.white : Colors.black87,
                    ),
                  ),
                  SizedBox(height: itemHeight * 0.01),
                  Text(
                    toBeginningOfSentenceCase(
                      DateFormat.MMMM('fr_FR').format(date),
                    ),
                    style: GoogleFonts.montserratAlternates(
                      fontSize: itemHeight * 0.15,
                      color: isSelected ? Colors.white : Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

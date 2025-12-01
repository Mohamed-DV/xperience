import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';
import 'package:spots_xplorer_app/core/services/home_repository.dart';
import 'package:table_calendar/table_calendar.dart';

class PeriodUI extends ConsumerStatefulWidget {
  const PeriodUI({super.key});

  @override
  ConsumerState<PeriodUI> createState() => _PeriodUIState();
}

class _PeriodUIState extends ConsumerState<PeriodUI> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  @override
  Widget build(BuildContext context) {
    final homeRepository = ref.watch(homeRepositoryProvider);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(3, 4),
            color: AppColors.grey,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Période",
            style: GoogleFonts.montserrat(
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryGrey,
            ),
          ),
          SizedBox(height: 10.h),
          TableCalendar(
            locale: 'fr_FR',
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(2030, 12, 31),

            focusedDay: _focusedDay,
            rangeStartDay: _rangeStart ?? (homeRepository.startDate),
            rangeEndDay: _rangeEnd ?? (homeRepository.endDate),
            calendarFormat: CalendarFormat.month,
            availableCalendarFormats: const {CalendarFormat.month: 'Month'},
            rangeSelectionMode: RangeSelectionMode.enforced,
            startingDayOfWeek: StartingDayOfWeek.monday,
            selectedDayPredicate:
                (day) =>
                    isSameDay(day, _rangeStart) || isSameDay(day, _rangeEnd),
            onRangeSelected: (start, end, focusedDay) {
              print("Range selected: $start to $end");
              setState(() {
                _rangeStart = start;
                _rangeEnd = end;
                _focusedDay = focusedDay;
              });
            },

            calendarStyle: CalendarStyle(
              rangeHighlightColor: Colors.pink.shade100,
              selectedDecoration: const BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
              rangeStartDecoration: const BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
              rangeEndDecoration: const BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              defaultTextStyle: const TextStyle(color: Colors.black87),
              weekendTextStyle: const TextStyle(color: Colors.black87),
            ),
            headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
              titleTextFormatter:
                  (date, locale) => "${_monthName(date.month)} ${date.year}",
            ),
            daysOfWeekStyle: const DaysOfWeekStyle(
              weekdayStyle: TextStyle(fontWeight: FontWeight.w500),
              weekendStyle: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Divider(color: AppColors.primary.withOpacity(0.2)),
          const SizedBox(height: 12),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  ref
                      .read(homeRepositoryProvider.notifier)
                      .setPeriod(null, null);
                  context.pop();
                },
                child: Text(
                  'Passer',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyDarker,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.pop();
                  if (_rangeStart != null || _rangeEnd == null) {
                    ref
                        .read(homeRepositoryProvider.notifier)
                        .setPeriod(_rangeStart!, _rangeStart!);
                  }
                  if (_rangeStart == null || _rangeEnd == null) {
                    return;
                  }
                  ref
                      .read(homeRepositoryProvider.notifier)
                      .setPeriod(_rangeStart!, _rangeEnd!);
                },
                child: Text(
                  'Suivant',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _monthName(int month) {
    const months = [
      '',
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
    return months[month];
  }
}

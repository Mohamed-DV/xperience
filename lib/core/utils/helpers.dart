String formatDateTime(String isoDate) {
  final dateTime = DateTime.parse(isoDate).toLocal();
  final monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  final month = monthNames[dateTime.month - 1];
  final day = dateTime.day;
  final hour = dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour;
  final minute = dateTime.minute.toString().padLeft(2, '0');
  final period = dateTime.hour >= 12 ? 'PM' : 'AM';

  return '$month $day, $hour:$minute $period';
}

String formatShortDate(String isoDate) {
  final dateTime = DateTime.parse(isoDate).toLocal();
  final monthAbbr = [
    'jan.',
    'fév.',
    'mar.',
    'avr.',
    'mai',
    'jui.',
    'juil.',
    'aoû.',
    'sep.',
    'oct.',
    'nov.',
    'déc.',
  ];
  final day = dateTime.day;
  final month = monthAbbr[dateTime.month - 1];
  final year = dateTime.year;
  return 'Le $day $month $year';
}

String formatShortDateReservation(String isoDate) {
  final dateTime = DateTime.parse(isoDate).toLocal();
  final monthAbbr = [
    'jan.',
    'fév.',
    'mar.',
    'avr.',
    'mai',
    'jui.',
    'juil.',
    'aoû.',
    'sep.',
    'oct.',
    'nov.',
    'déc.',
  ];
  final day = dateTime.day;
  final month = monthAbbr[dateTime.month - 1];
  final year = dateTime.year;

  return 'Le $day $month $year';
}

String formatShortTimeReservation(String isoDate) {
  final timeParts = isoDate.split(':');
  if (timeParts.length >= 2) {
    final hour = timeParts[0];
    final minute = timeParts[1];
    return '${hour}h:$minute';
  }
  return isoDate;
}

String formatDayMonthYear(String isoDate) {
  final dateTime = DateTime.parse(isoDate).toLocal();
  final monthAbbr = [
    'jan.',
    'fév.',
    'mar.',
    'avr.',
    'mai',
    'jui.',
    'juil.',
    'aoû.',
    'sep.',
    'oct.',
    'nov.',
    'déc.',
  ];
  final day = dateTime.day.toString().padLeft(2, '0');
  final month = monthAbbr[dateTime.month - 1];
  final year = dateTime.year;
  return '$day $month $year';
}

String formatTime(String isoDate) {
  final dateTime = DateTime.parse(isoDate).toLocal();
  final startHour = dateTime.hour.toString();
  final startMinute = dateTime.minute.toString().padLeft(2, '0');
  final endHour =
      (dateTime.minute == 0)
          ? (dateTime.hour + 1).toString()
          : dateTime.hour.toString();
  return '${startHour}h$startMinute - ${endHour}h';
}

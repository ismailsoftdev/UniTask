import 'package:intl/intl.dart';

class UFormatters {
  UFormatters._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  // format time
  static String formatTime(DateTime? time) {
    time ??= DateTime.now();
    return DateFormat('hh:mm a').format(time);
  }
}

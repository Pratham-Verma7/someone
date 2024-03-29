import 'package:intl/intl.dart';

class SFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String formatTime(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('HH:mm').format(date);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return phoneNumber.replaceRange(
          0, 3, '(${phoneNumber.substring(0, 3)}) ');
    } else if (phoneNumber.length == 11) {
      return phoneNumber.replaceRange(
          0, 4, '(${phoneNumber.substring(0, 3)}) ');
    } else {
      return phoneNumber;
    }
  }

  // static String internationalFormatPhoneNumber(String phoneNumber) {
  //   if (phoneNumber.length == 10) {
  //     return '+1 ${phoneNumber}';
  //   } else {
  //     return phoneNumber;
  //   }
}

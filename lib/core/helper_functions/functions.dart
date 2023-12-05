
import 'package:intl/intl.dart';

String arNumber(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(english[i],arabic[i]);
  }
  return input;
}

String arTime(String input) {
  const english = ['AM','PM'];
  const arabic = ['ص','م'];
  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(english[i],arabic[i]);
  }
  return input;
}

String getArDate(String iso8601String) {
  // Parse the string into a DateTime object
  DateTime dateTime = DateTime.parse(iso8601String);

  // Custom format for Arabic AM/PM
  String formattedDate = DateFormat('yyyy-MM-dd – hh:mm ').format(dateTime) +
      (dateTime.hour >= 12 ? 'م' : 'ص');

  return formattedDate; // Output: 2023-11-28 – 10:22:51 م
}

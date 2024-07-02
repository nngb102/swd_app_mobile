import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String? toDateString({String format = 'yyyy - MM - dd'}) {
    try {
      final dateTimeFormat = format;
      return DateFormat(dateTimeFormat).format(this);
    } catch (error) {
      return null;
    }
  }
}

import 'package:easy_localization/easy_localization.dart';

extension DateX on String {
  String get toDate {
    var newStr = substring(0, 10) + ' ' + substring(11, 23);
    DateTime dt = DateTime.parse(newStr);
    return DateFormat("EEE, d MMM yyyy HH:mm").format(dt);
  }
}

import 'package:intl/intl.dart';

String formatBMI(double bmi) {
  return NumberFormat('###.#').format(bmi).toString();
}

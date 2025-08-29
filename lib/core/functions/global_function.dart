import 'package:intl/intl.dart';

String formatCurrency({required double value}) {
  NumberFormat currencyFormat = NumberFormat('#,##0.00', 'en_US');
  return currencyFormat.format(value);
}



import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:torch_mobile/core/l10n/generated/app_localizations.dart';

String formatCurrency({required double value}) {
  NumberFormat currencyFormat = NumberFormat('#,##0.00', 'en_US');
  return currencyFormat.format(value);
}

AppLocalizations translate(BuildContext context) {
  return AppLocalizations.of(context)!;
}



import 'package:intl/intl.dart';

extension FormatterPtBr on double {
  String get currencyFormatterPtBr {
    return NumberFormat.currency(
      locale: 'pt-BR',
      symbol: r'R$',
      decimalDigits: 2,
    ).format(this);
  }
}

import 'package:intl/intl.dart';

extension PriceFormatting on num {

  String formatPrice({String symbol = '₦ '}) {
    return NumberFormat.currency(symbol: symbol, decimalDigits: 0).format(this);
  }

}
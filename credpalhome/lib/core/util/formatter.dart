import 'package:intl/intl.dart';

extension PriceFormatting on int {
  String formatPrice() => NumberFormat.currency(symbol: '₦ ', decimalDigits: 0).format(this);
}
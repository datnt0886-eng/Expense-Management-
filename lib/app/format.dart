import 'package:intl/intl.dart';

String formatMoney(int amount) {
  final f = NumberFormat('#,###', 'vi_VN');
  return '${f.format(amount)}đ';
}

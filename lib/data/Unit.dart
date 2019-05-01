import 'package:intl/intl.dart';

class Unit {
  final int unitNum;
  final String documentID;
  final int area;
  final int housing;
  final int floor;
  final DateTime investmentUntil;
  final DateTime paymentUntil;
  final int amount;

  Unit(this.unitNum, this.documentID, this.area, this.housing, this.floor,
      this.investmentUntil, this.paymentUntil, this.amount);

  String _convertAmount(int value) {
    String tmp = value.toString();
    String result = "";
    int len = tmp.length;
    for (var i = 1; i < len + 1; i++) {
      result += tmp[len - i];
      if (i % 3 == 0) result += " ";
    }
    return result.split("").reversed.join("") + " ₽";
  }

  var locale = {
    "January": "января",
    "February": "февраля",
    "March": "марта",
    "April": "апреля",
    "May": "мая",
    "June": "июня",
    "July": "июля",
    "August": "августа",
    "September": "сентября",
    "October": "октября",
    "November": "ноября",
    "December": "декабря"
  };

  var investmentUntilFormatter = new DateFormat('dd MMMM yyyy');
  var paymentUntilFormatter = new DateFormat("dd MMMM");

  String convertedInvestmentUntil() {
    final tmp = investmentUntilFormatter.format(investmentUntil).split(" ");
    return "${tmp[0]} ${locale[tmp[1]]} ${tmp[2]}";
  }

  String convertedPaymentUntil() {
    final tmp = paymentUntilFormatter.format(paymentUntil).split(" ");
    return "${tmp[0]} ${locale[tmp[1]]}";
  }

  String convertedAmount() => _convertAmount(amount);
}

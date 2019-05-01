import 'package:intl/intl.dart';

class Contract {
  final String documentID;
  final DateTime date;
  final String program;
  final int amount;
  final int investRate;
  final int incomeReceived;
  final int incomeRemains;

  final DateTime nextPayment;
  final int paymentAmount;

  Contract(
      this.documentID,
      this.date,
      this.program,
      this.amount,
      this.investRate,
      this.incomeReceived,
      this.incomeRemains,
      this.nextPayment,
      this.paymentAmount);

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

  final _locale = {
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

  var dateFormatter = new DateFormat('yyyy.MM.dd');
  var nextPaymentFormatter = new DateFormat("dd MMMM");

  String convertedDate() => dateFormatter.format(date);

  String convertedAmount() => _convertAmount(amount);

  String convertedIncomeReceived() => _convertAmount(incomeReceived);

  String convertedIncomeRemains() => _convertAmount(incomeRemains);

  String convertedPaymentAmount() => _convertAmount(paymentAmount);

  String convertedNextPayment() {
    final tmp = nextPaymentFormatter.format(nextPayment).split(" ");
    return "${tmp[0]} ${_locale[tmp[1]]}";
  }
}

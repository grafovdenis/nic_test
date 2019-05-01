import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleItem extends StatelessWidget {
  final DateTime date;
  final int price;
  final int status;
  final int recieved;

  const ScheduleItem(
      {Key key, this.date, this.price, this.status, this.recieved})
      : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    Widget icon = Container();
    Color textColor = Colors.black;
    DateFormat formatter = new DateFormat("dd.MM.yyyy");

    switch (status) {
      case 1:
        {
          icon = Icon(
            Icons.done,
            color: Color.fromRGBO(191, 216, 51, 1),
          );
          textColor = Color.fromRGBO(0, 0, 0, 0.4);
          break;
        }
      case 2:
        {
          icon = Icon(
            Icons.schedule,
          );
          break;
        }
    }
    return Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: (recieved == null)
            ? Row(
                children: <Widget>[
                  Container(
                      width: 136,
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        formatter.format(date),
                        style: TextStyle(
                            color: textColor,
                            fontFamily: "SF Pro Text",
                            fontSize: 13),
                      )),
                  Container(
                      width: 136,
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(_convertAmount(price),
                          style: TextStyle(
                              color: textColor,
                              fontFamily: "SF Pro Text",
                              fontSize: 13))),
                  Container(
                      padding: const EdgeInsets.only(left: 16), child: icon)
                ],
              )
            : Row(
                children: <Widget>[
                  Container(
                      width: 88,
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        formatter.format(date),
                        style: TextStyle(
                            color: textColor,
                            fontFamily: "SF Pro Text",
                            fontSize: 13),
                      )),
                  Container(
                      width: 88,
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(_convertAmount(price),
                          style: TextStyle(
                              color: textColor,
                              fontFamily: "SF Pro Text",
                              fontSize: 13))),
                  Container(
                      width: 88,
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(_convertAmount(recieved),
                          style: TextStyle(
                              color: textColor,
                              fontFamily: "SF Pro Text",
                              fontSize: 13))),
                  Container(
                      padding: const EdgeInsets.only(left: 16), child: icon)
                ],
              ));
  }
}

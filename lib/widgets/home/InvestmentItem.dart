import 'package:flutter/material.dart';

class InvestmentItem extends StatelessWidget {
  final String title;
  final String value;

  const InvestmentItem({Key key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: 312,
      height: 44,
      decoration: new BoxDecoration(
          border: new Border(
              bottom: BorderSide(color: Color.fromRGBO(200, 199, 204, 1)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontFamily: "SF Pro Text", fontSize: 17),
          ),
          Text(
            value,
            style: TextStyle(
                fontFamily: "SF Pro Text",
                fontSize: 17,
                color: Color.fromRGBO(0, 0, 0, 0.4)),
          )
        ],
      ),
    );
  }
}

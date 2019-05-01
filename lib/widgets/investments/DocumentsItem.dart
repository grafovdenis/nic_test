import 'package:flutter/material.dart';

class DocumentsItem extends StatelessWidget {
  final IconData icon;
  final String value;

  const DocumentsItem({Key key, this.icon, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Color.fromRGBO(0, 0, 0, 0.54)),
          Container(
            width: 210,
            padding: const EdgeInsets.only(left: 16),
            child: Text(value,
                style: TextStyle(fontFamily: "SF Pro Text", fontSize: 15)),
          )
        ],
      ),
    );
  }
}

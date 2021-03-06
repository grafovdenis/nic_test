import 'package:flutter/material.dart';

class WidgetGroup extends StatelessWidget {
  String title;
  Widget child;

  WidgetGroup(String title, Widget child) {
    this.title = title;
    this.child = child;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Text(title,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: "SF Pro Display",
                    fontWeight: FontWeight.bold)),
          ),
          child
        ],
      ),
    );
  }
}

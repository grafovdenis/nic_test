import 'package:flutter/material.dart';
import 'package:nic_test/screens/BasePage.dart';
import 'package:nic_test/widgets/home/Complex.dart';
import 'package:nic_test/widgets/home/Investments.dart';
import 'package:nic_test/widgets/home/News.dart';
import 'package:nic_test/widgets/home/Progress.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final appBar = AppBar(
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: (() {}),
        )
      ],
      elevation: 0.0);

  final appBarHeight = appBar.preferredSize.height + 30;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar,
      <Widget>[
        new Investments(),
        new Complex(),
        new Progress(),
        new News(),
      ],
    );
  }
}

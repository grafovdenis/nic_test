import 'package:flutter/material.dart';
import 'package:nic_test/util/BodyScrollBehavior.dart';

class BasePage extends StatelessWidget {
  List<Widget> body;
  AppBar appBar;

  Widget footer = Container(
    padding: const EdgeInsets.only(top: 48.0, bottom: 48.0),
    child: Center(
      child: Image(image: AssetImage('assets/logo.png'), height: 50.0),
    ),
  );

  BasePage(Widget appBar, List<Widget> body) {
    this.appBar = appBar;
    this.body = body;
    this.body.add(footer);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBarHeight = appBar.preferredSize.height + 30;

    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.centerLeft,
                  colors: [
                Color.fromRGBO(229, 233, 29, 1),
                Color.fromRGBO(24, 149, 113, 1)
              ])),
          child: Column(
            children: <Widget>[
              Container(child: appBar, width: size.width, height: appBarHeight),
              Container(
                  child: Center(
                      child: ScrollConfiguration(
                          behavior: BodyScrollBehavior(),
                          child: ListView(
                            children: body,
                          ))),
                  width: size.width,
                  height: size.height - appBarHeight),
            ],
          )),
    );
  }
}

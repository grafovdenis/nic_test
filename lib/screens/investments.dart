import 'package:flutter/material.dart';
import 'package:nic_test/data/Contract.dart';
import 'package:nic_test/data/Unit.dart';
import 'package:nic_test/screens/BasePage.dart';
import 'package:nic_test/widgets/investments/ContractWidget.dart';
import 'package:nic_test/widgets/investments/Documents.dart';
import 'package:nic_test/widgets/investments/UnitWidget.dart';

class MyInvestmentsPage extends StatefulWidget {
  @override
  _MyInvestmentsPageState createState() => _MyInvestmentsPageState();
}

class _MyInvestmentsPageState extends State<MyInvestmentsPage> {
  static final appBar = AppBar(
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: 36),
        child: Text(
          "Мои инвестиции",
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "SF Pro Text",
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
      ),
      elevation: 0.0);
  List<Contract> contracts = List();

  var contractWidgets = <Widget>[];

  List<Unit> units = List();

  var unitWidgets = <Widget>[];

  Widget footer = Container(
    padding: const EdgeInsets.only(top: 48.0, bottom: 48.0),
    child: Center(
      child: Image(image: AssetImage('assets/logo.png'), height: 50.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 5; i++) {
      contracts.add(Contract("B2-532/2018", DateTime(2018, 9, 4), "Старт",
          300000, 12, 34121, 77512, DateTime(2018, 10, 14), 3000));
      units.add(Unit(1657, contracts[i].documentID, 54, 1, 9,
          DateTime(2020, 12, 19), DateTime(2019, 01, 18), 68800));
    }

    for (var i = 0; i < contracts.length - 1; i++) {
      contractWidgets.add(new ContractWidget(contracts[i]));
    }

    for (var i = 0; i < units.length - 1; i++) {
      unitWidgets.add(new UnitWidget(
          unit: units[i],
          image: Image(image: AssetImage("assets/unit_img.png"))));
    }

    final body = <Widget>[
      Container(
          height: 463,
          // Решение: избавиться от PageView и использовать горизонтальный ListView
          // или https://gist.github.com/yunyu/ac6812d6c550da1f31ae464bef8b37ea
          child: PageView(
            children: contractWidgets,
          )),
      Container(
        height: 730,
        // Решение: избавиться от PageView и использовать горизонтальный ListView
        // или https://gist.github.com/yunyu/ac6812d6c550da1f31ae464bef8b37ea
        child: PageView(
          children: unitWidgets,
        ),
      ),
      Documents(contractID: "B2-532/2018"),
    ];

    return new BasePage(appBar, body);
  }
}

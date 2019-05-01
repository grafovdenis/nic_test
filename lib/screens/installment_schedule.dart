import 'package:flutter/material.dart';
import 'package:nic_test/util/BodyScrollBehavior.dart';
import 'package:nic_test/widgets/schedules/ScheduleItem.dart';

class InstallmentSchedule extends StatefulWidget {
  @override
  _InstallmentScheduleState createState() => _InstallmentScheduleState();
}

class _InstallmentScheduleState extends State<InstallmentSchedule> {
  @override
  Widget build(BuildContext context) {
    final documentID = ModalRoute.of(context).settings.arguments;

    Widget title = Padding(
      padding: const EdgeInsets.only(left: 16, top: 24),
      child: Text(
        "По договору № $documentID",
        style: TextStyle(fontFamily: "SF Pro Text", fontSize: 15),
      ),
    );

    Widget categories = Container(
      padding: const EdgeInsets.only(left: 16, top: 30, bottom: 7),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Row(
        children: <Widget>[
          Container(
              width: 88,
              child: Text(
                "Оплатить до",
                style: TextStyle(fontFamily: "SF Pro Text", fontSize: 11),
              )),
          Container(
              width: 88,
              child: Text(
                "сумма",
                style: TextStyle(fontFamily: "SF Pro Text", fontSize: 11),
              )),
          Container(
              width: 88,
              child: Text(
                "поступило",
                style: TextStyle(fontFamily: "SF Pro Text", fontSize: 11),
              )),
        ],
      ),
    );

    Widget items = Column(children: <Widget>[
      ScheduleItem(
          date: DateTime(2018, 11, 01),
          price: 3000,
          recieved: 161282,
          status: 1),
      ScheduleItem(
          date: DateTime(2018, 11, 01),
          price: 3000,
          recieved: 161282,
          status: 1),
      ScheduleItem(
          date: DateTime(2018, 11, 01),
          price: 3000,
          recieved: 161282,
          status: 1),
      ScheduleItem(
          date: DateTime(2018, 11, 01),
          price: 3000,
          recieved: 161282,
          status: 2),
      ScheduleItem(
          date: DateTime(2018, 11, 01),
          price: 3000,
          recieved: 161282,
          status: 0),
    ]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: 272,
          padding: const EdgeInsets.only(left: 36),
          child: Text(
            "График платежей по\nрассрочке",
            softWrap: true,
            style: TextStyle(
                color: Colors.black,
                fontFamily: "SF Pro Text",
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.close),
            onPressed: (() {
              Navigator.of(context).pop();
            })),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: ScrollConfiguration(
          behavior: BodyScrollBehavior(),
          child: ListView(
            children: <Widget>[title, categories, items],
          ),
        ),
      ),
    );
  }
}

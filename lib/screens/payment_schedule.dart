import 'package:flutter/material.dart';
import 'package:nic_test/util/BodyScrollBehavior.dart';
import 'package:nic_test/widgets/schedules/ScheduleItem.dart';

class PaymentSchedule extends StatefulWidget {
  @override
  _PaymentScheduleState createState() => _PaymentScheduleState();
}

class _PaymentScheduleState extends State<PaymentSchedule> {
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
            child: Text(
              "дата",
              style: TextStyle(fontFamily: "SF Pro Text", fontSize: 11),
            ),
            width: 136,
          ),
          Text(
            "сумма",
            style: TextStyle(fontFamily: "SF Pro Text", fontSize: 11),
          )
        ],
      ),
    );

    Widget items = Column(children: <Widget>[
      ScheduleItem(date: DateTime(2018, 11, 01), price: 3000, status: 1),
      ScheduleItem(date: DateTime(2018, 11, 01), price: 3000, status: 1),
      ScheduleItem(date: DateTime(2018, 11, 01), price: 3000, status: 1),
      ScheduleItem(date: DateTime(2018, 11, 01), price: 3000, status: 2),
      ScheduleItem(date: DateTime(2018, 11, 01), price: 3000, status: 0),
    ]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 36),
          child: Text(
            "График выплат",
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

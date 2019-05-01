import 'package:flutter/material.dart';
import 'package:nic_test/data/Unit.dart';
import 'package:nic_test/widgets/home/InvestmentItem.dart';

class UnitWidget extends StatefulWidget {
  final Unit unit;
  final Image image;

  const UnitWidget({Key key, this.unit, this.image})
      : super(key: key);

  @override
  _UnitWidgetState createState() => _UnitWidgetState();
}

class _UnitWidgetState extends State<UnitWidget> {
  @override
  Widget build(BuildContext context) {
    Widget title = Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        "Юнит № ${widget.unit.unitNum}",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "SF Pro Display",
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
    );

    Widget subtitle = Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text("По договору № ${widget.unit.documentID}",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(138, 138, 143, 1),
                fontFamily: "SF Pro Text",
                fontSize: 13,
                fontWeight: FontWeight.w600)));

    Widget header = Container(
      padding: const EdgeInsets.only(left: 16, bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
          border: new Border(
              bottom: BorderSide(color: Color.fromRGBO(200, 199, 204, 1)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[title, subtitle],
      ),
    );

    Widget items = Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: <Widget>[
            InvestmentItem(
              title: "Площадь",
              value: "${widget.unit.area} м²",
            ),
            InvestmentItem(
              title: "Корпус",
              value: "${widget.unit.housing}",
            ),
            InvestmentItem(
              title: "Этаж",
              value: "${widget.unit.floor}",
            ),
            InvestmentItem(
              title: "Рассрочка до",
              value: "${widget.unit.convertedInvestmentUntil()}",
            ),
            InvestmentItem(
              title: "Платеж до",
              value: "${widget.unit.convertedPaymentUntil()}",
            ),
            InvestmentItem(
              title: "Сумма",
              value: "${widget.unit.convertedAmount()}",
            )
          ],
        ));

    Widget schedule = Container(
      padding: const EdgeInsets.only(left: 32, top: 25, bottom: 28),
      child: InkWell(
        onTap: (() {
          Navigator.of(context).pushNamed('/installmentSchedule', arguments: widget.unit.documentID);
        }),
        child: Text(
          "ГРАФИК РАССРОЧКИ",
          style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color.fromRGBO(100, 32, 129, 1)),
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: Colors.white,
          width: 327,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              header,
              widget.image,
              items,
              schedule
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nic_test/data/Contract.dart';
import 'package:nic_test/widgets/home/InvestmentItem.dart';

class ContractWidget extends StatefulWidget {
  final Contract contract;

  ContractWidget(this.contract);

  @override
  _ContractWidgetState createState() => _ContractWidgetState();
}

class _ContractWidgetState extends State<ContractWidget> {
  @override
  Widget build(BuildContext context) {
    Widget title = Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        "Договор № ${widget.contract.documentID}\nот ${widget.contract.convertedDate()}",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "SF Pro Display",
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
    );

    Widget subtitle = Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text("Программа доходности \"${widget.contract.program}\"",
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
              title: "Размер инвестиций",
              value: widget.contract.convertedAmount(),
            ),
            InvestmentItem(
              title: "Процентная ставка",
              value: "${widget.contract.investRate} %",
            ),
            InvestmentItem(
              title: "Получено дохода",
              value: widget.contract.convertedIncomeReceived(),
            ),
            InvestmentItem(
              title: "Осталось получить",
              value: widget.contract.convertedIncomeRemains(),
            ),
            InvestmentItem(
              title: "Ближайшая выплата",
              value: widget.contract.convertedNextPayment(),
            ),
            InvestmentItem(
              title: "Сумма",
              value: widget.contract.convertedPaymentAmount(),
            )
          ],
        ));

    Widget schedule = Container(
      margin: const EdgeInsets.only(left: 32, top: 25, bottom: 28),
      child: InkWell(
        onTap: (() {
          Navigator.of(context).pushNamed('/paymentSchedule', arguments: widget.contract.documentID);
        }),
        child: Text(
          "ГРАФИК ВЫПЛАТ",
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
            children: <Widget>[header, items, schedule],
          ),
        ),
      ),
    );
  }
}

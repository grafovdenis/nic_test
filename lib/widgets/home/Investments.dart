import 'package:flutter/material.dart';
import 'package:nic_test/widgets/home/Investment.dart';
import 'package:nic_test/widgets/home/WidgetGroup.dart';

class Investments extends StatelessWidget {
  const Investments({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WidgetGroup(
      "Инвестиции",
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: new Investment("Мои\nинвестиции",
                new AssetImage('assets/MyInv.png'), '/myInvestments'),
          ),
          new Investment(
              "Новая\nинвестиция", new AssetImage('assets/NewInv.png'), '/')
        ],
      ),
    );
  }
}

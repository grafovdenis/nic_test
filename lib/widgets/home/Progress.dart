import 'package:flutter/material.dart';
import 'package:nic_test/widgets/home/ProgressElement.dart';
import 'package:nic_test/widgets/home/WidgetGroup.dart';

class Progress extends StatelessWidget {
  const Progress({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetGroup(
      'Ход строительства',
      Container(
        width: MediaQuery.of(context).size.width,
        height: 168,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new ProgressElement("Декабрь 2018:\nПодготовительные работы",
                AssetImage('assets/progress.jpg')),
            new ProgressElement("Опять котик",
                AssetImage('assets/progress.jpg')),
            new ProgressElement("И опять\nкотик",
                AssetImage('assets/progress.jpg')),
          ],
        ),
      ),
    );
  }
}


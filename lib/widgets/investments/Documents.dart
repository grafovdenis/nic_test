import 'package:flutter/material.dart';
import 'package:nic_test/widgets/investments/DocumentsItem.dart';

class Documents extends StatefulWidget {
  final String contractID;

  const Documents({Key key, this.contractID}) : super(key: key);

  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    Widget title = Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "Документы",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "SF Pro Display",
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ));

    Widget items = Column(children: <Widget>[
      DocumentsItem(
          icon: Icons.file_download, value: "Договор ${widget.contractID}"),
      DocumentsItem(icon: Icons.file_download, value: "Пакет инвестора"),
      DocumentsItem(
          icon: Icons.refresh,
          value: "Договор предварительной аренды № 901"),
      DocumentsItem(
          icon: Icons.file_download, value: "Договор ${widget.contractID}"),
    ]);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: Colors.white,
          width: 327,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[title, items],
          ),
        ),
      ),
    );
  }
}

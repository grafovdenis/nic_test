import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  String date;
  AssetImage image;
  String description;
  bool isLast;

  NewsItem(String date, AssetImage image, String description, bool isLast) {
    this.date = date;
    this.image = image;
    this.description = description;
    this.isLast = isLast;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        print("$description at $date tapped");
      }),
      child: Container(
        padding: (!isLast) ? const EdgeInsets.only(top: 8):
        const EdgeInsets.only(top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height: 80, width: 80, child: Image(image: image)),
            Container(
              decoration: (!isLast)
                  ? new BoxDecoration(
                      border: new Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(200, 199, 204, 1))))
                  : null,
              height: 88,
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    date,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "SF Pro Text",
                        fontSize: 13,
                        color: Color.fromRGBO(0, 0, 0, 0.4)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8, right: 16),
                    width: 199,
                    child: Text(
                      description,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: "SF Pro Text", fontSize: 13),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

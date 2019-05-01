import 'package:flutter/material.dart';
import 'package:nic_test/widgets/home/NewsItem.dart';

class News extends StatelessWidget {
  Widget title = Padding(
    padding: const EdgeInsets.only(left: 16, top: 16),
    child: Text(
      "Новости и акции",
      textAlign: TextAlign.left,
      style: TextStyle(
          fontFamily: "SF Pro Display",
          fontSize: 19,
          fontWeight: FontWeight.bold),
    ),
  );

  Widget items = Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Column(
        children: <Widget>[
          new NewsItem("3 февраля", AssetImage('assets/news/news_1.png'),
              "Презентация инвест-отеля IN2IT в Краснодаре", false),
          new NewsItem("19 февраля", AssetImage('assets/news/news_1.png'),
              "Офис продаж на Витебском проспекте", false),
          new NewsItem("15 ноября 2018", AssetImage('assets/news/news_1.png'),
              "Презентация инвест-отеля IN2IT", false),
          new NewsItem("6 ноября 2018", AssetImage('assets/news/news_1.png'),
              "IN2IT на Ярмарке Недвижимости!", true)
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          new BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              blurRadius: 18.0,
              spreadRadius: 14.0
          )
        ],
      ),
      margin: const EdgeInsets.all(16),
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

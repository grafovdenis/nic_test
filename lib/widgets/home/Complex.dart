import 'package:flutter/material.dart';
import 'package:nic_test/widgets/home/WidgetGroup.dart';

class Complex extends StatelessWidget {
  const Complex({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetGroup(
        "Комплекс IN2IT",
        Container(
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              onTap: (() {
                print("${this.toString()} tapped");
              }),
              child: Container(
                width: 327,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('assets/complex_img.png'),
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding:
                          const EdgeInsets.only(top: 18, left: 15, bottom: 24),
                      child: Text('Обзор комплекса',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "SF Pro Display",
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

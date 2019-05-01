import 'package:flutter/material.dart';

class Investment extends StatelessWidget {
  String title;
  AssetImage image;
  String route;

  Investment(String title, AssetImage image, String route) {
    this.title = title;
    this.image = image;
    this.route = route;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: (() {
          if (route != '/') Navigator.pushNamed(context, route);
        }),
        child: Container(
          height: 168,
          width: 152,
          color: Colors.white.withOpacity(0.3),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 5),
                  child: new Image(image: image, height: 51),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                      height: 40,
                      width: 120,
                      child: Text(title,
                          softWrap: true,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: "SF Pro Text"))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

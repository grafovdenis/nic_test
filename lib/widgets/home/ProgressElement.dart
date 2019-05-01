import 'package:flutter/material.dart';

class ProgressElement extends StatelessWidget {
  AssetImage image;

  String title;

  ProgressElement(String title, AssetImage image) {
    this.title = title;
    this.image = image;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: InkWell(
        onTap: (() {
          print("${title.replaceFirst("\n", " ")} tapped");
        }),
        child: Container(
          height: 168,
          width: 312,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 110, bottom: 16),
            child: Text(title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w600)),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue,
              image: DecorationImage(image: image, fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
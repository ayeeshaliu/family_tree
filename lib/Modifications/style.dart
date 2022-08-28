import 'package:flutter/material.dart';

class MyText extends StatelessWidget {

   String title;
   FontWeight fontWeight;
   String family;
   FontStyle fontStyle;
   double size;
   double letterSpacing;
   Color color;

  MyText(this.title, this.fontWeight, this.family, this.fontStyle, this.size, this.letterSpacing, this.color);

  //const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: TextStyle(
        fontFamily: "$family" ?? "SourceSansPro",
        fontSize: size ?? 13,
        fontWeight: fontWeight ?? FontWeight.w700,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpacing?? 0.2,
        color: color?? Colors.black,

      ),
    );
  }
}

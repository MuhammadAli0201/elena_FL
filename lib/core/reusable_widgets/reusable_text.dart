import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableText extends StatelessWidget {
  String? text;
  Color? color;
  double? size;
  Color? bgColor;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  ReusableText(
      {super.key,
      required this.text,
      this.bgColor,
      this.color,
      this.size,
      this.fontWeight,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        textAlign: textAlign,
        style: TextStyle(
            color: color,
            backgroundColor: bgColor,
            decoration: TextDecoration.none,
            fontSize: size,
            fontWeight: fontWeight));
  }
}

// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:elena_video_app/core/reusable_widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../constants/border_radius.dart';

class ReusableBigTextButton extends StatelessWidget {
  String? text;
  Color? textcolor;
  double? fontSize;
  FontWeight? fontWeight;
  Color? backgroundColor;
  Function()? onPressed;

  Color? borderColor;
  ReusableBigTextButton(
      {required this.text,
      this.backgroundColor,
      this.fontWeight,
      required this.onPressed,
      this.borderColor,
      this.textcolor,
      this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
                width: 2,
                color: borderColor ?? Colors.transparent,
                style: BorderStyle.solid),
            color: backgroundColor,
            borderRadius: kBorderRadius),
        child: PlatformTextButton(
          onPressed: onPressed,
          child: ReusableText(
            text: text,
            color: textcolor,
            size: fontSize,
            fontWeight: (fontWeight == null) ? FontWeight.bold : fontWeight,
          ),
        ));
  }
}

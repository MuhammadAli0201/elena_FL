import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../constants/border_radius.dart';
import '../constants/colors.dart';
import '../constants/text_size.dart';

// ignore: must_be_immutable
class ReusableTextFormField extends StatelessWidget {
  String? hintText;
  TextEditingController? controller;
  void Function(String val)? onchange;
  ReusableTextFormField(
      {super.key, @required this.controller, this.hintText, this.onchange});
  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      cupertino: (context, platform) {
        return TextFormField(
          controller: controller,
          onChanged: onchange,
          style: TextStyle(color: blackText),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: normalTextSize,
                color: greyText,
                fontWeight: FontWeight.bold),
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            enabledBorder: kEnabledBorder,
            focusedBorder: kFocusedBorder,
          ),
        );
      },

      material: (context, platform) {
        return TextFormField(
          controller: controller,
          onChanged: onchange,
          style: TextStyle(color: blackText),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: normalTextSize,
                color: greyText,
                fontWeight: FontWeight.bold),
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            enabledBorder: kEnabledBorder,
            focusedBorder: kFocusedBorder,
          ),
        );
      },

      // controller: controller,
      // onChanged: onchange,
      // style: TextStyle(color: blackText),
      // decoration: InputDecoration(
      //   hintText: hintText,
      //   hintStyle: TextStyle(
      //       fontSize: normalTextSize,
      //       color: greyText,
      //       fontWeight: FontWeight.bold),
      //   isDense: true,
      //   contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      //   enabledBorder: kEnabledBorder,
      //   focusedBorder: kFocusedBorder,
      // ),
    );

    // It is giving the issue of Capatillization

    // return Container(
    //   decoration: BoxDecoration(
    //       border: Border.all(color: themeGrayColor, width: 2),
    //       borderRadius: BorderRadius.circular(17)),
    //   child: PlatformTextFormField(
    //     controller: controller,
    //     hintText: hintText,
    //     onChanged: onchange,
    //   ),
    // );
  }
}

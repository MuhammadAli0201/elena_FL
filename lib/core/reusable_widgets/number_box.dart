import 'package:flutter/material.dart';

import '../constants/border_radius.dart';
import '../constants/text_size.dart';

// ignore: must_be_immutable
class NumberBox extends StatelessWidget {
  TextEditingController? controller;
  NumberBox({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(style: BorderStyle.solid),
        borderRadius: borderForOTP,
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: textFieldTextSize,
        ),
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}

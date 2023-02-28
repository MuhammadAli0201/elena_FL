// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class RoundedContainer extends StatelessWidget {
  Widget? child;
  // ignore: use_key_in_widget_constructors
  RoundedContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: themeBlackColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: child,
    );
  }
}

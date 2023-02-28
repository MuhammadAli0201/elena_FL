import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'reusable_text.dart';

// ignore: must_be_immutable
class SelectionButton extends StatelessWidget {
  String? title;
  String? description;
  void Function()? onpress;
  // ignore: use_key_in_widget_constructors
  SelectionButton({this.title, this.description, this.onpress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpress,
      child: Container(
        decoration: const BoxDecoration(
            color: themeBlackColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(''),
            ReusableText(
              text: title.toString(),
              fontWeight: FontWeight.bold,
              size: 25,
              textAlign: TextAlign.center,
            ),
            ReusableText(
              text: description == null ? "" : description.toString(),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

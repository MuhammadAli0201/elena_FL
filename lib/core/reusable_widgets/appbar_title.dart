import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AppBarTitle extends StatelessWidget {
  final String text;
  const AppBarTitle({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, color: appBarTextColor),
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../constants/border_radius.dart';
import '../constants/colors.dart';
import '../constants/text_size.dart';

class UserTypeButton extends StatelessWidget {
  final Function()? onpress;
  final String text;
  const UserTypeButton({
    super.key,
    this.onpress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: onpress,
          child: Container(
            decoration: const BoxDecoration(
                color: themeBlackColor, borderRadius: kBorderRadius),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  fontSize: buttonTextSize, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../core/constants/sized_box.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/routes/routes.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../../core/reusable_widgets/rounded_container.dart';

class ShowName extends StatelessWidget {
  const ShowName({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Center(
          child: RoundedContainer(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ReusableText(
                    text: "Show Name",
                    color: blackText,
                    fontWeight: FontWeight.bold,
                    size: normalTextSize,
                  ),
                  primarySizedBox,
                  primarySizedBox,
                  ReusableText(
                    text:
                        "This name will be showing below the profile picture of the user.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                    color: blackText,
                    textAlign: TextAlign.center,
                    size: smallTextSize,
                  ),
                  primarySizedBox,
                  primarySizedBox,
                  ReusableBigTextButton(
                    text: "OK",
                    fontSize: buttonTextSize,
                    onPressed: () {
                      Navigator.pushNamed(context, RouteTo.addAdmidAccount);
                    },
                    backgroundColor: blackBackground,
                    textcolor: whiteText,
                    borderColor: blackBorder,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

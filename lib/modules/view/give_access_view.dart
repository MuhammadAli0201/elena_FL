import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../core/constants/sized_box.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/routes/routes.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../../core/reusable_widgets/rounded_container.dart';

class GiveAccess extends StatelessWidget {
  const GiveAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Center(
          child: RoundedContainer(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  primarySizedBox,
                  ReusableText(
                    text: "Give Access",
                    color: blackText,
                    fontWeight: FontWeight.bold,
                    size: normalTextSize,
                  ),
                  secondarySizedBox,
                  ReusableText(
                    text:
                        "This name will be showing below the profile picture of the user.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                    color: blackText,
                    textAlign: TextAlign.center,
                    size: smallTextSize,
                  ),
                  secondarySizedBox,
                  ReusableBigTextButton(
                    text: "Take Profile Picture Now",
                    fontSize: normalTextSize,
                    onPressed: () {
                      Navigator.pushNamed(context, RouteTo.editAdminAccount);
                    },
                    backgroundColor: blackBackground,
                    textcolor: whiteText,
                    borderColor: blackBorder,
                  ),
                  primarySizedBox,
                  ReusableBigTextButton(
                    text: "Select from photo album",
                    fontSize: normalTextSize,
                    onPressed: () {
                      Navigator.pushNamed(context, RouteTo.editAdminAccount);
                    },
                    backgroundColor: blackBackground,
                    textcolor: whiteText,
                    borderColor: blackBorder,
                  ),
                  primarySizedBox,
                  ReusableBigTextButton(
                    text: "Canel",
                    fontSize: normalTextSize,
                    onPressed: () {
                      Navigator.pushNamed(context, RouteTo.addAdmidAccount);
                    },
                    backgroundColor: whiteText,
                    textcolor: blackText,
                    borderColor: blackBorder,
                  ),
                  primarySizedBox,
                ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../core/constants/text_size.dart';
import '../../core/constants/colors.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../../core/routes/routes.dart';
import '../../core/reusable_widgets/rounded_container.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: RoundedContainer(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ReusableText(
                      text: "Check your Email",
                      color: normalTextColor,
                      fontWeight: FontWeight.bold,
                      size: normalTextSize,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: ReusableText(
                        text:
                            "Please check your email. We have sent you a email confirmation mail. After verification, we will automatically move to next screen.",
                        color: blackText,
                        textAlign: TextAlign.center,
                        size: smallTextSize,
                      ),
                    ),
                    ReusableBigTextButton(
                      fontSize: buttonTextSize,
                      fontWeight: FontWeight.bold,
                      text: "Check Given Email Address",
                      onPressed: () {
                        Navigator.pushNamed(context, RouteTo.addAdmidAccount);
                      },
                      backgroundColor: whiteText,
                      textcolor: blackText,
                      borderColor: blackBorder,
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

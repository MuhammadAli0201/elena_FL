import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../core/constants/sized_box.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/appbar_title.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../../core/routes/routes.dart';
import '../../core/constants/colors.dart';
import '../../core/reusable_widgets/number_box.dart';

// ignore: must_be_immutable
class ConfirmPhone extends StatelessWidget {
  ConfirmPhone({super.key});
  TextEditingController firstNoController = TextEditingController();
  TextEditingController secondNoController = TextEditingController();
  TextEditingController thirdNoController = TextEditingController();
  TextEditingController forthNoController = TextEditingController();
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PlatformScaffold(
      appBar: PlatformAppBar(
          backgroundColor: appBarBackgroundColor,
          title: const AppBarTitle(
            text: "Confirm Phone Number",
          )),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
        child: SingleChildScrollView(
          child: Column(children: [
            MediaQuery.of(context).orientation == Orientation.portrait
                ? const SizedBox(
                    height: 200,
                  )
                : const SizedBox(
                    height: 40,
                  ),
            ReusableText(
              size: smallTextSize,
              color: blackText,
              text:
                  'We have sent you a message with confirmation message. Please enter that code here. It is valid for 10 Minutes',
              textAlign: TextAlign.center,
            ),
            primarySizedBox,
            ReusableText(
              size: smallTextSize,
              color: blackText,
              text: 'You did not get the message.',
              textAlign: TextAlign.center,
            ),
            PlatformTextButton(
                onPressed: () {},
                child: Text(
                  'Send another time',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: smallTextSize,
                      color: blackText),
                )),
            primarySizedBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberBox(
                  controller: firstNoController,
                ),
                NumberBox(
                  controller: secondNoController,
                ),
                NumberBox(
                  controller: thirdNoController,
                ),
                NumberBox(
                  controller: forthNoController,
                ),
              ],
            ),
            MediaQuery.of(context).orientation == Orientation.portrait
                ? const SizedBox(
                    height: 150,
                  )
                : const SizedBox(
                    height: 30,
                  ),
            ReusableBigTextButton(
                text: 'Confirm',
                textcolor: whiteText,
                fontSize: buttonTextSize,
                backgroundColor: blackBackground,
                borderColor: blackBorder,
                onPressed: () {
                  Navigator.pushNamed(context, RouteTo.grantPermisions);
                })
          ]),
        ),
      ),
    ));
  }
}

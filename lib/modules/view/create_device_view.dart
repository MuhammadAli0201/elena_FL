import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/my_app_bar.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/reusable_widgets/reusable_text.dart';

class CreateDevice extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CreateDevice({super.key});
  // TextEditingController firstNoController = TextEditingController();
  // TextEditingController secondNoController = TextEditingController();
  // TextEditingController thirdNoController = TextEditingController();
  // TextEditingController forthNoController = TextEditingController();
  // bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MyAppBar(
            title: 'Confirm Phone Number',
            onpress: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableText(
                text: '',
              ),
              ReusableText(
                size: 17,
                text:
                    'You dont\'t have any managed device registered yet. Create your first one now ',
                textAlign: TextAlign.center,
              ),
              ReusableBigTextButton(
                  text: 'Register Device',
                  textcolor: whiteText,
                  fontSize: buttonTextSize,
                  backgroundColor: blackBackground,
                  borderColor: blackBorder,
                  onPressed: () {}),
            ]),
      ),
    ));
  }
}

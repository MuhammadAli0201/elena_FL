import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/appbar_title.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/routes/routes.dart';
import '../../core/constants/colors.dart';
import '../../core/reusable_widgets/reusable_text.dart';

class GrantPermissions extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  GrantPermissions({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PlatformScaffold(
      appBar: PlatformAppBar(
          backgroundColor: appBarBackgroundColor,
          title: const AppBarTitle(text: 'Permissions'),
          leading: PlatformIconButton(
            icon: Icon(PlatformIcons(context).back),
            onPressed: () {
              Navigator.pushNamed(context, RouteTo.addAdmidAccount);
            },
          )),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableText(
                text: '',
              ),
              ReusableText(
                size: smallTextSize,
                text:
                    "You dont't have any managed device registered yet. Create your first one now ",
                textAlign: TextAlign.center,
              ),
              ReusableBigTextButton(
                  text: 'Grant Permissions',
                  textcolor: whiteText,
                  backgroundColor: blackBackground,
                  borderColor: blackBorder,
                  fontSize: buttonTextSize,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RouteTo.createDevie);
                  })
            ]),
      ),
    ));
  }
}

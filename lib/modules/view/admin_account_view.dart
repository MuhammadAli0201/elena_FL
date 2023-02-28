import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/profile_image.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/sized_box.dart';
import '../../core/reusable_widgets/appbar_title.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../../core/routes/routes.dart';

class AdminAccount extends StatelessWidget {
  const AdminAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      // endDrawer: const Drawer(),
      appBar: PlatformAppBar(
          // centerTitle: true,
          backgroundColor: appBarBackgroundColor,
          title: const AppBarTitle(text: "Admin Account")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const ProfileImage(),
                  primarySizedBox,
                  primarySizedBox,
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                            text: "Shown name",
                            size: smallTextSize,
                            color: blackText,
                            fontWeight: FontWeight.bold,
                          ),
                          primarySizedBox,
                          ReusableText(
                            text: "name",
                            size: smallTextSize,
                            color: blackText,
                            fontWeight: FontWeight.bold,
                          ),
                          primarySizedBox,
                          ReusableText(
                            text: "Surname",
                            size: smallTextSize,
                            color: blackText,
                            fontWeight: FontWeight.bold,
                          ),
                          primarySizedBox,
                          ReusableText(
                            text: "Email",
                            size: smallTextSize,
                            color: blackText,
                            fontWeight: FontWeight.bold,
                          ),
                          primarySizedBox,
                          ReusableText(
                            text: "Mobile",
                            size: smallTextSize,
                            color: blackText,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              text: "Gio",
                              size: smallTextSize,
                              color: greyText,
                            ),
                            primarySizedBox,
                            ReusableText(
                              text: "Giovanna",
                              size: smallTextSize,
                              color: greyText,
                            ),
                            primarySizedBox,
                            ReusableText(
                              text: "Ratina",
                              size: smallTextSize,
                              color: greyText,
                            ),
                            primarySizedBox,
                            ReusableText(
                              text: "hallo@giovannaRatina.com",
                              size: smallTextSize,
                              color: greyText,
                            ),
                            primarySizedBox,
                            ReusableText(
                              text: "+49123456789",
                              size: smallTextSize,
                              color: greyText,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              primarySizedBox,
              primarySizedBox,
              primarySizedBox,
              Column(
                children: [
                  ReusableBigTextButton(
                      backgroundColor: blackBackground,
                      textcolor: whiteText,
                      fontSize: buttonTextSize,
                      text: "Edit",
                      onPressed: () {
                        Navigator.pushNamed(context, RouteTo.editAdminAccount);
                      }),
                  ReusableBigTextButton(
                      textcolor: blackText,
                      fontSize: buttonTextSize,
                      text: "Logout",
                      onPressed: () {
                        Navigator.pushNamed(context, RouteTo.signup);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/appbar_title.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/routes/routes.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class Intro extends StatelessWidget {
  // @override
  static get pageDecoration => const PageDecoration(
      bodyTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      bodyAlignment: Alignment.bottomCenter);
  List<PageViewModel> introScreens = [
    PageViewModel(
        title: "",
        body:
            "This is a description on a page with a custom button below.In publishing and graphic design, Lorem ipsum is a placeholder text",
        decoration: pageDecoration),
    PageViewModel(
        title: "",
        body:
            "This is a description on a page with a custom button below.In publishing and graphic design, Lorem ipsum is a placeholder text",
        decoration: pageDecoration),
    PageViewModel(
      title: "",
      body:
          "This is a description on a page with a custom button below.In publishing and graphic design, Lorem ipsum is a placeholder text",
      decoration: pageDecoration,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
          // centerTitle: true,
          backgroundColor: appBarBackgroundColor,
          title: const AppBarTitle(text: "'Welcome to Elena'")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 30),
        decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.3,
                fit: BoxFit.fill,
                image: AssetImage("Images/2.png"))),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.transparent,
          pages: introScreens,
          showDoneButton: false,
          showNextButton: false,
          dotsDecorator: const DotsDecorator(activeColor: Colors.white),
          globalFooter: ReusableBigTextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteTo.userType);
            },
            text: "Let's go",
            fontSize: buttonTextSize,
            textcolor: whiteText,
            backgroundColor: blackBackground,
          ),
        ),
      ),
    );
  }
}

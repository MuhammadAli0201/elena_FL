import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../core/constants/sized_box.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../../core/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // putting deley on splash screen
    Timer(const Duration(seconds: 2),
        () => Navigator.of(context).pushNamed(RouteTo.intro));

    return PlatformScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: ExactAssetImage("Images/2.png"),
              ),
              secondarySizedBox,
              ReusableText(
                text: 'Elena App',
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

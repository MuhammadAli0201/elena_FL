import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../core/constants/sized_box.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/routes/routes.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sequence of Screens need to accurate more. ',
              style: TextStyle(fontSize: normalTextSize),
            ),
            primarySizedBox,
            primarySizedBox,
            ReusableBigTextButton(
                text: "Start Over",
                onPressed: () {
                  Navigator.pushNamed(context, RouteTo.intro);
                })
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../../core/constants/colors.dart';
import '../../core/reusable_widgets/appbar_title.dart';
import '../../core/reusable_widgets/user_type_button.dart';
import '../../core/routes/routes.dart';

class UserType extends StatelessWidget {
  const UserType({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PlatformScaffold(
        appBar: PlatformAppBar(
            backgroundColor: appBarBackgroundColor,
            title: const AppBarTitle(text: "Choose"),
            leading: PlatformIconButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteTo.userType);
              },
              icon: Icon(PlatformIcons(context).back),
            )),
        body: SafeArea(
            child: Column(
          children: [
            UserTypeButton(
              text: 'Administration',
              onpress: () {
                Navigator.pushNamed(context, RouteTo.signup);
              },
            ),
            UserTypeButton(
              text: 'User',
              onpress: () {},
            ),
          ],
        )),
      ),
    );
  }
}

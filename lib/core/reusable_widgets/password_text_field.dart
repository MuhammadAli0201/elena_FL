import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../constants/colors.dart';
import '../constants/border_radius.dart';
import '../constants/text_size.dart';

// ignore: must_be_immutable
class PasswordTextField extends StatelessWidget {
  String? hintText;
  TextEditingController? controller;
  bool? obscure;
  void Function()? passwordBtnOnpress;
  void Function(String val)? onchange;
  // ignore: use_key_in_widget_constructors
  PasswordTextField(
      {@required this.controller,
      this.passwordBtnOnpress,
      this.obscure,
      this.hintText,
      this.onchange});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchange,
      controller: controller,
      style: TextStyle(color: blackText),
      obscureText: obscure == null ? false : obscure!,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          suffixIcon: PlatformIconButton(
              onPressed: passwordBtnOnpress,
              icon: Icon(
                obscure == false
                    ? PlatformIcons(context).eyeSolid
                    : PlatformIcons(context).eyeSlash,
                color: greyText,
              )),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: normalTextSize,
              color: greyText,
              fontWeight: FontWeight.bold),
          isDense: true,
          contentPadding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
          enabledBorder: kEnabledBorder,
          focusedBorder: kFocusedBorder),
    );
  }
}

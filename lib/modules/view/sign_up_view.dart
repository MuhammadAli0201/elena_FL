import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../../core/constants/sized_box.dart';
import '../../core/reusable_widgets/appbar_title.dart';
import '../../core/reusable_widgets/password_text_field.dart';
import '../../core/reusable_widgets/profile_image.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/reusable_widgets/reusable_text_form_field.dart';
import '../../core/routes/routes.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../logic/bloc/sign_up_bloc/sign_up_bloc.dart';
import '../logic/bloc/sign_up_bloc/sign_up_events.dart';
import '../logic/bloc/sign_up_bloc/sign_up_states.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool ischecked = false;
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    final signUpBloc = BlocProvider.of<SignUpBloc>(context);
    return SafeArea(
      child: PlatformScaffold(
        appBar: PlatformAppBar(
            backgroundColor: appBarBackgroundColor,
            title: const AppBarTitle(text: "Sign Up"),
            leading: PlatformIconButton(
              icon: Icon(PlatformIcons(context).back),
              onPressed: () {
                Navigator.pushNamed(context, RouteTo.userType);
              },
            )),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                primarySizedBox,
                ReusableText(
                  color: normalTextColor,
                  size: smallTextSize,
                  text:
                      'To use this feature of this app, you need to signup first. Please enter the required data belew',
                  textAlign: TextAlign.center,
                ),
                secondarySizedBox,
                //profile Image Circular
                const ProfileImage(),

                primarySizedBox,
                primarySizedBox,
                ReusableTextFormField(
                  onchange: (val) {
                    signUpBloc.add(SignUpValidateEvent(
                        email: emailController.text,
                        password: passwordController.text,
                        check: ischecked));
                  },
                  controller: emailController,
                  hintText: "Email",
                ),
                primarySizedBox,
                BlocBuilder<SignUpBloc, SignUpStates>(
                  builder: (context, state) {
                    return PasswordTextField(
                      passwordBtnOnpress: () {
                        if (obscure == false) {
                          obscure = true;
                          signUpBloc
                              .add(ShowHidePasswordEvent(obsure: obscure));
                        } else {
                          obscure = false;
                          signUpBloc
                              .add(ShowHidePasswordEvent(obsure: obscure));
                        }
                        signUpBloc.add(SignUpValidateEvent(
                            email: emailController.text,
                            password: passwordController.text,
                            check: ischecked));
                      },
                      obscure: obscure,
                      onchange: (val) {
                        signUpBloc.add(SignUpValidateEvent(
                            email: emailController.text,
                            password: passwordController.text,
                            check: ischecked));
                      },
                      controller: passwordController,
                      hintText: "Password",
                    );
                  },
                ),
                primarySizedBox,
                Row(
                  children: [
                    BlocBuilder<SignUpBloc, SignUpStates>(
                      builder: (context, state) {
                        return ReusableText(
                            color: errorColor,
                            text: state is SignUpInValidateState
                                ? "* ${state.errorMsg}"
                                : "");
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    BlocBuilder<SignUpBloc, SignUpStates>(
                      builder: (context, state) {
                        return Checkbox(
                            value: ischecked,
                            activeColor: checkboxActiveColor,
                            onChanged: (val) {
                              if (ischecked == true) {
                                ischecked = false;
                                signUpBloc.add(
                                    TermsAndConditionsEvent(val: ischecked));
                              } else {
                                ischecked = true;
                                signUpBloc.add(
                                    TermsAndConditionsEvent(val: ischecked));
                              }
                              signUpBloc.add(SignUpValidateEvent(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  check: ischecked));
                            });
                      },
                    ),
                    Expanded(
                      child: ReusableText(
                        size: smallTextSize,
                        text: "Terms and Conditions. I'm 18 year old",
                      ),
                    )
                  ],
                ),
                secondarySizedBox,
                secondarySizedBox,
                secondarySizedBox,
                BlocBuilder<SignUpBloc, SignUpStates>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        ReusableBigTextButton(
                            text: "Sign up ",
                            fontSize: buttonTextSize,
                            backgroundColor: state is SignUpValidateState
                                ? blackBackground
                                : inActiveButtonColor,
                            textcolor: Colors.white,
                            onPressed: state is SignUpValidateState
                                ? () {
                                    Navigator.pushNamed(
                                        context, RouteTo.checkEmail);
                                  }
                                : null),
                        primarySizedBox,
                        ReusableText(
                          size: normalTextSize,
                          text: 'or',
                        ),
                        primarySizedBox,
                        ReusableBigTextButton(
                            text: "Login ",
                            fontSize: buttonTextSize,
                            borderColor: blackBorder,
                            backgroundColor: whiteBackground,
                            textcolor: state is SignUpValidateState
                                ? blackText
                                : inActiveButtonColor,
                            onPressed: null),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

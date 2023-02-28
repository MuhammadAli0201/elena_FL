import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/sized_box.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/appbar_title.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/reusable_widgets/reusable_mob_no_drop_down_menu.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../../core/reusable_widgets/reusable_text_form_field.dart';
import '../../core/routes/routes.dart';
import '../logic/bloc/add_admin_bloc/add_admin_bloc.dart';
import '../logic/bloc/add_admin_bloc/add_admin_events.dart';
import '../logic/bloc/add_admin_bloc/add_admin_states.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class AddAdmidAccount extends StatelessWidget {
  TextEditingController shownNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final addAdminBloc = BlocProvider.of<AddAdminBloc>(context);
    return PlatformScaffold(
      appBar: PlatformAppBar(
          backgroundColor: appBarBackgroundColor,
          title: const AppBarTitle(
            text: "Add Admin Account",
          ),
          leading: PlatformIconButton(
            icon: Icon(PlatformIcons(context).back),
            onPressed: () {},
          )),
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              primarySizedBox,
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ReusableText(
                    size: smallTextSize,
                    textAlign: TextAlign.center,
                    text:
                        "Add an appropriate and recognisable profile picture, which will be show on the home screen of you beloved one, and give the information below."),
              ),
              CircleAvatar(
                backgroundColor: lightGrey,
                radius: 62,
                child: PlatformIconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteTo.giveAccess);
                    },
                    icon: Icon(
                      PlatformIcons(context).add,
                      color: Colors.black,
                    )),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: ReusableTextFormField(
                      onchange: (val) {
                        addAdminBloc.add(AddAdminValidationEvent(
                            showName: shownNameController.text,
                            name: nameController.text,
                            surName: surNameController.text,
                            email: emailController.text,
                            mobileNumber: mobileNoController.text));
                      },
                      controller: shownNameController,
                      hintText: 'Shown name',
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: PlatformTextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RouteTo.showName);
                          },
                          child: Icon(
                            PlatformIcons(context).info,
                            color: lightGrey,
                            size: 50,
                          )))
                ],
              ),
              ReusableTextFormField(
                onchange: (val) {
                  addAdminBloc.add(AddAdminValidationEvent(
                      showName: shownNameController.text,
                      name: nameController.text,
                      surName: surNameController.text,
                      email: emailController.text,
                      mobileNumber: mobileNoController.text));
                },
                controller: nameController,
                hintText: 'Name',
              ),
              primarySizedBox,
              ReusableTextFormField(
                onchange: (val) {
                  addAdminBloc.add(AddAdminValidationEvent(
                      showName: shownNameController.text,
                      name: nameController.text,
                      surName: surNameController.text,
                      email: emailController.text,
                      mobileNumber: mobileNoController.text));
                },
                controller: surNameController,
                hintText: 'Surname',
              ),
              primarySizedBox,
              ReusableTextFormField(
                onchange: (val) {
                  addAdminBloc.add(AddAdminValidationEvent(
                      showName: shownNameController.text,
                      name: nameController.text,
                      surName: surNameController.text,
                      email: emailController.text,
                      mobileNumber: mobileNoController.text));
                },
                controller: emailController,
                hintText: 'Email',
              ),
              primarySizedBox,
              ReusableMobNoDropDownMenu(
                onchange: (val) {
                  addAdminBloc.add(AddAdminValidationEvent(
                      showName: shownNameController.text,
                      name: nameController.text,
                      surName: surNameController.text,
                      email: emailController.text,
                      mobileNumber: mobileNoController.text));
                },
                items: const ['+1', '+2', '+3'],
                mobileNumberController: mobileNoController,
              ),
              BlocBuilder<AddAdminBloc, AddAdminStates>(
                builder: (context, state) {
                  return Row(
                    children: [
                      ReusableText(
                          color: errorColor,
                          text: state is AddAdminInValidateState
                              ? "* ${state.errorMsg}"
                              : ""),
                    ],
                  );
                },
              ),
              secondarySizedBox,
              BlocBuilder<AddAdminBloc, AddAdminStates>(
                builder: (context, state) {
                  return ReusableBigTextButton(
                      fontSize: buttonTextSize,
                      textcolor: whiteText,
                      text: "Done",
                      backgroundColor: state is AddAdminValidateState
                          ? blackBackground
                          : inActiveButtonColor,
                      onPressed: (state is AddAdminValidateState)
                          ? () {
                              Navigator.pushNamed(
                                  context, RouteTo.confirmPhone);
                            }
                          : null);
                },
              ),
              primarySizedBox,
              ReusableBigTextButton(
                  fontSize: buttonTextSize,
                  textcolor: blackText,
                  text: "Logout",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteTo.signup);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

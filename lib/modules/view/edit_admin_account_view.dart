import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/sized_box.dart';
import '../../core/constants/text_size.dart';
import '../../core/reusable_widgets/appbar_title.dart';
import '../../core/reusable_widgets/profile_image.dart';
import '../../core/reusable_widgets/reusable_big_text_button.dart';
import '../../core/reusable_widgets/reusable_mob_no_drop_down_menu.dart';
import '../../core/reusable_widgets/reusable_text.dart';
import '../../core/reusable_widgets/reusable_text_form_field.dart';
import '../../core/routes/routes.dart';
import '../logic/bloc/edit_admin_bloc/edit_admin_bloc.dart';
import '../logic/bloc/edit_admin_bloc/edit_admin_events.dart';
import '../logic/bloc/edit_admin_bloc/edit_admin_states.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class EditAdminAccount extends StatelessWidget {
  TextEditingController shownNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final editAdminBloc = BlocProvider.of<EditAdminBloc>(context);
    return PlatformScaffold(
      appBar: PlatformAppBar(
          // centerTitle: true,
          backgroundColor: appBarBackgroundColor,
          title: const AppBarTitle(text: "Edit Admin Account")),
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              primarySizedBox,
              Stack(
                children: [
                  const ProfileImage(),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteTo.giveAccess);
                        },
                        child: CircleAvatar(
                            backgroundColor: whiteText,
                            radius: 20,
                            child: const Icon(color: Colors.black, Icons.edit)),
                      ))
                ],
              ),
              secondarySizedBox,
              ReusableTextFormField(
                onchange: (val) {
                  editAdminBloc.add(EditAdminValidationEvent(
                      showName: shownNameController.text,
                      name: nameController.text,
                      surName: surNameController.text,
                      email: emailController.text,
                      mobileNumber: mobileNoController.text));
                },
                controller: shownNameController,
                hintText: 'Shown name',
              ),
              primarySizedBox,
              ReusableTextFormField(
                onchange: (val) {
                  editAdminBloc.add(EditAdminValidationEvent(
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
                  editAdminBloc.add(EditAdminValidationEvent(
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
                  editAdminBloc.add(EditAdminValidationEvent(
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
                  editAdminBloc.add(EditAdminValidationEvent(
                      showName: shownNameController.text,
                      name: nameController.text,
                      surName: surNameController.text,
                      email: emailController.text,
                      mobileNumber: mobileNoController.text));
                },
                items: const ['+1', '+2', '+3'],
                mobileNumberController: mobileNoController,
              ),
              BlocBuilder<EditAdminBloc, EditAdminStates>(
                builder: (context, state) {
                  return Row(
                    children: [
                      ReusableText(
                          color: errorColor,
                          text: state is EditAdminInValidateState
                              ? "* ${state.errorMsg}"
                              : ""),
                    ],
                  );
                },
              ),
              secondarySizedBox,
              secondarySizedBox,
              secondarySizedBox,
              BlocBuilder<EditAdminBloc, EditAdminStates>(
                builder: (context, state) {
                  return ReusableBigTextButton(
                      fontSize: buttonTextSize,
                      textcolor: whiteText,
                      text: "Save",
                      backgroundColor: state is EditAdminValidateState
                          ? blackBackground
                          : inActiveButtonColor,
                      onPressed: (state is EditAdminValidateState)
                          ? () {
                              Navigator.pushNamed(
                                  context, RouteTo.adminAccount);
                            }
                          : null);
                },
              ),
              primarySizedBox,
              ReusableBigTextButton(
                  fontSize: buttonTextSize,
                  textcolor: blackBackground,
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

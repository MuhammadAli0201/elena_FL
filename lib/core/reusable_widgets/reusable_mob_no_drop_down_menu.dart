// ignore_for_file: use_key_in_widget_constructors
import 'package:elena_video_app/core/reusable_widgets/reusable_text.dart';
import 'package:flutter/material.dart';

import '../constants/border_radius.dart';

// ignore: must_be_immutable
class ReusableMobNoDropDownMenu extends StatelessWidget {
  List? items;
  TextEditingController? mobileNumberController;
  void Function(String val)? onchange;
  ReusableMobNoDropDownMenu(
      {required this.items,
      required this.mobileNumberController,
      this.onchange});

  double val = 34;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: DropdownButtonFormField(
            decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(12, 7.5, 0, 7.5),
                focusedBorder: dropdownBorderDecoration,
                enabledBorder: dropdownBorderDecoration),
            onChanged: (val) {},
            hint: ReusableText(text: items?[0]),
            items: items?.map((dynamic value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Expanded(
            flex: 4,
            child: TextFormField(
              onChanged: onchange,
              controller: mobileNumberController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                isDense: true,
                hintText: 'Mobile Number',
                contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                focusedBorder: textfieldBorderDecoration,
                enabledBorder: textfieldBorderDecoration,
              ),
            ))
      ],
    );
  }
}

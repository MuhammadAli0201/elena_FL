import 'package:flutter/material.dart';

import 'colors.dart';

const kBorderRadius = BorderRadius.all(Radius.circular(17));
// only on OTP boxes
const borderForOTP = BorderRadius.all(Radius.circular(17));

const radiusOfPhoneNoField = Radius.circular(17);

// border for Phone Number field
const dropdownBorderDecoration = OutlineInputBorder(
    borderSide: BorderSide(color: lightGrey, width: 2.0),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(17), bottomLeft: Radius.circular(17)));

const textfieldBorderDecoration = OutlineInputBorder(
    borderSide: BorderSide(color: lightGrey, width: 2.0),
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(17), bottomRight: Radius.circular(17)));

// text field enable border style and focus border style
InputBorder kEnabledBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: lightGrey, width: 2.0),
    borderRadius: kBorderRadius);
InputBorder kFocusedBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: lightGrey, width: 2.0),
    borderRadius: kBorderRadius);

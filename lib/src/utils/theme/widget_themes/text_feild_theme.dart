

import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';

class TTextFieldTheme{

  static InputDecorationTheme lightInputDecorationTheme=
  const InputDecorationTheme(
    prefixIconColor: tSecondaryColor,
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: tSecondaryColor,width: 2)),
    floatingLabelStyle: TextStyle(color: tSecondaryColor),
  );

  static InputDecorationTheme darkInputDecorationTheme=
  const InputDecorationTheme(
    prefixIconColor: tPrimaryColor,
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:tPrimaryColor,width: 2)),
    floatingLabelStyle: TextStyle(color: tPrimaryColor),
  );
}
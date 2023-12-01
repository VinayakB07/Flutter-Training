import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/outline_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_feild_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme
  ); // ThemeData

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonThene,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonThene,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme
  );
}

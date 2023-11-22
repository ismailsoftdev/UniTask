import 'package:flutter/material.dart';
import 'package:unitask/utils/theme/custom_themes/appbar_theme.dart';
import 'package:unitask/utils/theme/custom_themes/bottomsheet_theme.dart';
import 'package:unitask/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:unitask/utils/theme/custom_themes/chip_theme.dart';
import 'package:unitask/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:unitask/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:unitask/utils/theme/custom_themes/text_field_theme.dart';
import 'package:unitask/utils/theme/custom_themes/text_theme.dart';

class UAppTheme {
  UAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto Condenced',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: UTextTheme.lightTextTheme,
    chipTheme: UChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: UAppBarTheme.lightAppBarTheme,
    checkboxTheme: UCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: UBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: UElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: UOutlineTheme.lightOutlineButtonTheme,
    inputDecorationTheme: UTextFieldTheme.lightTextFieldTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto Condenced',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: UTextTheme.darkTextTheme,
    chipTheme: UChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: UAppBarTheme.darkAppBarTheme,
    checkboxTheme: UCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: UBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: UElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: UOutlineTheme.darkOutlineButtonTheme,
    inputDecorationTheme: UTextFieldTheme.darkTextFieldTheme,
  );
}

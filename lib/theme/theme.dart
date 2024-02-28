import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'appbar_theme.dart';
import 'elevated_button_theme.dart';
import 'outlined_button_theme.dart';
import 'text_theme.dart';

class CAppTheme {
  CAppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Source Sans 3',
    brightness: Brightness.light,
    primaryColor: CColors.primary,
    scaffoldBackgroundColor: CColors.white,
    disabledColor: CColors.grey,
    textTheme: CTextTheme.lightTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Source Sans 3',
    brightness: Brightness.dark,
    primaryColor: CColors.primary,
    scaffoldBackgroundColor: CColors.black,
    disabledColor: CColors.grey,
    textTheme: CTextTheme.darkTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    appBarTheme: CAppBarTheme.darkAppBarTheme,
  );
}

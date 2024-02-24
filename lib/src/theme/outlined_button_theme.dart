import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'constants/sizes.dart';

class COutlinedButtonTheme {
  COutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: CSizes.buttonElevation,
      foregroundColor: CColors.dark,
      side: const BorderSide(color: CColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: CColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: CSizes.buttonHeight),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CSizes.buttonRadius)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: CSizes.buttonElevation,
      foregroundColor: CColors.light,
      side: const BorderSide(color: CColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: CColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: CSizes.buttonHeight,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CSizes.buttonRadius)),
    ),
  );
}

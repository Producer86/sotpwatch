import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/colors.dart';

class CTextTheme {
  CTextTheme._();

  static const double headingLineHeight = 1.3;
  static const double bodyLineHeight = 1.5;
  static const double labelLineHeight = 1.3;

  static EdgeInsets getHeadingMargins(double fontSize) =>
      EdgeInsets.only(top: fontSize / 1.125, bottom: fontSize * 0.25);  

  static EdgeInsets getBodyMargins(double fontSize) =>
      EdgeInsets.only(top: fontSize / 1.125, bottom: fontSize * 0.25);

  static EdgeInsets getLabelMargins(double fontSize) =>
      EdgeInsets.only(top: fontSize / 1.125, bottom: fontSize * 0.25);

  static final TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.sourceSans3().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: CColors.dark, height: headingLineHeight),
    headlineMedium: GoogleFonts.sourceSans3().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: CColors.dark, height: headingLineHeight),
    headlineSmall: GoogleFonts.sourceSans3().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: CColors.dark, height: headingLineHeight),

    titleLarge: GoogleFonts.sourceSans3().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: CColors.dark, height: headingLineHeight),
    titleMedium: GoogleFonts.sourceSans3().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: CColors.dark, height: headingLineHeight),
    titleSmall: GoogleFonts.sourceSans3().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: CColors.dark, height: bodyLineHeight),

    bodyLarge: GoogleFonts.sourceSans3().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: CColors.dark, height: bodyLineHeight),
    bodyMedium: GoogleFonts.sourceSans3().copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: CColors.dark, height: bodyLineHeight),
    bodySmall: GoogleFonts.sourceSans3().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: CColors.dark.withOpacity(0.5), height: bodyLineHeight),

    labelLarge: GoogleFonts.sourceSans3().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: CColors.dark, height: labelLineHeight),
    labelMedium: GoogleFonts.sourceSans3().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: CColors.dark.withOpacity(0.5), height: labelLineHeight),
  );

  static final TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.sourceSans3().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: CColors.light, height: headingLineHeight),
    headlineMedium: GoogleFonts.sourceSans3().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: CColors.light, height: headingLineHeight),
    headlineSmall: GoogleFonts.sourceSans3().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: CColors.light, height: headingLineHeight),

    titleLarge: GoogleFonts.sourceSans3().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: CColors.light, height: headingLineHeight),
    titleMedium: GoogleFonts.sourceSans3().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: CColors.light, height: headingLineHeight),
    titleSmall: GoogleFonts.sourceSans3().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: CColors.light, height: headingLineHeight),

    bodyLarge: GoogleFonts.sourceSans3().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: CColors.light, height: bodyLineHeight),
    bodyMedium: GoogleFonts.sourceSans3().copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: CColors.light, height: bodyLineHeight),
    bodySmall: GoogleFonts.sourceSans3().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: CColors.light.withOpacity(0.5), height: bodyLineHeight),

    labelLarge: GoogleFonts.sourceSans3().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: CColors.light, height: labelLineHeight),
    labelMedium: GoogleFonts.sourceSans3().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: CColors.light.withOpacity(0.5), height: labelLineHeight),
  );
}

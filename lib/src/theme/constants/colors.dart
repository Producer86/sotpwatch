import 'package:flutter/material.dart';

class CColors {
  CColors._();

  // Basic
  static const primary = Color(0xFF5bc84c);
  static const secondary = Color(0xFFffcc00);
  static const accent = Color(0xFF3399cc);

  // Text
  static const textPrimary = Color(0xFF4a4a4a);
  static const textSecondary = Color(0xFF767676);
  static const textWhite = Colors.white;

  // Backgrounds
  static const light = Color(0xFFf6f6f6);
  static const dark = Color(0xFF4a4a4a);
  static const primaryBackground = Color(0xFFf3f5ff);

  // Background Containers
  static const lightContainer = Color(0xFFf6f6f6);
  static final darkContainer = Colors.white.withOpacity(0.1);

  // Buttons
  static const buttonPrimary = primary;
  static const buttonSecondary = Color(0xFF6c757d);
  static const buttonDisabled = Color(0xFFd2d2d2);

  // Borders
  static const borderPrimary = Color(0xFFd9d9d9);
  static const borderSecondary = Color(0xFFe6e6e6);

  // Validation
  static const error = Color(0xFFff435a);
  static const success = primary;
  static const warning = Color(0xFFff6600);
  static const info = Color(0xFF3399cc);

  // Neutral
  static const black = Color(0xFF232323);
  static const darkerGrey = Color(0xFF4f4f4f);
  static const darkGrey = Color(0xFF939393);
  static const grey = Color(0xFFe0e0e0);
  static const softGrey = Color(0xFFf4f4f4);
  static const lightGrey = Color(0xFFf9f9f9);
  static const white = Color(0xFFffffff);
}

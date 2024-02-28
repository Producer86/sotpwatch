import 'package:flutter/material.dart';

extension TextStyleHelper on TextStyle {
  TextStyle copyWithOther(TextStyle? withStyle) {
    if (withStyle == null) return this;
    return copyWith(
      inherit: withStyle.inherit,
      color: withStyle.color,
      backgroundColor: withStyle.backgroundColor,
      fontSize: withStyle.fontSize,
      fontWeight: withStyle.fontWeight,
      fontStyle: withStyle.fontStyle,
      letterSpacing: withStyle.letterSpacing,
      wordSpacing: withStyle.wordSpacing,
      textBaseline: withStyle.textBaseline,
      height: withStyle.height,
      leadingDistribution: withStyle.leadingDistribution,
      locale: withStyle.locale,
      foreground: withStyle.foreground,
      background: withStyle.background,
      shadows: withStyle.shadows,
      fontFeatures: withStyle.fontFeatures,
      fontVariations: withStyle.fontVariations,
      decoration: withStyle.decoration,
      decorationColor: withStyle.decorationColor,
      decorationStyle: withStyle.decorationStyle,
      decorationThickness: withStyle.decorationThickness,
      debugLabel: withStyle.debugLabel,
      fontFamily: withStyle.fontFamily,
      fontFamilyFallback: withStyle.fontFamilyFallback,
      overflow: withStyle.overflow,
    );
  }
}

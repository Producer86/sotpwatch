import 'package:flutter/material.dart';

import '../theme/constants/sizes.dart';
import '../theme/text_theme.dart';
import 'utils.dart';

abstract class HeadLineText extends StatelessWidget {
  final String text;
  final TextStyle? withStyle;

  const HeadLineText(
    this.text, {
    super.key,
    this.withStyle,
  });

  factory HeadLineText.small(String text, {Key? key, TextStyle? withStyle}) =>
      _HeadLineSmall(
        text,
        key: key,
        withStyle: withStyle,
      );
  factory HeadLineText.medium(String text, {Key? key, TextStyle? withStyle}) =>
      _HeadLineMedium(
        text,
        key: key,
        withStyle: withStyle,
      );
  factory HeadLineText.large(String text, {Key? key, TextStyle? withStyle}) =>
      _HeadLineLarge(
        text,
        key: key,
        withStyle: withStyle,
      );
}

class _HeadLineSmall extends HeadLineText {
  const _HeadLineSmall(super.text, {super.key, super.withStyle});

  @override
  Widget build(BuildContext context) {
    final TextStyle themeStyle =
        Theme.of(context).textTheme.headlineSmall ?? const TextStyle();
    final TextStyle textTheme = themeStyle.copyWithOther(withStyle);

    return Padding(
      padding:
          CTextTheme.getHeadingMargins(textTheme.fontSize ?? CSizes.fontSizeSm),
      child: SelectableText(text, style: textTheme),
    );
  }
}

class _HeadLineMedium extends HeadLineText {
  const _HeadLineMedium(super.text, {super.key, super.withStyle});

  @override
  Widget build(BuildContext context) {
    final TextStyle themeStyle =
        Theme.of(context).textTheme.headlineMedium ?? const TextStyle();
    final TextStyle textTheme = themeStyle.copyWithOther(withStyle);

    return Padding(
      padding:
          CTextTheme.getHeadingMargins(textTheme.fontSize ?? CSizes.fontSizeMd),
      child: SelectableText(text, style: textTheme),
    );
  }
}

class _HeadLineLarge extends HeadLineText {
  const _HeadLineLarge(super.text, {super.key, super.withStyle});

  @override
  Widget build(BuildContext context) {
    final TextStyle themeStyle =
        Theme.of(context).textTheme.headlineLarge ?? const TextStyle();
    final TextStyle textTheme = themeStyle.copyWithOther(withStyle);

    return Padding(
      padding:
          CTextTheme.getHeadingMargins(textTheme.fontSize ?? CSizes.fontSizeLg),
      child: SelectableText(text, style: textTheme),
    );
  }
}
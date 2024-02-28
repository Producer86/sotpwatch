import 'package:flutter/material.dart';

import 'utils.dart';
import '../theme/constants/sizes.dart';
import '../theme/text_theme.dart';

abstract class BodyText extends StatelessWidget {
  final String text;
  final TextStyle? withStyle;

  const BodyText(
    this.text, {
    super.key,
    this.withStyle,
  });

  factory BodyText.small(String text, {Key? key, TextStyle? withStyle}) =>
      _BodySmall(
        text,
        key: key,
        withStyle: withStyle,
      );
  factory BodyText.medium(String text, {Key? key, TextStyle? withStyle}) =>
      _BodyMedium(
        text,
        key: key,
        withStyle: withStyle,
      );
  factory BodyText.large(String text, {Key? key, TextStyle? withStyle}) =>
      _BodyLarge(
        text,
        key: key,
        withStyle: withStyle,
      );
}

class _BodySmall extends BodyText {
  const _BodySmall(super.text, {super.key, super.withStyle});

  @override
  Widget build(BuildContext context) {
    final TextStyle themeStyle =
        Theme.of(context).textTheme.bodySmall ?? const TextStyle();
    final TextStyle textTheme = themeStyle.copyWithOther(withStyle);

    return Padding(
      padding:
          CTextTheme.getBodyMargins(textTheme.fontSize ?? CSizes.fontSizeSm),
      child: Text(text, style: textTheme),
    );
  }
}

class _BodyMedium extends BodyText {
  const _BodyMedium(super.text, {super.key, super.withStyle});

  @override
  Widget build(BuildContext context) {
    final TextStyle themeStyle =
        Theme.of(context).textTheme.bodyMedium ?? const TextStyle();
    final TextStyle textTheme = themeStyle.copyWithOther(withStyle);

    return Padding(
      padding:
          CTextTheme.getBodyMargins(textTheme.fontSize ?? CSizes.fontSizeMd),
      child: Text(text, style: textTheme),
    );
  }
}

class _BodyLarge extends BodyText {
  const _BodyLarge(super.text, {super.key, super.withStyle});

  @override
  Widget build(BuildContext context) {
    final TextStyle themeStyle =
        Theme.of(context).textTheme.bodyLarge ?? const TextStyle();
    final TextStyle textTheme = themeStyle.copyWithOther(withStyle);

    return Padding(
      padding:
          CTextTheme.getBodyMargins(textTheme.fontSize ?? CSizes.fontSizeLg),
      child: Text(text, style: textTheme),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sotpwatch/sotpwatch/sotpwatch_landscape.dart';
import 'package:sotpwatch/sotpwatch/sotpwatch_portrait.dart';

/// Displays a list of SampleItems.
class SotpwatchView extends StatelessWidget {
  const SotpwatchView({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return OrientationLayoutBuilder(
            portrait: (context) => const SotpwatchPortrait(),
            landscape: (context) => const SotpwatchLandscape(),
          );
        } else {
          return const SotpwatchLandscape();
        }
      },
    );
  }
}

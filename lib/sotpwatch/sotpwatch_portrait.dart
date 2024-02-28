import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sotpwatch/sotpwatch/clock_view.dart';
import 'package:sotpwatch/sotpwatch/lap_view.dart';
import 'package:sotpwatch/theme/constants/sizes.dart';

import '../settings/settings_view.dart';

class SotpwatchPortrait extends StatelessWidget {
  const SotpwatchPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(CSizes.sm),
          child: SvgPicture.asset('assets/images/OTP.BD.svg'),
        ),
        title: const Text('sOTPwatch'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: ClockView()),
          Expanded(flex: 2, child: LapView()),
        ],
      ),
    );
  }
}

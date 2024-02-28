import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../settings/settings_view.dart';
import 'clock_view.dart';
import 'lap_view.dart';

class SotpwatchLandscape extends StatelessWidget {
  const SotpwatchLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sOTPwatch'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.settings),
        onPressed: () {
          // Navigate to the settings page. If the user leaves and returns
          // to the app after it has been killed while running in the
          // background, the navigation stack is restored.
          Navigator.restorablePushNamed(context, SettingsView.routeName);
        },
      ),
      body: Row(
        children: [
          const Expanded(
            child: Column(
              children: [
                Expanded(child: ClockView()),
                // ignore: non_bool_condition
                if (kIsWeb) Expanded(child: SizedBox.expand()),
              ],
            ),
          ),
          Expanded(child: LapView()),
        ],
      ),
    );
  }
}

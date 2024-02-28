import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'dependencies/dependencies.dart';
import 'dependencies/initializer.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_service.dart';

void main() async {
  // Init dependencies.
  initDI(di, Environment.dev);

  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(settingsController: settingsController));
}

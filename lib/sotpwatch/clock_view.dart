import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../components/body_text.dart';
import '../components/ui_constants.dart';
import '../dependencies/dependencies.dart';
import '../theme/constants/sizes.dart';
import 'clock_display.dart';

class ClockView extends StatefulWidget {
  const ClockView({super.key});

  @override
  State<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  final StopWatchTimer stopWatch = di<StopWatchTimer>();

  void Function()? startPressed() => stopWatch.isRunning
      ? null
      : () => setState(() => stopWatch.onStartTimer());

  void Function()? pausePressed() => stopWatch.isRunning
      ? () => setState(() => stopWatch.onStopTimer())
      : null;

  void Function()? resetPressed() =>
      () => setState(() => stopWatch.onResetTimer());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CSizes.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: ClockDisplay()),
          const SizedBox(height: CSizes.spaceBtwSections),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: CSizes.buttonWidth,
                  child: ElevatedButton(
                      key: const Key(kStartButtonKey),
                      onPressed: startPressed(),
                      child: BodyText.large(
                          AppLocalizations.of(context)!.startButtonLabel))),
              SizedBox(
                  width: CSizes.buttonWidth,
                  child: OutlinedButton(
                      key: const Key(kPauseButtonKey),
                      onPressed: pausePressed(),
                      child: BodyText.large(
                          AppLocalizations.of(context)!.pauseButtonLabel))),
              SizedBox(
                  width: CSizes.buttonWidth,
                  child: OutlinedButton(
                      key: const Key(kResetButtonKey),
                      onPressed: resetPressed(),
                      child: BodyText.large(
                          AppLocalizations.of(context)!.resetButtonLabel))),
            ],
          ),
        ],
      ),
    );
  }
}

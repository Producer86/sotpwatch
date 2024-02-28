import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../components/body_text.dart';
import '../dependencies/dependencies.dart';
import '../theme/constants/sizes.dart';

class LapView extends StatelessWidget {
  LapView({super.key});
  final StopWatchTimer stopwatch = di<StopWatchTimer>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: CSizes.buttonWidth,
          child: OutlinedButton(
              onPressed: () => stopwatch.onAddLap(),
              child: GestureDetector(
                  onTap: () => stopwatch.onAddLap(),
                  child: BodyText.large(
                      AppLocalizations.of(context)!.lapButtonLabel))),
        ),
        Expanded(
          child: StreamBuilder(
            stream: stopwatch.records,
            builder: (context, snapshot) {
              final hasData = snapshot.data != null;
              if (!hasData) return const SizedBox.shrink();

              final List<StopWatchRecord> value = snapshot.data!;
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: CSizes.spaceDefault),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: CSizes.spaceBtwItems),
                      child: BodyText.large(value[index].displayTime!),
                    );
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

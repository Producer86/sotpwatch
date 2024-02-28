import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../components/headline_text.dart';
import '../dependencies/dependencies.dart';

class ClockDisplay extends StatefulWidget {
  ClockDisplay({
    super.key,
  });

  final stopWatch = di<StopWatchTimer>();

  @override
  State<ClockDisplay> createState() => _ClockDisplayState();
}

class _ClockDisplayState extends State<ClockDisplay> {
  bool showAnalog = false;
  final GlobalKey<AnalogClockState> clockKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: StreamBuilder(
                stream: widget.stopWatch.rawTime,
                initialData: widget.stopWatch.rawTime.value,
                builder: (context, snapshot) {
                  final displayString =
                      StopWatchTimer.getDisplayTime(snapshot.data!);
                  if (showAnalog) {
                    // This is the intended useage by the author.
                    final time = DateTime.tryParse('1970-01-01 $displayString');
                    if (clockKey.currentState?.mounted == true) {
                      clockKey.currentState!.dateTime = time!;
                    }
                    return AnalogClock(
                      key: clockKey,
                      isKeepTime: false,
                      dateTime: time,
                    );
                  } else {
                    return HeadLineText.large(displayString);
                  }
                },
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                  onPressed: () => setState(() => showAnalog = !showAnalog),
                  icon: const Icon(Icons.change_circle_outlined))),
        ],
      ),
    );
  }
}

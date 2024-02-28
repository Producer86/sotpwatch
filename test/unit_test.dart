import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' hide test;
import 'package:sotpwatch/components/ui_constants.dart';
import 'package:sotpwatch/dependencies/initializer.dart';
import 'package:sotpwatch/sotpwatch/sotpwatch_portrait.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:sotpwatch/dependencies/dependencies.dart';

void main() {
  group('Basic functionality.', () {
    setUpAll(() {
      initDI(di, Environment.dev);
    });

    tearDown(() {
      final stopWatch = di<StopWatchTimer>();
      stopWatch.onStopTimer();
      stopWatch.onResetTimer();
    });

    test(
        'Pressing start button starts the stopwatch and increases elapsed time.',
        () async {
      final stopWatch = di<StopWatchTimer>();
      stopWatch.onStartTimer();
      await Future.delayed(1.seconds);
      stopWatch.onStopTimer();

      expect(stopWatch.secondTime.value, 1);
    });

    test('Pressing pause button pauses the stopwatch and stops elapsed time.',
        () async {
      final stopWatch = di<StopWatchTimer>();
      stopWatch.onStartTimer();
      await Future.delayed(1.seconds);
      stopWatch.onStopTimer();
      await Future.delayed(1.seconds);

      expect(stopWatch.secondTime.value, 1);
    });

    test(
        'Pressing reset button resets the stopwatch to 0 and stops elapsed time.',
        () async {
      final stopWatch = di<StopWatchTimer>();
      stopWatch.onStartTimer();
      await Future.delayed(1.seconds);
      stopWatch.onResetTimer();
      await Future.delayed(10.milliseconds); // Step over the async tick

      expect(stopWatch.rawTime.value, 0);
    });
  });

  group('Widget tests.', () {
    setUpAll(() {
      initDI(di, Environment.dev);
    });

    tearDown(() {
      final stopWatch = di<StopWatchTimer>();
      stopWatch.onStopTimer();
      stopWatch.onResetTimer();
    });

    testWidgets('Tap buttons and verify stopwatch responses.',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: SotpwatchPortrait()));

      // Starting up.
      expect(find.text('00:00:00.00'), findsOneWidget);

      // Press start.
      await tester.tap(find.byKey(const Key(kStartButtonKey)));
      await tester.pump(1.seconds);
      await tester.tap(find.byKey(const Key(kPauseButtonKey)));
      expect(find.textContaining(RegExp(r'00:00:0[0,1]\.\d+')), findsOneWidget);

      // Press start multiple times.
      await tester.tap(find.byKey(const Key(kStartButtonKey)));
      await tester.pump(1.seconds);
      await tester.tap(find.byKey(const Key(kStartButtonKey)));
      await tester.pump(1.seconds);
      await tester.tap(find.byKey(const Key(kPauseButtonKey)));
      expect(
          find.textContaining(RegExp(r'00:00:0[0,1,2]\.\d+')), findsOneWidget);

      // Press reset button.
      await tester.tap(find.byKey(const Key(kResetButtonKey)));
      await tester.pump(1.seconds);
      expect(find.text('00:00:00.00'), findsOneWidget);
    });
  });
}

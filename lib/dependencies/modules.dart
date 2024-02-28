import 'package:injectable/injectable.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

@module
abstract class AppModule {
  @lazySingleton
  StopWatchTimer get stopWatchTimer => StopWatchTimer();
}

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'initializer.config.dart';

@injectableInit
GetIt initDI(GetIt getIt, String environment) =>
    getIt.init(environment: environment);

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:module_data/src/service_provider.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false
)
void initializeServices() => $initGetIt(GetIt.I);
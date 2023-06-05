library module_business;
import 'package:get_it/get_it.dart';
import 'package:module_data/module_data.dart';
import 'package:injectable/injectable.dart';

import 'module_business.config.dart';

@InjectableInit(
    initializerName: r'$initGetIt',
    preferRelativeImports: true,
    asExtension: false
)
void initializeBlocs(){
  initializeServices();
  $initGetIt(GetIt.I);
}
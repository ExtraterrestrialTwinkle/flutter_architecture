import '../module_data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SomethingService)
class SomethingServiceImpl implements SomethingService{
  @override
  void doSomething(int arg) {
    print('result: $arg');
  }
}
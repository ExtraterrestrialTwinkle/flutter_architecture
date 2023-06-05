import 'dart:async';
import 'dart:math';
import 'package:module_business/something_model.dart';
import 'package:module_data/module_data.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterBloc {
  final SomethingService _service;

  int _counter = 1;

  CounterBloc(this._service) {
    _actionController.stream.listen(_increaseStream);
  }

  final _counterStream = BehaviorSubject<int>.seeded(1);

  Stream<int> get pressedCount => _counterStream.stream;
  Sink<int> get _addValue => _counterStream.sink;

  final StreamController _actionController = StreamController();
  StreamSink get incrementCounter => _actionController.sink;

  final _colorStream = BehaviorSubject<SomethingModel>.seeded(const SomethingModel(colorHex: '0x000000'));

  Stream<SomethingModel> get currentColor => _colorStream.stream;
  Sink<SomethingModel> get _addColor => _colorStream.sink;

  void _increaseStream(data) {
    _counter += 1;
    SomethingModel color = SomethingModel(colorHex: hexGenerator(_counter));
    _addValue.add(_counter);
    _addColor.add(color);
    _service.doSomething(_counter);
  }

  void dispose() {
    _counterStream.close();
    _colorStream.close();
    _actionController.close();
  }
}

String hexGenerator(int index) {
  int random = Random().nextInt(10000);
  print('random $random');
  index *= random;
  print('$index, ${index.toRadixString(16)}');
  String hexString = index.toRadixString(16);
  return hexString;
}
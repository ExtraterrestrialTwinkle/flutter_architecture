import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:module_business/module_business.dart';
import 'package:module_business/main_bloc.dart';
import 'package:module_business/something_model.dart';
import 'package:string_to_hex/string_to_hex.dart';

void main() {
  initializeBlocs();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final CounterBloc _counterBloc;

  @override
  void initState() {
    super.initState();
    _counterBloc = GetIt.I.get<CounterBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(counterBloc: _counterBloc),
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.counterBloc});

  final CounterBloc counterBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<int>(
            stream: counterBloc.pressedCount,
            builder: (context, snapshot) {
              return Text(
                'Flutter Counter Bloc - ${snapshot.data.toString()}',
              );
            }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counts:',
            ),
            StreamBuilder<int>(
                stream: counterBloc.pressedCount,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data.toString(),
                    style: Theme.of(context).textTheme.displayLarge,
                  );
                }),
            StreamBuilder<SomethingModel>(
                stream: counterBloc.currentColor,
                builder: (context, snapshot) {
                  return Container(
                      width: 200,
                      height: 200,
                      color: getColor(snapshot.data));
                }),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 50.0,
        height: 50.0,
        child: FloatingActionButton(
          onPressed: () {
            counterBloc.incrementCounter.add(null);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

Color getColor(SomethingModel? data) {
  try {
    return Color(StringToHex.toColor(data!.colorHex));
  } on Error catch (_) {
    return const Color(0xffffffff);
  }
}

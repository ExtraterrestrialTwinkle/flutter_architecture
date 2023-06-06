import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'generator.dart';

///
/// dart run build_runner build
///
Builder methodsBuilder(BuilderOptions options) => PartBuilder([MethodsGenerator()], '.methods_generator.dart');
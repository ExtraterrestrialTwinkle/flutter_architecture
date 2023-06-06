
import 'generator_annotation.dart';
part 'example.methods_generator.dart';

@generateMethods
class Example {
  final String arg1;
  final int arg2;

  Example(this.arg1, this.arg2);
}
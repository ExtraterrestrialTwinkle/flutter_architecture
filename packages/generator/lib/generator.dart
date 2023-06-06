import  'package:build/src/builder/build_step.dart' ;
import  'package:analyzer/dart/element/element.dart' ;
import  'package:source_gen/source_gen.dart' ;
import  'package:generator/generator_annotation.dart' ;
import  'package:generator/models_visitor.dart' ;

class MethodsGenerator extends GeneratorForAnnotation<MethodsBuilder> {
  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {

    final visitor = ModelVisitor();
    element.visitChildren(visitor);

    final className = '${visitor.className}';

    final classBuffer = StringBuffer();
    classBuffer.writeln('extension MakeString on $className {');
    generateToString(visitor, classBuffer);
    classBuffer.writeln('}');
    return classBuffer.toString();
  }

  void generateToString(ModelVisitor visitor, StringBuffer classBuffer) {
    classBuffer.writeln("String makeString() =>");
    classBuffer.write("'[${visitor.className} ");
    for (final field in visitor.fields.keys) {
      classBuffer.write("$field = \$$field ");
    }
    classBuffer.write("]';");
  }


}
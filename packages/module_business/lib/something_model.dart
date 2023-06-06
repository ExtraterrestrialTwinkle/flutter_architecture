import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generator/generator_annotation.dart';
part 'something_model.freezed.dart';
part  'something_model.methods_generator.dart';

@freezed
@generateMethods
class SomethingModel with _$SomethingModel {
  const factory SomethingModel({required String colorHex}) = _SomethingModel;
}

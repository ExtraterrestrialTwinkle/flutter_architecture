import 'package:freezed_annotation/freezed_annotation.dart';
part 'something_model.freezed.dart';

@freezed
class SomethingModel with _$SomethingModel {
  const factory SomethingModel({required String colorHex}) = _SomethingModel;
}

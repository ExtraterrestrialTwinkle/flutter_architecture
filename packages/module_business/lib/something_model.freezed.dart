// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'something_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SomethingModel {
  String get colorHex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SomethingModelCopyWith<SomethingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SomethingModelCopyWith<$Res> {
  factory $SomethingModelCopyWith(
          SomethingModel value, $Res Function(SomethingModel) then) =
      _$SomethingModelCopyWithImpl<$Res, SomethingModel>;
  @useResult
  $Res call({String colorHex});
}

/// @nodoc
class _$SomethingModelCopyWithImpl<$Res, $Val extends SomethingModel>
    implements $SomethingModelCopyWith<$Res> {
  _$SomethingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorHex = null,
  }) {
    return _then(_value.copyWith(
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SomethingModelCopyWith<$Res>
    implements $SomethingModelCopyWith<$Res> {
  factory _$$_SomethingModelCopyWith(
          _$_SomethingModel value, $Res Function(_$_SomethingModel) then) =
      __$$_SomethingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String colorHex});
}

/// @nodoc
class __$$_SomethingModelCopyWithImpl<$Res>
    extends _$SomethingModelCopyWithImpl<$Res, _$_SomethingModel>
    implements _$$_SomethingModelCopyWith<$Res> {
  __$$_SomethingModelCopyWithImpl(
      _$_SomethingModel _value, $Res Function(_$_SomethingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorHex = null,
  }) {
    return _then(_$_SomethingModel(
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SomethingModel implements _SomethingModel {
  const _$_SomethingModel({required this.colorHex});

  @override
  final String colorHex;

  @override
  String toString() {
    return 'SomethingModel(colorHex: $colorHex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SomethingModel &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SomethingModelCopyWith<_$_SomethingModel> get copyWith =>
      __$$_SomethingModelCopyWithImpl<_$_SomethingModel>(this, _$identity);
}

abstract class _SomethingModel implements SomethingModel {
  const factory _SomethingModel({required final String colorHex}) =
      _$_SomethingModel;

  @override
  String get colorHex;
  @override
  @JsonKey(ignore: true)
  _$$_SomethingModelCopyWith<_$_SomethingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

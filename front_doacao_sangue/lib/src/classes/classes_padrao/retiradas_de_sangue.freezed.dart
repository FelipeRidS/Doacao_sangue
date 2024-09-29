// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retiradas_de_sangue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RetiradasDeSangue _$RetiradasDeSangueFromJson(Map<String, dynamic> json) {
  return _RetiradasDeSangue.fromJson(json);
}

/// @nodoc
mixin _$RetiradasDeSangue {
  int get codRetiradaSangue => throw _privateConstructorUsedError;
  int get codTipoSanguineo => throw _privateConstructorUsedError;
  int get mlSangue => throw _privateConstructorUsedError;

  /// Serializes this RetiradasDeSangue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetiradasDeSangue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetiradasDeSangueCopyWith<RetiradasDeSangue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetiradasDeSangueCopyWith<$Res> {
  factory $RetiradasDeSangueCopyWith(
          RetiradasDeSangue value, $Res Function(RetiradasDeSangue) then) =
      _$RetiradasDeSangueCopyWithImpl<$Res, RetiradasDeSangue>;
  @useResult
  $Res call({int codRetiradaSangue, int codTipoSanguineo, int mlSangue});
}

/// @nodoc
class _$RetiradasDeSangueCopyWithImpl<$Res, $Val extends RetiradasDeSangue>
    implements $RetiradasDeSangueCopyWith<$Res> {
  _$RetiradasDeSangueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetiradasDeSangue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codRetiradaSangue = null,
    Object? codTipoSanguineo = null,
    Object? mlSangue = null,
  }) {
    return _then(_value.copyWith(
      codRetiradaSangue: null == codRetiradaSangue
          ? _value.codRetiradaSangue
          : codRetiradaSangue // ignore: cast_nullable_to_non_nullable
              as int,
      codTipoSanguineo: null == codTipoSanguineo
          ? _value.codTipoSanguineo
          : codTipoSanguineo // ignore: cast_nullable_to_non_nullable
              as int,
      mlSangue: null == mlSangue
          ? _value.mlSangue
          : mlSangue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RetiradasDeSangueImplCopyWith<$Res>
    implements $RetiradasDeSangueCopyWith<$Res> {
  factory _$$RetiradasDeSangueImplCopyWith(_$RetiradasDeSangueImpl value,
          $Res Function(_$RetiradasDeSangueImpl) then) =
      __$$RetiradasDeSangueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int codRetiradaSangue, int codTipoSanguineo, int mlSangue});
}

/// @nodoc
class __$$RetiradasDeSangueImplCopyWithImpl<$Res>
    extends _$RetiradasDeSangueCopyWithImpl<$Res, _$RetiradasDeSangueImpl>
    implements _$$RetiradasDeSangueImplCopyWith<$Res> {
  __$$RetiradasDeSangueImplCopyWithImpl(_$RetiradasDeSangueImpl _value,
      $Res Function(_$RetiradasDeSangueImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetiradasDeSangue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codRetiradaSangue = null,
    Object? codTipoSanguineo = null,
    Object? mlSangue = null,
  }) {
    return _then(_$RetiradasDeSangueImpl(
      codRetiradaSangue: null == codRetiradaSangue
          ? _value.codRetiradaSangue
          : codRetiradaSangue // ignore: cast_nullable_to_non_nullable
              as int,
      codTipoSanguineo: null == codTipoSanguineo
          ? _value.codTipoSanguineo
          : codTipoSanguineo // ignore: cast_nullable_to_non_nullable
              as int,
      mlSangue: null == mlSangue
          ? _value.mlSangue
          : mlSangue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetiradasDeSangueImpl implements _RetiradasDeSangue {
  const _$RetiradasDeSangueImpl(
      {required this.codRetiradaSangue,
      required this.codTipoSanguineo,
      required this.mlSangue});

  factory _$RetiradasDeSangueImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetiradasDeSangueImplFromJson(json);

  @override
  final int codRetiradaSangue;
  @override
  final int codTipoSanguineo;
  @override
  final int mlSangue;

  @override
  String toString() {
    return 'RetiradasDeSangue(codRetiradaSangue: $codRetiradaSangue, codTipoSanguineo: $codTipoSanguineo, mlSangue: $mlSangue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetiradasDeSangueImpl &&
            (identical(other.codRetiradaSangue, codRetiradaSangue) ||
                other.codRetiradaSangue == codRetiradaSangue) &&
            (identical(other.codTipoSanguineo, codTipoSanguineo) ||
                other.codTipoSanguineo == codTipoSanguineo) &&
            (identical(other.mlSangue, mlSangue) ||
                other.mlSangue == mlSangue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codRetiradaSangue, codTipoSanguineo, mlSangue);

  /// Create a copy of RetiradasDeSangue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetiradasDeSangueImplCopyWith<_$RetiradasDeSangueImpl> get copyWith =>
      __$$RetiradasDeSangueImplCopyWithImpl<_$RetiradasDeSangueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetiradasDeSangueImplToJson(
      this,
    );
  }
}

abstract class _RetiradasDeSangue implements RetiradasDeSangue {
  const factory _RetiradasDeSangue(
      {required final int codRetiradaSangue,
      required final int codTipoSanguineo,
      required final int mlSangue}) = _$RetiradasDeSangueImpl;

  factory _RetiradasDeSangue.fromJson(Map<String, dynamic> json) =
      _$RetiradasDeSangueImpl.fromJson;

  @override
  int get codRetiradaSangue;
  @override
  int get codTipoSanguineo;
  @override
  int get mlSangue;

  /// Create a copy of RetiradasDeSangue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetiradasDeSangueImplCopyWith<_$RetiradasDeSangueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

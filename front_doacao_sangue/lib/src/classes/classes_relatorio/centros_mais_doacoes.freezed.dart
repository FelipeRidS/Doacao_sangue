// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'centros_mais_doacoes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CentrosMaisDoacoes _$CentrosMaisDoacoesFromJson(Map<String, dynamic> json) {
  return _CentrosMaisDoacoes.fromJson(json);
}

/// @nodoc
mixin _$CentrosMaisDoacoes {
  String get nomeLocal => throw _privateConstructorUsedError;
  String get endereco => throw _privateConstructorUsedError;
  int get qtdRegistros => throw _privateConstructorUsedError;
  String get qtdMls => throw _privateConstructorUsedError;

  /// Serializes this CentrosMaisDoacoes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CentrosMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CentrosMaisDoacoesCopyWith<CentrosMaisDoacoes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CentrosMaisDoacoesCopyWith<$Res> {
  factory $CentrosMaisDoacoesCopyWith(
          CentrosMaisDoacoes value, $Res Function(CentrosMaisDoacoes) then) =
      _$CentrosMaisDoacoesCopyWithImpl<$Res, CentrosMaisDoacoes>;
  @useResult
  $Res call(
      {String nomeLocal, String endereco, int qtdRegistros, String qtdMls});
}

/// @nodoc
class _$CentrosMaisDoacoesCopyWithImpl<$Res, $Val extends CentrosMaisDoacoes>
    implements $CentrosMaisDoacoesCopyWith<$Res> {
  _$CentrosMaisDoacoesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CentrosMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomeLocal = null,
    Object? endereco = null,
    Object? qtdRegistros = null,
    Object? qtdMls = null,
  }) {
    return _then(_value.copyWith(
      nomeLocal: null == nomeLocal
          ? _value.nomeLocal
          : nomeLocal // ignore: cast_nullable_to_non_nullable
              as String,
      endereco: null == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as String,
      qtdRegistros: null == qtdRegistros
          ? _value.qtdRegistros
          : qtdRegistros // ignore: cast_nullable_to_non_nullable
              as int,
      qtdMls: null == qtdMls
          ? _value.qtdMls
          : qtdMls // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CentrosMaisDoacoesImplCopyWith<$Res>
    implements $CentrosMaisDoacoesCopyWith<$Res> {
  factory _$$CentrosMaisDoacoesImplCopyWith(_$CentrosMaisDoacoesImpl value,
          $Res Function(_$CentrosMaisDoacoesImpl) then) =
      __$$CentrosMaisDoacoesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nomeLocal, String endereco, int qtdRegistros, String qtdMls});
}

/// @nodoc
class __$$CentrosMaisDoacoesImplCopyWithImpl<$Res>
    extends _$CentrosMaisDoacoesCopyWithImpl<$Res, _$CentrosMaisDoacoesImpl>
    implements _$$CentrosMaisDoacoesImplCopyWith<$Res> {
  __$$CentrosMaisDoacoesImplCopyWithImpl(_$CentrosMaisDoacoesImpl _value,
      $Res Function(_$CentrosMaisDoacoesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CentrosMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomeLocal = null,
    Object? endereco = null,
    Object? qtdRegistros = null,
    Object? qtdMls = null,
  }) {
    return _then(_$CentrosMaisDoacoesImpl(
      nomeLocal: null == nomeLocal
          ? _value.nomeLocal
          : nomeLocal // ignore: cast_nullable_to_non_nullable
              as String,
      endereco: null == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as String,
      qtdRegistros: null == qtdRegistros
          ? _value.qtdRegistros
          : qtdRegistros // ignore: cast_nullable_to_non_nullable
              as int,
      qtdMls: null == qtdMls
          ? _value.qtdMls
          : qtdMls // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CentrosMaisDoacoesImpl implements _CentrosMaisDoacoes {
  const _$CentrosMaisDoacoesImpl(
      {required this.nomeLocal,
      required this.endereco,
      required this.qtdRegistros,
      required this.qtdMls});

  factory _$CentrosMaisDoacoesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CentrosMaisDoacoesImplFromJson(json);

  @override
  final String nomeLocal;
  @override
  final String endereco;
  @override
  final int qtdRegistros;
  @override
  final String qtdMls;

  @override
  String toString() {
    return 'CentrosMaisDoacoes(nomeLocal: $nomeLocal, endereco: $endereco, qtdRegistros: $qtdRegistros, qtdMls: $qtdMls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CentrosMaisDoacoesImpl &&
            (identical(other.nomeLocal, nomeLocal) ||
                other.nomeLocal == nomeLocal) &&
            (identical(other.endereco, endereco) ||
                other.endereco == endereco) &&
            (identical(other.qtdRegistros, qtdRegistros) ||
                other.qtdRegistros == qtdRegistros) &&
            (identical(other.qtdMls, qtdMls) || other.qtdMls == qtdMls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nomeLocal, endereco, qtdRegistros, qtdMls);

  /// Create a copy of CentrosMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CentrosMaisDoacoesImplCopyWith<_$CentrosMaisDoacoesImpl> get copyWith =>
      __$$CentrosMaisDoacoesImplCopyWithImpl<_$CentrosMaisDoacoesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CentrosMaisDoacoesImplToJson(
      this,
    );
  }
}

abstract class _CentrosMaisDoacoes implements CentrosMaisDoacoes {
  const factory _CentrosMaisDoacoes(
      {required final String nomeLocal,
      required final String endereco,
      required final int qtdRegistros,
      required final String qtdMls}) = _$CentrosMaisDoacoesImpl;

  factory _CentrosMaisDoacoes.fromJson(Map<String, dynamic> json) =
      _$CentrosMaisDoacoesImpl.fromJson;

  @override
  String get nomeLocal;
  @override
  String get endereco;
  @override
  int get qtdRegistros;
  @override
  String get qtdMls;

  /// Create a copy of CentrosMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CentrosMaisDoacoesImplCopyWith<_$CentrosMaisDoacoesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

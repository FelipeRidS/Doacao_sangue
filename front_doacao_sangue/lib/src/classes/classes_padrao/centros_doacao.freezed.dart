// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'centros_doacao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CentrosDeDoacao _$CentrosDeDoacaoFromJson(Map<String, dynamic> json) {
  return _CentrosDeDoacao.fromJson(json);
}

/// @nodoc
mixin _$CentrosDeDoacao {
  int get codCentroDoacao => throw _privateConstructorUsedError;
  String get nomeLocal => throw _privateConstructorUsedError;
  String get endereco => throw _privateConstructorUsedError;

  /// Serializes this CentrosDeDoacao to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CentrosDeDoacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CentrosDeDoacaoCopyWith<CentrosDeDoacao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CentrosDeDoacaoCopyWith<$Res> {
  factory $CentrosDeDoacaoCopyWith(
          CentrosDeDoacao value, $Res Function(CentrosDeDoacao) then) =
      _$CentrosDeDoacaoCopyWithImpl<$Res, CentrosDeDoacao>;
  @useResult
  $Res call({int codCentroDoacao, String nomeLocal, String endereco});
}

/// @nodoc
class _$CentrosDeDoacaoCopyWithImpl<$Res, $Val extends CentrosDeDoacao>
    implements $CentrosDeDoacaoCopyWith<$Res> {
  _$CentrosDeDoacaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CentrosDeDoacao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codCentroDoacao = null,
    Object? nomeLocal = null,
    Object? endereco = null,
  }) {
    return _then(_value.copyWith(
      codCentroDoacao: null == codCentroDoacao
          ? _value.codCentroDoacao
          : codCentroDoacao // ignore: cast_nullable_to_non_nullable
              as int,
      nomeLocal: null == nomeLocal
          ? _value.nomeLocal
          : nomeLocal // ignore: cast_nullable_to_non_nullable
              as String,
      endereco: null == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CentrosDeDoacaoImplCopyWith<$Res>
    implements $CentrosDeDoacaoCopyWith<$Res> {
  factory _$$CentrosDeDoacaoImplCopyWith(_$CentrosDeDoacaoImpl value,
          $Res Function(_$CentrosDeDoacaoImpl) then) =
      __$$CentrosDeDoacaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int codCentroDoacao, String nomeLocal, String endereco});
}

/// @nodoc
class __$$CentrosDeDoacaoImplCopyWithImpl<$Res>
    extends _$CentrosDeDoacaoCopyWithImpl<$Res, _$CentrosDeDoacaoImpl>
    implements _$$CentrosDeDoacaoImplCopyWith<$Res> {
  __$$CentrosDeDoacaoImplCopyWithImpl(
      _$CentrosDeDoacaoImpl _value, $Res Function(_$CentrosDeDoacaoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CentrosDeDoacao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codCentroDoacao = null,
    Object? nomeLocal = null,
    Object? endereco = null,
  }) {
    return _then(_$CentrosDeDoacaoImpl(
      codCentroDoacao: null == codCentroDoacao
          ? _value.codCentroDoacao
          : codCentroDoacao // ignore: cast_nullable_to_non_nullable
              as int,
      nomeLocal: null == nomeLocal
          ? _value.nomeLocal
          : nomeLocal // ignore: cast_nullable_to_non_nullable
              as String,
      endereco: null == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CentrosDeDoacaoImpl implements _CentrosDeDoacao {
  const _$CentrosDeDoacaoImpl(
      {required this.codCentroDoacao,
      required this.nomeLocal,
      required this.endereco});

  factory _$CentrosDeDoacaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CentrosDeDoacaoImplFromJson(json);

  @override
  final int codCentroDoacao;
  @override
  final String nomeLocal;
  @override
  final String endereco;

  @override
  String toString() {
    return 'CentrosDeDoacao(codCentroDoacao: $codCentroDoacao, nomeLocal: $nomeLocal, endereco: $endereco)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CentrosDeDoacaoImpl &&
            (identical(other.codCentroDoacao, codCentroDoacao) ||
                other.codCentroDoacao == codCentroDoacao) &&
            (identical(other.nomeLocal, nomeLocal) ||
                other.nomeLocal == nomeLocal) &&
            (identical(other.endereco, endereco) ||
                other.endereco == endereco));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codCentroDoacao, nomeLocal, endereco);

  /// Create a copy of CentrosDeDoacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CentrosDeDoacaoImplCopyWith<_$CentrosDeDoacaoImpl> get copyWith =>
      __$$CentrosDeDoacaoImplCopyWithImpl<_$CentrosDeDoacaoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CentrosDeDoacaoImplToJson(
      this,
    );
  }
}

abstract class _CentrosDeDoacao implements CentrosDeDoacao {
  const factory _CentrosDeDoacao(
      {required final int codCentroDoacao,
      required final String nomeLocal,
      required final String endereco}) = _$CentrosDeDoacaoImpl;

  factory _CentrosDeDoacao.fromJson(Map<String, dynamic> json) =
      _$CentrosDeDoacaoImpl.fromJson;

  @override
  int get codCentroDoacao;
  @override
  String get nomeLocal;
  @override
  String get endereco;

  /// Create a copy of CentrosDeDoacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CentrosDeDoacaoImplCopyWith<_$CentrosDeDoacaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

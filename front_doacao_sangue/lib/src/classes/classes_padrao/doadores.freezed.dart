// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doadores.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Doadores _$DoadoresFromJson(Map<String, dynamic> json) {
  return _Doadores.fromJson(json);
}

/// @nodoc
mixin _$Doadores {
  int get codDoador => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get sobrenome => throw _privateConstructorUsedError;
  String? get cpf => throw _privateConstructorUsedError;
  String get telefone => throw _privateConstructorUsedError;
  int get codTipoSanguineo => throw _privateConstructorUsedError;
  String get endereco => throw _privateConstructorUsedError;

  /// Serializes this Doadores to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Doadores
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoadoresCopyWith<Doadores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoadoresCopyWith<$Res> {
  factory $DoadoresCopyWith(Doadores value, $Res Function(Doadores) then) =
      _$DoadoresCopyWithImpl<$Res, Doadores>;
  @useResult
  $Res call(
      {int codDoador,
      String nome,
      String sobrenome,
      String? cpf,
      String telefone,
      int codTipoSanguineo,
      String endereco});
}

/// @nodoc
class _$DoadoresCopyWithImpl<$Res, $Val extends Doadores>
    implements $DoadoresCopyWith<$Res> {
  _$DoadoresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Doadores
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codDoador = null,
    Object? nome = null,
    Object? sobrenome = null,
    Object? cpf = freezed,
    Object? telefone = null,
    Object? codTipoSanguineo = null,
    Object? endereco = null,
  }) {
    return _then(_value.copyWith(
      codDoador: null == codDoador
          ? _value.codDoador
          : codDoador // ignore: cast_nullable_to_non_nullable
              as int,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      sobrenome: null == sobrenome
          ? _value.sobrenome
          : sobrenome // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: freezed == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: null == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String,
      codTipoSanguineo: null == codTipoSanguineo
          ? _value.codTipoSanguineo
          : codTipoSanguineo // ignore: cast_nullable_to_non_nullable
              as int,
      endereco: null == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoadoresImplCopyWith<$Res>
    implements $DoadoresCopyWith<$Res> {
  factory _$$DoadoresImplCopyWith(
          _$DoadoresImpl value, $Res Function(_$DoadoresImpl) then) =
      __$$DoadoresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int codDoador,
      String nome,
      String sobrenome,
      String? cpf,
      String telefone,
      int codTipoSanguineo,
      String endereco});
}

/// @nodoc
class __$$DoadoresImplCopyWithImpl<$Res>
    extends _$DoadoresCopyWithImpl<$Res, _$DoadoresImpl>
    implements _$$DoadoresImplCopyWith<$Res> {
  __$$DoadoresImplCopyWithImpl(
      _$DoadoresImpl _value, $Res Function(_$DoadoresImpl) _then)
      : super(_value, _then);

  /// Create a copy of Doadores
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codDoador = null,
    Object? nome = null,
    Object? sobrenome = null,
    Object? cpf = freezed,
    Object? telefone = null,
    Object? codTipoSanguineo = null,
    Object? endereco = null,
  }) {
    return _then(_$DoadoresImpl(
      codDoador: null == codDoador
          ? _value.codDoador
          : codDoador // ignore: cast_nullable_to_non_nullable
              as int,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      sobrenome: null == sobrenome
          ? _value.sobrenome
          : sobrenome // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: freezed == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: null == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String,
      codTipoSanguineo: null == codTipoSanguineo
          ? _value.codTipoSanguineo
          : codTipoSanguineo // ignore: cast_nullable_to_non_nullable
              as int,
      endereco: null == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoadoresImpl implements _Doadores {
  const _$DoadoresImpl(
      {required this.codDoador,
      required this.nome,
      required this.sobrenome,
      required this.cpf,
      required this.telefone,
      required this.codTipoSanguineo,
      required this.endereco});

  factory _$DoadoresImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoadoresImplFromJson(json);

  @override
  final int codDoador;
  @override
  final String nome;
  @override
  final String sobrenome;
  @override
  final String? cpf;
  @override
  final String telefone;
  @override
  final int codTipoSanguineo;
  @override
  final String endereco;

  @override
  String toString() {
    return 'Doadores(codDoador: $codDoador, nome: $nome, sobrenome: $sobrenome, cpf: $cpf, telefone: $telefone, codTipoSanguineo: $codTipoSanguineo, endereco: $endereco)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoadoresImpl &&
            (identical(other.codDoador, codDoador) ||
                other.codDoador == codDoador) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.sobrenome, sobrenome) ||
                other.sobrenome == sobrenome) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.telefone, telefone) ||
                other.telefone == telefone) &&
            (identical(other.codTipoSanguineo, codTipoSanguineo) ||
                other.codTipoSanguineo == codTipoSanguineo) &&
            (identical(other.endereco, endereco) ||
                other.endereco == endereco));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, codDoador, nome, sobrenome, cpf,
      telefone, codTipoSanguineo, endereco);

  /// Create a copy of Doadores
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoadoresImplCopyWith<_$DoadoresImpl> get copyWith =>
      __$$DoadoresImplCopyWithImpl<_$DoadoresImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoadoresImplToJson(
      this,
    );
  }
}

abstract class _Doadores implements Doadores {
  const factory _Doadores(
      {required final int codDoador,
      required final String nome,
      required final String sobrenome,
      required final String? cpf,
      required final String telefone,
      required final int codTipoSanguineo,
      required final String endereco}) = _$DoadoresImpl;

  factory _Doadores.fromJson(Map<String, dynamic> json) =
      _$DoadoresImpl.fromJson;

  @override
  int get codDoador;
  @override
  String get nome;
  @override
  String get sobrenome;
  @override
  String? get cpf;
  @override
  String get telefone;
  @override
  int get codTipoSanguineo;
  @override
  String get endereco;

  /// Create a copy of Doadores
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoadoresImplCopyWith<_$DoadoresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

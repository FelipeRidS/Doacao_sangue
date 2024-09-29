// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'funcionarios.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Funcionarios _$FuncionariosFromJson(Map<String, dynamic> json) {
  return _Funcionarios.fromJson(json);
}

/// @nodoc
mixin _$Funcionarios {
  int get codFuncionario => throw _privateConstructorUsedError;
  String get cpf => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get profissao => throw _privateConstructorUsedError;

  /// Serializes this Funcionarios to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Funcionarios
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FuncionariosCopyWith<Funcionarios> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FuncionariosCopyWith<$Res> {
  factory $FuncionariosCopyWith(
          Funcionarios value, $Res Function(Funcionarios) then) =
      _$FuncionariosCopyWithImpl<$Res, Funcionarios>;
  @useResult
  $Res call(
      {int codFuncionario,
      String cpf,
      String email,
      String nome,
      String profissao});
}

/// @nodoc
class _$FuncionariosCopyWithImpl<$Res, $Val extends Funcionarios>
    implements $FuncionariosCopyWith<$Res> {
  _$FuncionariosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Funcionarios
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codFuncionario = null,
    Object? cpf = null,
    Object? email = null,
    Object? nome = null,
    Object? profissao = null,
  }) {
    return _then(_value.copyWith(
      codFuncionario: null == codFuncionario
          ? _value.codFuncionario
          : codFuncionario // ignore: cast_nullable_to_non_nullable
              as int,
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      profissao: null == profissao
          ? _value.profissao
          : profissao // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FuncionariosImplCopyWith<$Res>
    implements $FuncionariosCopyWith<$Res> {
  factory _$$FuncionariosImplCopyWith(
          _$FuncionariosImpl value, $Res Function(_$FuncionariosImpl) then) =
      __$$FuncionariosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int codFuncionario,
      String cpf,
      String email,
      String nome,
      String profissao});
}

/// @nodoc
class __$$FuncionariosImplCopyWithImpl<$Res>
    extends _$FuncionariosCopyWithImpl<$Res, _$FuncionariosImpl>
    implements _$$FuncionariosImplCopyWith<$Res> {
  __$$FuncionariosImplCopyWithImpl(
      _$FuncionariosImpl _value, $Res Function(_$FuncionariosImpl) _then)
      : super(_value, _then);

  /// Create a copy of Funcionarios
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codFuncionario = null,
    Object? cpf = null,
    Object? email = null,
    Object? nome = null,
    Object? profissao = null,
  }) {
    return _then(_$FuncionariosImpl(
      codFuncionario: null == codFuncionario
          ? _value.codFuncionario
          : codFuncionario // ignore: cast_nullable_to_non_nullable
              as int,
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      profissao: null == profissao
          ? _value.profissao
          : profissao // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FuncionariosImpl implements _Funcionarios {
  const _$FuncionariosImpl(
      {required this.codFuncionario,
      required this.cpf,
      required this.email,
      required this.nome,
      required this.profissao});

  factory _$FuncionariosImpl.fromJson(Map<String, dynamic> json) =>
      _$$FuncionariosImplFromJson(json);

  @override
  final int codFuncionario;
  @override
  final String cpf;
  @override
  final String email;
  @override
  final String nome;
  @override
  final String profissao;

  @override
  String toString() {
    return 'Funcionarios(codFuncionario: $codFuncionario, cpf: $cpf, email: $email, nome: $nome, profissao: $profissao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FuncionariosImpl &&
            (identical(other.codFuncionario, codFuncionario) ||
                other.codFuncionario == codFuncionario) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.profissao, profissao) ||
                other.profissao == profissao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codFuncionario, cpf, email, nome, profissao);

  /// Create a copy of Funcionarios
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FuncionariosImplCopyWith<_$FuncionariosImpl> get copyWith =>
      __$$FuncionariosImplCopyWithImpl<_$FuncionariosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FuncionariosImplToJson(
      this,
    );
  }
}

abstract class _Funcionarios implements Funcionarios {
  const factory _Funcionarios(
      {required final int codFuncionario,
      required final String cpf,
      required final String email,
      required final String nome,
      required final String profissao}) = _$FuncionariosImpl;

  factory _Funcionarios.fromJson(Map<String, dynamic> json) =
      _$FuncionariosImpl.fromJson;

  @override
  int get codFuncionario;
  @override
  String get cpf;
  @override
  String get email;
  @override
  String get nome;
  @override
  String get profissao;

  /// Create a copy of Funcionarios
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FuncionariosImplCopyWith<_$FuncionariosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

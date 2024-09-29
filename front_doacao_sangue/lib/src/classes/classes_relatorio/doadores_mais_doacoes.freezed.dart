// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doadores_mais_doacoes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoadoresMaisDoacoes _$DoadoresMaisDoacoesFromJson(Map<String, dynamic> json) {
  return _DoadoresMaisDoacoes.fromJson(json);
}

/// @nodoc
mixin _$DoadoresMaisDoacoes {
  String get nome => throw _privateConstructorUsedError;
  String get sobrenome => throw _privateConstructorUsedError;
  int get qtdRegistros => throw _privateConstructorUsedError;
  String get qtdMls => throw _privateConstructorUsedError;

  /// Serializes this DoadoresMaisDoacoes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoadoresMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoadoresMaisDoacoesCopyWith<DoadoresMaisDoacoes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoadoresMaisDoacoesCopyWith<$Res> {
  factory $DoadoresMaisDoacoesCopyWith(
          DoadoresMaisDoacoes value, $Res Function(DoadoresMaisDoacoes) then) =
      _$DoadoresMaisDoacoesCopyWithImpl<$Res, DoadoresMaisDoacoes>;
  @useResult
  $Res call({String nome, String sobrenome, int qtdRegistros, String qtdMls});
}

/// @nodoc
class _$DoadoresMaisDoacoesCopyWithImpl<$Res, $Val extends DoadoresMaisDoacoes>
    implements $DoadoresMaisDoacoesCopyWith<$Res> {
  _$DoadoresMaisDoacoesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoadoresMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
    Object? sobrenome = null,
    Object? qtdRegistros = null,
    Object? qtdMls = null,
  }) {
    return _then(_value.copyWith(
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      sobrenome: null == sobrenome
          ? _value.sobrenome
          : sobrenome // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DoadoresMaisDoacoesImplCopyWith<$Res>
    implements $DoadoresMaisDoacoesCopyWith<$Res> {
  factory _$$DoadoresMaisDoacoesImplCopyWith(_$DoadoresMaisDoacoesImpl value,
          $Res Function(_$DoadoresMaisDoacoesImpl) then) =
      __$$DoadoresMaisDoacoesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nome, String sobrenome, int qtdRegistros, String qtdMls});
}

/// @nodoc
class __$$DoadoresMaisDoacoesImplCopyWithImpl<$Res>
    extends _$DoadoresMaisDoacoesCopyWithImpl<$Res, _$DoadoresMaisDoacoesImpl>
    implements _$$DoadoresMaisDoacoesImplCopyWith<$Res> {
  __$$DoadoresMaisDoacoesImplCopyWithImpl(_$DoadoresMaisDoacoesImpl _value,
      $Res Function(_$DoadoresMaisDoacoesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoadoresMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
    Object? sobrenome = null,
    Object? qtdRegistros = null,
    Object? qtdMls = null,
  }) {
    return _then(_$DoadoresMaisDoacoesImpl(
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      sobrenome: null == sobrenome
          ? _value.sobrenome
          : sobrenome // ignore: cast_nullable_to_non_nullable
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
class _$DoadoresMaisDoacoesImpl implements _DoadoresMaisDoacoes {
  const _$DoadoresMaisDoacoesImpl(
      {required this.nome,
      required this.sobrenome,
      required this.qtdRegistros,
      required this.qtdMls});

  factory _$DoadoresMaisDoacoesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoadoresMaisDoacoesImplFromJson(json);

  @override
  final String nome;
  @override
  final String sobrenome;
  @override
  final int qtdRegistros;
  @override
  final String qtdMls;

  @override
  String toString() {
    return 'DoadoresMaisDoacoes(nome: $nome, sobrenome: $sobrenome, qtdRegistros: $qtdRegistros, qtdMls: $qtdMls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoadoresMaisDoacoesImpl &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.sobrenome, sobrenome) ||
                other.sobrenome == sobrenome) &&
            (identical(other.qtdRegistros, qtdRegistros) ||
                other.qtdRegistros == qtdRegistros) &&
            (identical(other.qtdMls, qtdMls) || other.qtdMls == qtdMls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nome, sobrenome, qtdRegistros, qtdMls);

  /// Create a copy of DoadoresMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoadoresMaisDoacoesImplCopyWith<_$DoadoresMaisDoacoesImpl> get copyWith =>
      __$$DoadoresMaisDoacoesImplCopyWithImpl<_$DoadoresMaisDoacoesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoadoresMaisDoacoesImplToJson(
      this,
    );
  }
}

abstract class _DoadoresMaisDoacoes implements DoadoresMaisDoacoes {
  const factory _DoadoresMaisDoacoes(
      {required final String nome,
      required final String sobrenome,
      required final int qtdRegistros,
      required final String qtdMls}) = _$DoadoresMaisDoacoesImpl;

  factory _DoadoresMaisDoacoes.fromJson(Map<String, dynamic> json) =
      _$DoadoresMaisDoacoesImpl.fromJson;

  @override
  String get nome;
  @override
  String get sobrenome;
  @override
  int get qtdRegistros;
  @override
  String get qtdMls;

  /// Create a copy of DoadoresMaisDoacoes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoadoresMaisDoacoesImplCopyWith<_$DoadoresMaisDoacoesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

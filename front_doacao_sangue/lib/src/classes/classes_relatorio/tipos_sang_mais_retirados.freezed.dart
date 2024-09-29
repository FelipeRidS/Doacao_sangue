// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipos_sang_mais_retirados.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TiposSangMaisRetirados _$TiposSangMaisRetiradosFromJson(
    Map<String, dynamic> json) {
  return _TiposSangMaisRetirados.fromJson(json);
}

/// @nodoc
mixin _$TiposSangMaisRetirados {
  String get nomeTipoSang => throw _privateConstructorUsedError;
  int get totalDisponivel => throw _privateConstructorUsedError;
  int get qtdRegistros => throw _privateConstructorUsedError;
  String get qtdMls => throw _privateConstructorUsedError;

  /// Serializes this TiposSangMaisRetirados to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TiposSangMaisRetirados
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TiposSangMaisRetiradosCopyWith<TiposSangMaisRetirados> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiposSangMaisRetiradosCopyWith<$Res> {
  factory $TiposSangMaisRetiradosCopyWith(TiposSangMaisRetirados value,
          $Res Function(TiposSangMaisRetirados) then) =
      _$TiposSangMaisRetiradosCopyWithImpl<$Res, TiposSangMaisRetirados>;
  @useResult
  $Res call(
      {String nomeTipoSang,
      int totalDisponivel,
      int qtdRegistros,
      String qtdMls});
}

/// @nodoc
class _$TiposSangMaisRetiradosCopyWithImpl<$Res,
        $Val extends TiposSangMaisRetirados>
    implements $TiposSangMaisRetiradosCopyWith<$Res> {
  _$TiposSangMaisRetiradosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TiposSangMaisRetirados
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomeTipoSang = null,
    Object? totalDisponivel = null,
    Object? qtdRegistros = null,
    Object? qtdMls = null,
  }) {
    return _then(_value.copyWith(
      nomeTipoSang: null == nomeTipoSang
          ? _value.nomeTipoSang
          : nomeTipoSang // ignore: cast_nullable_to_non_nullable
              as String,
      totalDisponivel: null == totalDisponivel
          ? _value.totalDisponivel
          : totalDisponivel // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$TiposSangMaisRetiradosImplCopyWith<$Res>
    implements $TiposSangMaisRetiradosCopyWith<$Res> {
  factory _$$TiposSangMaisRetiradosImplCopyWith(
          _$TiposSangMaisRetiradosImpl value,
          $Res Function(_$TiposSangMaisRetiradosImpl) then) =
      __$$TiposSangMaisRetiradosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nomeTipoSang,
      int totalDisponivel,
      int qtdRegistros,
      String qtdMls});
}

/// @nodoc
class __$$TiposSangMaisRetiradosImplCopyWithImpl<$Res>
    extends _$TiposSangMaisRetiradosCopyWithImpl<$Res,
        _$TiposSangMaisRetiradosImpl>
    implements _$$TiposSangMaisRetiradosImplCopyWith<$Res> {
  __$$TiposSangMaisRetiradosImplCopyWithImpl(
      _$TiposSangMaisRetiradosImpl _value,
      $Res Function(_$TiposSangMaisRetiradosImpl) _then)
      : super(_value, _then);

  /// Create a copy of TiposSangMaisRetirados
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomeTipoSang = null,
    Object? totalDisponivel = null,
    Object? qtdRegistros = null,
    Object? qtdMls = null,
  }) {
    return _then(_$TiposSangMaisRetiradosImpl(
      nomeTipoSang: null == nomeTipoSang
          ? _value.nomeTipoSang
          : nomeTipoSang // ignore: cast_nullable_to_non_nullable
              as String,
      totalDisponivel: null == totalDisponivel
          ? _value.totalDisponivel
          : totalDisponivel // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$TiposSangMaisRetiradosImpl implements _TiposSangMaisRetirados {
  const _$TiposSangMaisRetiradosImpl(
      {required this.nomeTipoSang,
      required this.totalDisponivel,
      required this.qtdRegistros,
      required this.qtdMls});

  factory _$TiposSangMaisRetiradosImpl.fromJson(Map<String, dynamic> json) =>
      _$$TiposSangMaisRetiradosImplFromJson(json);

  @override
  final String nomeTipoSang;
  @override
  final int totalDisponivel;
  @override
  final int qtdRegistros;
  @override
  final String qtdMls;

  @override
  String toString() {
    return 'TiposSangMaisRetirados(nomeTipoSang: $nomeTipoSang, totalDisponivel: $totalDisponivel, qtdRegistros: $qtdRegistros, qtdMls: $qtdMls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TiposSangMaisRetiradosImpl &&
            (identical(other.nomeTipoSang, nomeTipoSang) ||
                other.nomeTipoSang == nomeTipoSang) &&
            (identical(other.totalDisponivel, totalDisponivel) ||
                other.totalDisponivel == totalDisponivel) &&
            (identical(other.qtdRegistros, qtdRegistros) ||
                other.qtdRegistros == qtdRegistros) &&
            (identical(other.qtdMls, qtdMls) || other.qtdMls == qtdMls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, nomeTipoSang, totalDisponivel, qtdRegistros, qtdMls);

  /// Create a copy of TiposSangMaisRetirados
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TiposSangMaisRetiradosImplCopyWith<_$TiposSangMaisRetiradosImpl>
      get copyWith => __$$TiposSangMaisRetiradosImplCopyWithImpl<
          _$TiposSangMaisRetiradosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TiposSangMaisRetiradosImplToJson(
      this,
    );
  }
}

abstract class _TiposSangMaisRetirados implements TiposSangMaisRetirados {
  const factory _TiposSangMaisRetirados(
      {required final String nomeTipoSang,
      required final int totalDisponivel,
      required final int qtdRegistros,
      required final String qtdMls}) = _$TiposSangMaisRetiradosImpl;

  factory _TiposSangMaisRetirados.fromJson(Map<String, dynamic> json) =
      _$TiposSangMaisRetiradosImpl.fromJson;

  @override
  String get nomeTipoSang;
  @override
  int get totalDisponivel;
  @override
  int get qtdRegistros;
  @override
  String get qtdMls;

  /// Create a copy of TiposSangMaisRetirados
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TiposSangMaisRetiradosImplCopyWith<_$TiposSangMaisRetiradosImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipos_sanguineos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TiposSanguineos _$TiposSanguineosFromJson(Map<String, dynamic> json) {
  return _TiposSanguineos.fromJson(json);
}

/// @nodoc
mixin _$TiposSanguineos {
  int get codTipoSanguineo => throw _privateConstructorUsedError;
  String get nomeTipoSang => throw _privateConstructorUsedError;
  int get totalDisponivel => throw _privateConstructorUsedError;

  /// Serializes this TiposSanguineos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TiposSanguineos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TiposSanguineosCopyWith<TiposSanguineos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiposSanguineosCopyWith<$Res> {
  factory $TiposSanguineosCopyWith(
          TiposSanguineos value, $Res Function(TiposSanguineos) then) =
      _$TiposSanguineosCopyWithImpl<$Res, TiposSanguineos>;
  @useResult
  $Res call({int codTipoSanguineo, String nomeTipoSang, int totalDisponivel});
}

/// @nodoc
class _$TiposSanguineosCopyWithImpl<$Res, $Val extends TiposSanguineos>
    implements $TiposSanguineosCopyWith<$Res> {
  _$TiposSanguineosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TiposSanguineos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codTipoSanguineo = null,
    Object? nomeTipoSang = null,
    Object? totalDisponivel = null,
  }) {
    return _then(_value.copyWith(
      codTipoSanguineo: null == codTipoSanguineo
          ? _value.codTipoSanguineo
          : codTipoSanguineo // ignore: cast_nullable_to_non_nullable
              as int,
      nomeTipoSang: null == nomeTipoSang
          ? _value.nomeTipoSang
          : nomeTipoSang // ignore: cast_nullable_to_non_nullable
              as String,
      totalDisponivel: null == totalDisponivel
          ? _value.totalDisponivel
          : totalDisponivel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TiposSanguineosImplCopyWith<$Res>
    implements $TiposSanguineosCopyWith<$Res> {
  factory _$$TiposSanguineosImplCopyWith(_$TiposSanguineosImpl value,
          $Res Function(_$TiposSanguineosImpl) then) =
      __$$TiposSanguineosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int codTipoSanguineo, String nomeTipoSang, int totalDisponivel});
}

/// @nodoc
class __$$TiposSanguineosImplCopyWithImpl<$Res>
    extends _$TiposSanguineosCopyWithImpl<$Res, _$TiposSanguineosImpl>
    implements _$$TiposSanguineosImplCopyWith<$Res> {
  __$$TiposSanguineosImplCopyWithImpl(
      _$TiposSanguineosImpl _value, $Res Function(_$TiposSanguineosImpl) _then)
      : super(_value, _then);

  /// Create a copy of TiposSanguineos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codTipoSanguineo = null,
    Object? nomeTipoSang = null,
    Object? totalDisponivel = null,
  }) {
    return _then(_$TiposSanguineosImpl(
      codTipoSanguineo: null == codTipoSanguineo
          ? _value.codTipoSanguineo
          : codTipoSanguineo // ignore: cast_nullable_to_non_nullable
              as int,
      nomeTipoSang: null == nomeTipoSang
          ? _value.nomeTipoSang
          : nomeTipoSang // ignore: cast_nullable_to_non_nullable
              as String,
      totalDisponivel: null == totalDisponivel
          ? _value.totalDisponivel
          : totalDisponivel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TiposSanguineosImpl implements _TiposSanguineos {
  const _$TiposSanguineosImpl(
      {required this.codTipoSanguineo,
      required this.nomeTipoSang,
      required this.totalDisponivel});

  factory _$TiposSanguineosImpl.fromJson(Map<String, dynamic> json) =>
      _$$TiposSanguineosImplFromJson(json);

  @override
  final int codTipoSanguineo;
  @override
  final String nomeTipoSang;
  @override
  final int totalDisponivel;

  @override
  String toString() {
    return 'TiposSanguineos(codTipoSanguineo: $codTipoSanguineo, nomeTipoSang: $nomeTipoSang, totalDisponivel: $totalDisponivel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TiposSanguineosImpl &&
            (identical(other.codTipoSanguineo, codTipoSanguineo) ||
                other.codTipoSanguineo == codTipoSanguineo) &&
            (identical(other.nomeTipoSang, nomeTipoSang) ||
                other.nomeTipoSang == nomeTipoSang) &&
            (identical(other.totalDisponivel, totalDisponivel) ||
                other.totalDisponivel == totalDisponivel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codTipoSanguineo, nomeTipoSang, totalDisponivel);

  /// Create a copy of TiposSanguineos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TiposSanguineosImplCopyWith<_$TiposSanguineosImpl> get copyWith =>
      __$$TiposSanguineosImplCopyWithImpl<_$TiposSanguineosImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TiposSanguineosImplToJson(
      this,
    );
  }
}

abstract class _TiposSanguineos implements TiposSanguineos {
  const factory _TiposSanguineos(
      {required final int codTipoSanguineo,
      required final String nomeTipoSang,
      required final int totalDisponivel}) = _$TiposSanguineosImpl;

  factory _TiposSanguineos.fromJson(Map<String, dynamic> json) =
      _$TiposSanguineosImpl.fromJson;

  @override
  int get codTipoSanguineo;
  @override
  String get nomeTipoSang;
  @override
  int get totalDisponivel;

  /// Create a copy of TiposSanguineos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TiposSanguineosImplCopyWith<_$TiposSanguineosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

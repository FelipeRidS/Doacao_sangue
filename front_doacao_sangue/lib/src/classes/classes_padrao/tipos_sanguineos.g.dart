// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipos_sanguineos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TiposSanguineosImpl _$$TiposSanguineosImplFromJson(
        Map<String, dynamic> json) =>
    _$TiposSanguineosImpl(
      codTipoSanguineo: (json['codTipoSanguineo'] as num).toInt(),
      nomeTipoSang: json['nomeTipoSang'] as String,
      totalDisponivel: (json['totalDisponivel'] as num).toInt(),
    );

Map<String, dynamic> _$$TiposSanguineosImplToJson(
        _$TiposSanguineosImpl instance) =>
    <String, dynamic>{
      'codTipoSanguineo': instance.codTipoSanguineo,
      'nomeTipoSang': instance.nomeTipoSang,
      'totalDisponivel': instance.totalDisponivel,
    };

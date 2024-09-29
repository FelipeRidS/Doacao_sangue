// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipos_sang_mais_retirados.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TiposSangMaisRetiradosImpl _$$TiposSangMaisRetiradosImplFromJson(
        Map<String, dynamic> json) =>
    _$TiposSangMaisRetiradosImpl(
      nomeTipoSang: json['nomeTipoSang'] as String,
      totalDisponivel: (json['totalDisponivel'] as num).toInt(),
      qtdRegistros: (json['qtdRegistros'] as num).toInt(),
      qtdMls: json['qtdMls'] as String,
    );

Map<String, dynamic> _$$TiposSangMaisRetiradosImplToJson(
        _$TiposSangMaisRetiradosImpl instance) =>
    <String, dynamic>{
      'nomeTipoSang': instance.nomeTipoSang,
      'totalDisponivel': instance.totalDisponivel,
      'qtdRegistros': instance.qtdRegistros,
      'qtdMls': instance.qtdMls,
    };

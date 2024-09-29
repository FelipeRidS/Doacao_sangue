// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doacoes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoacoesImpl _$$DoacoesImplFromJson(Map<String, dynamic> json) =>
    _$DoacoesImpl(
      codDoacao: (json['codDoacao'] as num).toInt(),
      codDoador: (json['codDoador'] as num).toInt(),
      codFuncionario: (json['codFuncionario'] as num).toInt(),
      codCentroDoacao: (json['codCentroDoacao'] as num).toInt(),
      data: json['data'] as String,
      mlSangue: (json['mlSangue'] as num).toInt(),
    );

Map<String, dynamic> _$$DoacoesImplToJson(_$DoacoesImpl instance) =>
    <String, dynamic>{
      'codDoacao': instance.codDoacao,
      'codDoador': instance.codDoador,
      'codFuncionario': instance.codFuncionario,
      'codCentroDoacao': instance.codCentroDoacao,
      'data': instance.data,
      'mlSangue': instance.mlSangue,
    };

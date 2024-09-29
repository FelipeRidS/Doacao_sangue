// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doadores_mais_doacoes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoadoresMaisDoacoesImpl _$$DoadoresMaisDoacoesImplFromJson(
        Map<String, dynamic> json) =>
    _$DoadoresMaisDoacoesImpl(
      nome: json['nome'] as String,
      sobrenome: json['sobrenome'] as String,
      qtdRegistros: (json['qtdRegistros'] as num).toInt(),
      qtdMls: json['qtdMls'] as String,
    );

Map<String, dynamic> _$$DoadoresMaisDoacoesImplToJson(
        _$DoadoresMaisDoacoesImpl instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'sobrenome': instance.sobrenome,
      'qtdRegistros': instance.qtdRegistros,
      'qtdMls': instance.qtdMls,
    };

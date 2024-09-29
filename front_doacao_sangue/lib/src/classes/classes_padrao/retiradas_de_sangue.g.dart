// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retiradas_de_sangue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetiradasDeSangueImpl _$$RetiradasDeSangueImplFromJson(
        Map<String, dynamic> json) =>
    _$RetiradasDeSangueImpl(
      codRetiradaSangue: (json['codRetiradaSangue'] as num).toInt(),
      codTipoSanguineo: (json['codTipoSanguineo'] as num).toInt(),
      mlSangue: (json['mlSangue'] as num).toInt(),
    );

Map<String, dynamic> _$$RetiradasDeSangueImplToJson(
        _$RetiradasDeSangueImpl instance) =>
    <String, dynamic>{
      'codRetiradaSangue': instance.codRetiradaSangue,
      'codTipoSanguineo': instance.codTipoSanguineo,
      'mlSangue': instance.mlSangue,
    };

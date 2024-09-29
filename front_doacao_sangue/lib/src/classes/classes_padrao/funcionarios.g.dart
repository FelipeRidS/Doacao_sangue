// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funcionarios.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FuncionariosImpl _$$FuncionariosImplFromJson(Map<String, dynamic> json) =>
    _$FuncionariosImpl(
      codFuncionario: (json['codFuncionario'] as num).toInt(),
      cpf: json['cpf'] as String,
      email: json['email'] as String,
      nome: json['nome'] as String,
      profissao: json['profissao'] as String,
    );

Map<String, dynamic> _$$FuncionariosImplToJson(_$FuncionariosImpl instance) =>
    <String, dynamic>{
      'codFuncionario': instance.codFuncionario,
      'cpf': instance.cpf,
      'email': instance.email,
      'nome': instance.nome,
      'profissao': instance.profissao,
    };

import 'package:freezed_annotation/freezed_annotation.dart';
part 'funcionarios.freezed.dart';
part 'funcionarios.g.dart';

@freezed
class Funcionarios with _$Funcionarios {
  const factory Funcionarios({
    required int codFuncionario,
    required String cpf,
    required String email,
    required String nome,
    required String profissao,
  }) = _Funcionarios;

  factory Funcionarios.fromJson(Map<String, dynamic> json) =>
      _$FuncionariosFromJson(json);
}

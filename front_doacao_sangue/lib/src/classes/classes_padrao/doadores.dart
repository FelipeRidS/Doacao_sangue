import 'package:freezed_annotation/freezed_annotation.dart';
part 'doadores.freezed.dart';
part 'doadores.g.dart';

@freezed
class Doadores with _$Doadores {
  const factory Doadores({
    required int codDoador,
    required String nome,
    required String sobrenome,
    required String? cpf,
    required String telefone,
    required int codTipoSanguineo,
    required String endereco,
  }) = _Doadores;

  factory Doadores.fromJson(Map<String, dynamic> json) =>
      _$DoadoresFromJson(json);
}

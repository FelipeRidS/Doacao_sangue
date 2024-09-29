import 'package:freezed_annotation/freezed_annotation.dart';
part 'doacoes.freezed.dart';
part 'doacoes.g.dart';

@freezed
class Doacoes with _$Doacoes {
  const factory Doacoes({
    required int codDoacao,
    required int codDoador,
    required int codFuncionario,
    required int codCentroDoacao,
    required String data,
    required int mlSangue,
  }) = _Doacoes;

  factory Doacoes.fromJson(Map<String, dynamic> json) =>
      _$DoacoesFromJson(json);
}

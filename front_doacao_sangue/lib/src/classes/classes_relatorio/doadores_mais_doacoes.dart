import 'package:freezed_annotation/freezed_annotation.dart';
part 'doadores_mais_doacoes.freezed.dart';
part 'doadores_mais_doacoes.g.dart';

@freezed
class DoadoresMaisDoacoes with _$DoadoresMaisDoacoes {
  const factory DoadoresMaisDoacoes({
    required String nome,
    required String sobrenome,
    required int qtdRegistros,
    required String qtdMls,
  }) = _DoadoresMaisDoacoes;

  factory DoadoresMaisDoacoes.fromJson(Map<String, dynamic> json) =>
      _$DoadoresMaisDoacoesFromJson(json);
}

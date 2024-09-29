import 'package:freezed_annotation/freezed_annotation.dart';
part 'centros_mais_doacoes.freezed.dart';
part 'centros_mais_doacoes.g.dart';

@freezed
class CentrosMaisDoacoes with _$CentrosMaisDoacoes {
  const factory CentrosMaisDoacoes({
    required String nomeLocal,
    required String endereco,
    required int qtdRegistros,
    required String qtdMls,
  }) = _CentrosMaisDoacoes;

  factory CentrosMaisDoacoes.fromJson(Map<String, dynamic> json) =>
      _$CentrosMaisDoacoesFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'centros_doacao.freezed.dart';
part 'centros_doacao.g.dart';

@freezed
class CentrosDeDoacao with _$CentrosDeDoacao {
  const factory CentrosDeDoacao({
    required int codCentroDoacao,
    required String nomeLocal,
    required String endereco,
  }) = _CentrosDeDoacao;

  factory CentrosDeDoacao.fromJson(Map<String, dynamic> json) =>
      _$CentrosDeDoacaoFromJson(json);
}

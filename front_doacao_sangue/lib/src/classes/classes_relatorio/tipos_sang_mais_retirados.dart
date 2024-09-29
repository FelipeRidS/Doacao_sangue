import 'package:freezed_annotation/freezed_annotation.dart';
part 'tipos_sang_mais_retirados.freezed.dart';
part 'tipos_sang_mais_retirados.g.dart';

@freezed
class TiposSangMaisRetirados with _$TiposSangMaisRetirados {
  const factory TiposSangMaisRetirados({
    required String nomeTipoSang,
    required int totalDisponivel,
    required int qtdRegistros,
    required String qtdMls,
  }) = _TiposSangMaisRetirados;

  factory TiposSangMaisRetirados.fromJson(Map<String, dynamic> json) =>
      _$TiposSangMaisRetiradosFromJson(json);
}

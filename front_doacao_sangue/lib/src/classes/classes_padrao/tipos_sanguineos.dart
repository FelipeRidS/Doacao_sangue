import 'package:freezed_annotation/freezed_annotation.dart';
part 'tipos_sanguineos.freezed.dart';
part 'tipos_sanguineos.g.dart';

@freezed
class TiposSanguineos with _$TiposSanguineos {
  const factory TiposSanguineos({
    required int codTipoSanguineo,
    required String nomeTipoSang,
    required int totalDisponivel,
  }) = _TiposSanguineos;

  factory TiposSanguineos.fromJson(Map<String, dynamic> json) =>
      _$TiposSanguineosFromJson(json);
}

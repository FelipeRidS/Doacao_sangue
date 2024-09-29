import 'package:freezed_annotation/freezed_annotation.dart';
part 'retiradas_de_sangue.freezed.dart';
part 'retiradas_de_sangue.g.dart';

@freezed
class RetiradasDeSangue with _$RetiradasDeSangue {
  const factory RetiradasDeSangue({
    required int codRetiradaSangue,
    required int codTipoSanguineo,
    required int mlSangue,
  }) = _RetiradasDeSangue;

  factory RetiradasDeSangue.fromJson(Map<String, dynamic> json) =>
      _$RetiradasDeSangueFromJson(json);
}

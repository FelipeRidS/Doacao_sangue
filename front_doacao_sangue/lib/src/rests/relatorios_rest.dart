import 'package:dio/dio.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_relatorio/centros_mais_doacoes.dart';
import 'package:front_doacao_sangue/src/classes/classes_relatorio/doadores_mais_doacoes.dart';
import 'package:front_doacao_sangue/src/classes/classes_relatorio/tipos_sang_mais_retirados.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'relatorios_rest.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RelatoriosRest {
  factory RelatoriosRest(Dio dio, {String? baseUrl}) = _RelatoriosRest;

  @GET("/relatorios/doadores-mais-doaram-sangue")
  Future<List<DoadoresMaisDoacoes>> getDoadoresDoaramMaisSangue();

  @GET("/relatorios/centros-com-mais-coletas")
  Future<List<CentrosMaisDoacoes>> getCentrosComMaisColetas();

  @GET("/relatorios/tipos-sanguineos-mais-retirados")
  Future<List<TiposSangMaisRetirados>> getTiposSanguineosMaisRetirados();
}

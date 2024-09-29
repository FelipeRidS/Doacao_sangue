import 'package:dio/dio.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/centros_doacao.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'centros_doacao_rest.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class CentrosDeDoacaoRest {
  factory CentrosDeDoacaoRest(Dio dio, {String? baseUrl}) =
      _CentrosDeDoacaoRest;

  @GET("/centros-doacao")
  Future<List<CentrosDeDoacao>> getCentrosDeDoacao();

  @GET("/centros-doacao/{id}")
  Future<CentrosDeDoacao> getCentroDeDoacaoById(@Path() int id);

  @POST("/centros-doacao")
  Future<dynamic> createCentroDeDoacao(
      @Body() Map<String, dynamic> centroDeDoacao);

  @PUT("/centros-doacao/{id}")
  Future<dynamic> updateCentroDeDoacao(
      {@Path() required int id,
      @Body() required Map<String, dynamic> centroDeDoacao});

  @DELETE("/centros-doacao/{id}")
  Future<dynamic> deleteCentroDeDoacao(@Path() int id);
}

import 'package:dio/dio.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/tipos_sanguineos.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'tipos_sanguineos_rest.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TiposSanguineosRest {
  factory TiposSanguineosRest(Dio dio,
      {String? baseUrl, ParseErrorLogger? errorLogger}) = _TiposSanguineosRest;

  @GET("/tipos-sanguineos")
  Future<List<TiposSanguineos>> getTiposSanguineos();

  @GET("/tipos-sanguineos/{id}")
  Future<TiposSanguineos> getTipoSanguineoById(@Path() int id);

  @POST("/tipos-sanguineos")
  Future<dynamic> createTipoSanguineo(
      @Body() Map<String, dynamic> tipoSanguineo);

  @PUT("/tipos-sanguineos/{id}")
  Future<dynamic> updateTipoSanguineo(
      {@Path() required int id,
      @Body() required Map<String, dynamic> tipoSanguineo});

  @DELETE("/tipos-sanguineos/{id}")
  Future<dynamic> deleteTipoSanguineo(@Path() int id);
}

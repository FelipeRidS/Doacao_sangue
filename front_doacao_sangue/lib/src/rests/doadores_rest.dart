import 'package:dio/dio.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doadores.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'doadores_rest.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class DoadoresRest {
  factory DoadoresRest(Dio dio, {String? baseUrl}) = _DoadoresRest;

  @GET("/doadores")
  Future<List<Doadores>> getDoadores();

  @GET("/doadores/{id}")
  Future<Doadores> getDoadorById(@Path() int id);

  @POST("/doadores")
  Future<dynamic> createDoador(@Body() Map<String, dynamic> doador);

  @PUT("/doadores/{id}")
  Future<dynamic> updateDoador(
      {@Path() required int id, @Body() required Map<String, dynamic> doador});

  @DELETE("/doadores/{id}")
  Future<dynamic> deleteDoador(@Path() int id);
}

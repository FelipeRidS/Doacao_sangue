import 'package:dio/dio.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doacoes.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'doacoes_rest.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class DoacoesRest {
  factory DoacoesRest(Dio dio, {String? baseUrl}) = _DoacoesRest;

  @GET("/doacoes")
  Future<List<Doacoes>> getDoacoes();

  @GET("/doacoes/{id}")
  Future<Doacoes> getDoacaoById(@Path() int id);

  @POST("/doacoes")
  Future<dynamic> createDoacao(@Body() Map<String, dynamic> doacao);

  @PUT("/doacoes/{id}")
  Future<dynamic> updateDoacao(
      {@Path() required int id, @Body() required Map<String, dynamic> doacao});

  @DELETE("/doacoes/{id}")
  Future<dynamic> deleteDoacao(@Path() int id);
}

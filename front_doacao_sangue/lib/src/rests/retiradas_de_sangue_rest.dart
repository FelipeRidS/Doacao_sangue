import 'package:dio/dio.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/retiradas_de_sangue.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'retiradas_de_sangue_rest.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RetiradasDeSangueRest {
  factory RetiradasDeSangueRest(Dio dio, {String? baseUrl}) =
      _RetiradasDeSangueRest;

  @GET("/retiradas-sangue")
  Future<List<RetiradasDeSangue>> getRetiradasDeSangue();

  @GET("/retiradas-sangue/{id}")
  Future<RetiradasDeSangue> getRetiradaDeSangueById(@Path() int id);

  @POST("/retiradas-sangue")
  Future<dynamic> createRetiradaDeSangue(
      @Body() Map<String, dynamic> funcionario);

  @PUT("/retiradas-sangue/{id}")
  Future<dynamic> updateRetiradaDeSangue(
      {@Path() required int id,
      @Body() required Map<String, dynamic> retiradaDeSangue});

  @DELETE("/retiradas-sangue/{id}")
  Future<dynamic> deleteRetiradaDeSangue(@Path() int id);
}

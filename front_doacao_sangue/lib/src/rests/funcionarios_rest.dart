import 'package:dio/dio.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/funcionarios.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'funcionarios_rest.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class FuncionariosRest {
  factory FuncionariosRest(Dio dio, {String? baseUrl}) = _FuncionariosRest;

  @GET("/funcionarios")
  Future<List<Funcionarios>> getFuncionarios();

  @GET("/funcionarios/{id}")
  Future<Funcionarios> getFuncionarioById(@Path() int id);

  @POST("/funcionarios")
  Future<dynamic> createFuncionario(@Body() Map<String, dynamic> funcionario);

  @PUT("/funcionarios/{id}")
  Future<dynamic> updateFuncionario(
      {@Path() required int id,
      @Body() required Map<String, dynamic> funcionario});

  @DELETE("/funcionarios/{id}")
  Future<dynamic> deleteFuncionario(@Path() int id);
}

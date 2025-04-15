import 'package:dio/dio.dart';
import 'package:projeto_api/data/datasources/http_client.dart';
import 'package:projeto_api/injector.dart';

abstract class BaseRemoteDataSource {
  final HttpCliente httpCliente = getIt.get<HttpCliente>();

  Future<Response> get({required String path}) async {
    return httpCliente.client.get(path);
  }
  Response? exceptionToResponse(Object error){
    return error is DioException ? error.response : null;
  }
}
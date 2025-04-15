import 'package:dio/dio.dart';
import '../../data/datasources/http_client.dart';

class HttpClienteImpl implements HttpCliente{
  @override
  Dio client = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    )
  );
}
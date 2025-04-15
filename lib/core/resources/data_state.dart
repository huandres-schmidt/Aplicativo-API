import 'package:dio/dio.dart';

abstract class DataState<T>{
  final T? data;
  final ApiRequestError? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(ApiRequestError error) : super(error: error);
}

class ApiRequestError {
  final Response? response;
  final String? message;

  ApiRequestError({this.response, this.message});

  String get errorMessage{
    try{
      if(response != null){
        return "Código de Erro ${response?.statusCode}";
      }
      return message ?? genericErrorMensage;
    }on Exception catch(_){
      return message ?? genericErrorMensage;
    }
  }

  String? get responseError {
    try{
      return "Código de Erro ${response?.statusCode}";
    }on Exception catch(_){
      return null;
    }
  }

  String get genericErrorMensage => "Não foi possível conectar ao servidor, "
  "verifique sua conexão com a internet ou tente novamente mais tarde, "
  "caso o problema persistir entre em contato com o suporte";

  @override
  String toString() {
    return 'ApiRequestError{response: $response, errorMessage: $errorMessage}';
  }
}
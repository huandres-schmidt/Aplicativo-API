import 'dart:developer';
import 'package:projeto_api/config/api_schema.dart';
import 'package:projeto_api/core/resources/base_remote_data_source.dart';
import 'package:projeto_api/domain/repositories/produto_remote_repository.dart';
import '../../../core/resources/data_state.dart';
import '../../models/produto.dart';

class ProdutoRemoteRepositoryImpl extends BaseRemoteDataSource
    implements ProdutoRemoteRepository {

  @override
  Future<DataState<List<Produto>>> getProduto() async {
    log('Puxando Produto da API...');
    try {
      final response = await get(path: ApiSchema.url);
      if (response.statusCode == 200) {
        log('Produtos Buscados ${response.statusCode} | ${response.statusMessage}');
        final List<Produto> produto = (response.data as List).map((e) => Produto.fromJson(e as Map<String, dynamic>)).toList();
        log('Resultado $produto');
        return DataSuccess(produto);
      } else {
        log('Falha ${response.statusCode} | ${response.statusMessage}');
        return DataFailed(ApiRequestError(response: response));
      }
    } on Exception catch (e) {
      log('Falha $e');
      return DataFailed(ApiRequestError(response: exceptionToResponse(e)));
    }
  }
}

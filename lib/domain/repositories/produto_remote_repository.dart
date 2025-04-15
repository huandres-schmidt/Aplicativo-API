import '../../core/resources/data_state.dart';
import '../../data/models/produto.dart';

abstract class ProdutoRemoteRepository {
  Future<DataState<List<Produto>>> getProduto();
}
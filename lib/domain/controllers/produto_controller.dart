import 'package:projeto_api/core/resources/data_state.dart';
import 'package:projeto_api/domain/repositories/produto_remote_repository.dart';

import '../../data/models/produto.dart';

class ProdutoController{
  final ProdutoRemoteRepository _produtoRemoteRepository;

  ProdutoController(this._produtoRemoteRepository);

  Future<DataState<List<Produto>>> buscarProduto() async => await _produtoRemoteRepository.getProduto();
}
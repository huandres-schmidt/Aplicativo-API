import 'package:projeto_api/data/models/produto.dart';

abstract class ProdutoState{
  List<Produto> produtos;

  ProdutoState({
    required this.produtos
  });
}

class ProdutoInitialState extends ProdutoState{
  ProdutoInitialState() : super(produtos: []);
}
class ProdutoSucessState extends ProdutoState{
  ProdutoSucessState(List<Produto> produto) : super(produtos: produto);
}
class ProdutoErrorState extends ProdutoState{
  final String erro;

  ProdutoErrorState({required this.erro}) : super(produtos: []);
}
import 'package:bloc/bloc.dart';
import 'package:projeto_api/presentation/bloc/produto/produto_events.dart';
import 'package:projeto_api/presentation/bloc/produto/produto_state.dart';

import '../../../domain/controllers/produto_controller.dart';

class ProductBloc extends Bloc<ProdutoEvent, ProdutoState> {
  final ProdutoController produtoController;

  ProductBloc(this.produtoController) : super(ProdutoInitialState()) {
    on<ProdutoLoadEvent>(_onProdutoLoadEvent);
  }
  Future<void> _onProdutoLoadEvent(
      ProdutoLoadEvent event, Emitter<ProdutoState> emit) async {
    try{
      final product = await produtoController.buscarProduto();
      emit(ProdutoSucessState(product.data!));
    }catch(e){
      emit(ProdutoErrorState(erro: '$e'));
    }
  }
}

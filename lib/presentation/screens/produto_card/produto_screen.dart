import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_api/core/constants/colors.dart';
import 'package:projeto_api/presentation/bloc/produto/produto_bloc.dart';
import 'package:projeto_api/presentation/bloc/produto/produto_events.dart';
import 'package:projeto_api/presentation/bloc/produto/produto_state.dart';
import 'package:projeto_api/presentation/screens/produto_card/widgets/carregamento_produto.dart';
import 'package:projeto_api/presentation/screens/produto_card/widgets/dialog_erro.dart';
import 'package:projeto_api/presentation/screens/produto_card/widgets/card_produto.dart';
import 'package:projeto_api/presentation/screens/produto_card/widgets/menu_button.dart';
import 'package:projeto_api/presentation/screens/produto_card/widgets/message_produto_is_empty.dart';

class ProdutoScreen extends StatefulWidget {
  const ProdutoScreen({super.key});

  @override
  State<ProdutoScreen> createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  final bloc = GetIt.I.get<ProductBloc>();

  @override
  void initState() {
    super.initState();
    bloc.add(ProdutoLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConstants.indigoPrincipal,
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Aplicativo teste API', style: GoogleFonts.spaceGrotesk()),
        actions: const [
          MenuButton(),
        ],
      ),
      body: BlocBuilder<ProductBloc, ProdutoState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is ProdutoInitialState) {
            return const CarregamentoProduto();
          }
          else if (state is ProdutoSucessState) {
            final produto = state.produtos;
            if (produto.isEmpty) {
              return const MessageProdutoIsEmpty();
            } else {
              return CardProduct(produto: produto);
            }
          }
          else if (state is ProdutoErrorState) {
            return DialogErro(mensagem: state.erro);
          }
          return const Center(
            child: Text('Erro Desconhecido'),
          );
        },
      ),
    );
  }
}
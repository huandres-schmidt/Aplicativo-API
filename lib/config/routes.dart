import 'package:flutter/cupertino.dart';
import 'package:projeto_api/presentation/screens/produto_card/produto_screen.dart';
import '../presentation/screens/detalhes_produto/detalhes_produto_screen.dart';

class Routes{
  static const String home = '/home';
  static const String detalhesProduto = '/detalhes/produtos';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const ProdutoScreen(),
    detalhesProduto: (BuildContext context) {
      final args = ModalRoute.of(context)?.settings.arguments as Map;
      return DetalhesProdutoScreen(product: args['produto']);
    },
  };
}
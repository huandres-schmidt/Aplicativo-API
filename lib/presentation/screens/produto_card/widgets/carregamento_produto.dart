import 'package:flutter/material.dart';
import 'package:projeto_api/core/constants/colors.dart';

class CarregamentoProduto extends StatelessWidget{
  const CarregamentoProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircularProgressIndicator(
              color: ColorsConstants.indigoPrincipal,
            ),
          ),
          Center(
            child: Text('Carregando Produtos...', style: TextStyle(color: ColorsConstants.fundoCard),),
          ),
        ],
      ),
    );
  }
}
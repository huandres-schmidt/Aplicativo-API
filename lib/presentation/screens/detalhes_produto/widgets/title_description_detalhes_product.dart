import 'package:flutter/material.dart';
import 'package:projeto_api/core/constants/colors.dart';
import 'package:projeto_api/data/models/produto.dart';

class TitleDescriptionDetalhesProduct extends StatelessWidget{
  final Produto product;
  const TitleDescriptionDetalhesProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title!, style: const TextStyle(color: ColorsConstants.fundoCard),),
      subtitle: Text(product.description!, style: const TextStyle(color: ColorsConstants.fundoCard)),
    );
  }
}
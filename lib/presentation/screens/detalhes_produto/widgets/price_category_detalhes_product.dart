import 'package:flutter/material.dart';
import 'package:projeto_api/data/models/produto.dart';

import '../../../../core/constants/colors.dart';

class PriceCategoryDetalhesProduct extends StatelessWidget {
  final Produto product;
  const PriceCategoryDetalhesProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Price \$ ${product.price!.toStringAsFixed(2)}',style: const TextStyle(color: ColorsConstants.fundoCard)),
      subtitle: Text('Category ${product.category!.name}',style: const TextStyle(color: ColorsConstants.fundoCard)),
    );
  }
}
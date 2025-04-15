import 'package:flutter/material.dart';
import 'package:projeto_api/data/models/produto.dart';

class TitleSubTitleProduct extends StatelessWidget{
  final Produto product;
  const TitleSubTitleProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${product.title}',
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${product.category!.name}',
            style: const TextStyle(color: Colors.white)

          ),
          Text(
            '\$ ${product.price}',
            style: const TextStyle(color: Colors.green
            ),
          ),
        ],
      ),
    );
  }
}
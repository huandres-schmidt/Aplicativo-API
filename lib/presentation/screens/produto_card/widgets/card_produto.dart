import 'package:flutter/material.dart';
import 'package:projeto_api/data/models/produto.dart';
import 'package:projeto_api/presentation/screens/produto_card/widgets/product_carousel_slider.dart';
import 'package:projeto_api/presentation/screens/produto_card/widgets/title_subtitle_product.dart';

class CardProduct extends StatefulWidget {
  final List<Produto> produto;

  const CardProduct({super.key, required this.produto});

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.65),
      itemCount: widget.produto.length,
      itemBuilder: (context, index) {
        final product = widget.produto[index];
        return Padding(
          padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  ProductCarouselSlider(product: product),
                  TitleSubTitleProduct(product: product,),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

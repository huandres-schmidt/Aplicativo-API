import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projeto_api/config/routes.dart';
import 'package:projeto_api/data/models/produto.dart';
import 'dialog_erro.dart';

class ProductCarouselSlider extends StatelessWidget {
  final Produto product;

  const ProductCarouselSlider({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 150,
        viewportFraction: 1.0,
        initialPage: 1,
        // autoPlay: true,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: product.images!.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Routes.detalhesProduto, arguments: {
                'produto' : product
              });
            },
            child: Image.network(
              product.images![itemIndex]!,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const DialogErro(mensagem: 'Imagem URL inválida');
              },
            ),
          ),
        );
      },
    );
  }
}

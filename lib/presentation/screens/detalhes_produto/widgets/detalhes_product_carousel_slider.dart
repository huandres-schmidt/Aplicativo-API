import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import '../../../../data/models/produto.dart';
import '../../produto_card/widgets/dialog_erro.dart';

class DetalhesProductCarouselSlider extends StatelessWidget {
  final Produto product;

  const DetalhesProductCarouselSlider({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 400,
        viewportFraction: 1.0,
        initialPage: 1,
        autoPlay: true,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: product.images!.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Image.network(
          product.images![itemIndex]!,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const DialogErro(mensagem: 'Imagem URL inválida');
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_api/presentation/screens/detalhes_produto/widgets/detalhes_product_carousel_slider.dart';
import 'package:projeto_api/presentation/screens/detalhes_produto/widgets/price_category_detalhes_product.dart';
import 'package:projeto_api/presentation/screens/detalhes_produto/widgets/title_description_detalhes_product.dart';
import '../../../data/models/produto.dart';

class DetalhesProdutoScreen extends StatelessWidget{
  final Produto product;

  const DetalhesProdutoScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text('Detalhes Produto ID ${product.id}', style: GoogleFonts.spaceGrotesk()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetalhesProductCarouselSlider(product: product),
            TitleDescriptionDetalhesProduct(product: product),
            PriceCategoryDetalhesProduct(product: product),
          ],
        ),
      ),
    );
  }
}
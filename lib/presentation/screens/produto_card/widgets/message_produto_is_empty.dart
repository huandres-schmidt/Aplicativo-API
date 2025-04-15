import 'package:flutter/material.dart';

class MessageProdutoIsEmpty extends StatelessWidget{
  const MessageProdutoIsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
   return const Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Icon(Icons.warning),
         Text('Nenhum Produto Cadastrado'),
       ],
     ),
   );
  }
}
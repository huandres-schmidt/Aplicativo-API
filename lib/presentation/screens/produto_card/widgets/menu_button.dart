import 'package:flutter/material.dart';
import 'package:projeto_api/injector.dart';
import 'package:projeto_api/presentation/bloc/produto/produto_bloc.dart';
import '../../../bloc/produto/produto_events.dart';

class MenuButton extends StatefulWidget{
  const MenuButton({super.key});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.cloud),
      onSelected: (value) {
        if(value == "SYNC"){
          getIt<ProductBloc>().add(ProdutoLoadEvent());
          setState(() {});
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem(
            value: "SYNC",
            child: ListTile(
              leading: Icon(Icons.update),
              title: Text('Sincronizar dados com a Nuvem'),
            ),
          ),
        ];
      },
    );
  }
}
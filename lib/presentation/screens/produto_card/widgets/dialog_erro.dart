import 'package:flutter/material.dart';
import 'package:projeto_api/core/constants/colors.dart';

class DialogErro extends StatefulWidget {
  final String mensagem;

  const DialogErro({super.key, required this.mensagem});

  @override
  State<DialogErro> createState() => _DialogErroState();
}

class _DialogErroState extends State<DialogErro> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.warning,
          size: 80,
        ),
        Center(
          child: Text(widget.mensagem, style: const TextStyle(color: ColorsConstants.fundoCard),),
        ),
      ],
    );
  }
}

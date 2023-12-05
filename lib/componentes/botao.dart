import 'package:flutter/material.dart';
import 'package:projeto_f7/cores/cores.dart';

class MeuBotao extends StatelessWidget {

  final VoidCallback funcao;
  final String label;
  const MeuBotao({super.key, required this.funcao, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: funcao, child: Text(label, style: TextStyle(
      color: MinhasCores.claro
    ),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(MinhasCores.terciaria) , minimumSize: MaterialStatePropertyAll(Size(120,20)) ),);
  }
}


class MeuBotaolargo extends StatelessWidget {

  final VoidCallback funcao;
  final String label;
  const MeuBotaolargo({super.key, required this.funcao, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: funcao, child: Text(label,  style: TextStyle(
      color: MinhasCores.claro
    ),),style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(MinhasCores.secundaria),
  
    ),
  );
  }
}
import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/botao.dart';
import 'package:projeto_f7/cores/cores.dart';

class RendaMensal extends StatelessWidget {
  const RendaMensal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Qual sua Renda Mensal?', style: TextStyle(fontSize: 24, color: MinhasCores.escuro),),
            const SizedBox(height: 10,),
            MeuBotaolargo(funcao: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => TelaCriarConta()),);
            }, label: "RS"),
            MeuBotaolargo(funcao: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => TelaCriarConta()),);
            }, label: "RS"),
            MeuBotaolargo(funcao: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => TelaCriarConta()),);
            }, label: "RS"),
            MeuBotaolargo(funcao: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => TelaCriarConta()),);
            }, label: "RS"),
            MeuBotaolargo(funcao: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => TelaCriarConta()),);
            }, label: "RS"),
          ],
        ),
      ),
    );
  }
}
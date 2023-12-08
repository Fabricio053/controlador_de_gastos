import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/botao.dart';
import 'package:projeto_f7/cores/cores.dart';
import 'package:projeto_f7/telas/principal.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const TelaDashboard()),);
            }, label: "R\$ 1.000,00 á R\$ 2.000,00"),
            MeuBotaolargo(funcao: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const TelaDashboard()),);
            }, label: "R\$ 1.000,00 á R\$ 2.000,00"),
            MeuBotaolargo(funcao: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TelaDashboard()),);
            }, label: "R\$ 1.000,00 á R\$ 2.000,00"),
            MeuBotaolargo(funcao: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TelaDashboard()),);
            }, label: "R\$ 1.000,00 á R\$ 2.000,00"),
            MeuBotaolargo(funcao: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TelaDashboard()),);
            }, label: "R\$ 10.000,00 á R\$ 30.000,00"),
          ],
        ),
      ),
    );
  }
}
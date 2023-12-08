import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/componentes/caixa.dart';
import 'package:projeto_f7/cores/cores.dart';

class TelaGanhos extends StatelessWidget {
  const TelaGanhos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MinhasCores.primaria,
      appBar: AppBarCustom(title: "Ganhos"),
      body: Column(
        children: [
          ContainerCustom(label: 'Empresa 1', labelRigth: "R\$ 0,00", textRigth: true),
          ContainerCustom(label: 'Empresa 2', labelRigth: "true"),
        ],
      ),
    );
  }
}
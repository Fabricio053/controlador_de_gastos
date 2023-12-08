import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/cores/cores.dart';


class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustom(title: '', titleLeft: 'Agenda',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UpCard()
          ],
        ),
      ),
    );
  }
}
class UpCard extends StatelessWidget {
  const UpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              color: MinhasCores.azul,
              child: const Center(child: Text("Ver Resumo Anual", style: TextStyle(color: MinhasCores.claro))),
            ),
          ),
        
        ],
      ),
    );
  }
}

class DownCard extends StatelessWidget {
  const DownCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              color: MinhasCores.azul,
              child: const Center(child: Text("Ver Resumo Anual", style: TextStyle(color: MinhasCores.claro))),
            ),
          ),
        ],
      ),
    );
  }
}
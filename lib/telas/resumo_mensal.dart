import 'package:flutter/material.dart';
import 'package:flutter_pie_chart/flutter_pie_chart.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/componentes/text.dart';
import 'package:projeto_f7/cores/cores.dart';

class ResumoMensal extends StatefulWidget {
  const ResumoMensal({super.key});

  @override
  State<ResumoMensal> createState() => _ResumoMensalState();
}

class _ResumoMensalState extends State<ResumoMensal> {
  final List<Pie> pies = [
    Pie(color: MinhasCores.secundaria, proportion: 7),
    Pie(color: MinhasCores.claro, proportion: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: MinhasCores.primaria,
      extendBody: true,
      appBar: const AppBarCustom(title: "Resumo Mensal"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(80),
                child: FlutterPieChart(pies: pies, selected: 1)),
            const SizedBox(
              child: Column(
                children: [
                  Text(
                    "Saldo Mensal previsto",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "R\$ 0,00",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextLabel(
                        firstLabel: "Ganhos previstos",
                        lastLabel: "R\$ 0,00",
                      ),
                      MyTextLabel(
                        firstLabel: "Valor recebido",
                        lastLabel: "R\$ 0,00",
                      ),
                      MyTextLabel(
                        firstLabel: "Falta receber  ",
                        lastLabel: "R\$ 0,00",
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextLabel(
                        firstLabel: "Desepesas previstas",
                        lastLabel: "R\$ 0,00",
                      ),
                      MyTextLabel(
                        firstLabel: "Valor pago",
                        lastLabel: "R\$ 0,00",
                      ),
                      MyTextLabel(
                        firstLabel: "Falta pagar",
                        lastLabel: "R\$ 0,00",
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Detalhes()
          ],
        ),
      ),
    );
  }
}

class Detalhes extends StatelessWidget {
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: MinhasCores.terciaria,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text("Ver Detalhes",
                      style: TextStyle(color: MinhasCores.claro))),
            ),
          ),
        ],
      ),
    );
  }
}

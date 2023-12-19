import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/componentes/text.dart';
import 'package:projeto_f7/cores/cores.dart';
import 'package:projeto_f7/firebase/dados_firebase.dart';
import 'package:projeto_f7/telas/resumo_mensal.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  double totalDespesas = 0.0;
  double totalGanhos = 0.0;

  void valorT () async{
    totalDespesas = await DadosFirebase().totalDR('Despesas');
    totalGanhos = await DadosFirebase().totalDR('Ganhos');
  }

  @override
  initState() {
    super.initState();
    setState(() {
      valorT();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Feature> features = [
      Feature(
        data: [
          0.3,
          0.1,
          0.2,
          0.2,
          0.2,
          0.1,
          0.1,
          0.2,
          0.4,
          0.5,
        ],
      ),
      Feature(
        data: [
          0.3,
          0.2,
          0.6,
          0.3,
          0.1,
          0.4,
          0.3,
          0.7,
          0.3,
          0.4,
          0.3,
        ],
      ),
    ];
    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      appBar: const AppBarCustom(
        title: 'Principal',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UpCard(),
            SizedBox(
                child: Column(
              children: [
                LineGraph(
                  features: features,
                  size: const Size(1000, 300),
                  labelX: const [
                    'Janeiro',
                    'Fevereiro',
                    'Março',
                    'Abril',
                    'Maio'
                  ],
                  labelY: const ["Ganhos"],
                  graphColor: MinhasCores.escuro,
                  graphOpacity: 0,
                  verticalFeatureDirection: true,
                ),
              ],
            )),
            const MesCardNext(),
            SizedBox(
              child: Column(
                children: [
                 const SizedBox(
                    child: Column(
                      children: [
                        Text(
                          "Saldo Mensal previsto",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "R\$ 0,00",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const MyTextLabel(
                              firstLabel: "Ganhos previstos",
                              lastLabel: "R\$ 0,00",
                            ),
                            MyTextLabel(
                              firstLabel: "Valor recebido",
                              lastLabel: "R\$ $totalGanhos",
                            ),
                            const MyTextLabel(
                              firstLabel: "Falta receber  ",
                              lastLabel: "R\$ 0,00",
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const MyTextLabel(
                              firstLabel: "Desepesas previstas",
                              lastLabel: "R\$ 0,00",
                            ),
                            MyTextLabel(
                              firstLabel: "Valor pago",
                              lastLabel: "R\$ $totalDespesas",
                            ),
                          const MyTextLabel(
                              firstLabel: "Falta pagar",
                              lastLabel: "R\$ 0,00",
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResumoMensal()),
                );
              },
              child: Container(
                height: 50,
                color: MinhasCores.azul,
                child: const Center(
                    child: Text("Ver Resumo Mensal",
                        style: TextStyle(color: MinhasCores.claro))),
              ),
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
              color: MinhasCores.secundaria,
              child: const Center(
                  child: Text("Ver Resumo Anual",
                      style: TextStyle(color: MinhasCores.claro))),
            ),
          ),
        ],
      ),
    );
  }
}

class MesCardNext extends StatelessWidget {
  const MesCardNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 80,left: 80),
            decoration: BoxDecoration(
                color: MinhasCores.terciaria,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new,
                        color: MinhasCores.claro)),
                const Text("Janeiro",
                    style: TextStyle(color: MinhasCores.claro, fontSize: 24)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_sharp,
                        color: MinhasCores.claro))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

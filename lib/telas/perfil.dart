import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/componentes/input.dart';
import 'package:projeto_f7/cores/cores.dart';

class PerfilAcount extends StatefulWidget {
  const PerfilAcount({super.key});

  @override
  State<PerfilAcount> createState() => _PerfilAcountState();
}

class _PerfilAcountState extends State<PerfilAcount> {
  TextEditingController nomecontroll = TextEditingController();
  TextEditingController emailControll = TextEditingController();
  TextEditingController telefoneControll = TextEditingController();

  @override
  void initState() {
    super.initState();
    nomecontroll.text = 'Fabricio Rodrigues';
    emailControll.text = 'fabricio@gmail.com';
    telefoneControll.text = '(99) 9 9991-3239';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      appBar: const AppBarCustom(title: "Perfil"),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: 1000,
            color: MinhasCores.terciaria,
            child: const Column(
              children: [
                Icon(
                  Icons.person_pin,
                  color: MinhasCores.claro,
                  size: 100,
                ),
                // Text(
                //   "Apelido",
                //   style: TextStyle(color: MinhasCores.claro),
                // )
              ],
            ),
          ),
          // const SizedBox(
            // height: 60,
          // ),
          Container(
            padding: const EdgeInsets.all(20),
            // color: MinhasCores.terciaria,
            child: Column(
              children: [
                InputCustom(
                  controll: nomecontroll,
                  keyboard: TextInputType.name,
                  label: 'Nome',
                ),
                InputCustom(
                  controll: emailControll,
                  keyboard: TextInputType.name,
                  label: 'Email',
                ),
                InputCustom(
                  controll: telefoneControll,
                  keyboard: TextInputType.number,
                  label: 'Telefone',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(onPressed: () {}, child: const Text("Precisa de ajuda?"))
        ],
      ),
    );
  }
}

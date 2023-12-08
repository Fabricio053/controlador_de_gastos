import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/componentes/input.dart';
import 'package:projeto_f7/cores/cores.dart';

class PerfilAcount extends StatefulWidget {
   PerfilAcount({super.key});

  @override
  State<PerfilAcount> createState() => _PerfilAcountState();
}

class _PerfilAcountState extends State<PerfilAcount> {
   TextEditingController nomecontroll = TextEditingController();
   TextEditingController emailControll = TextEditingController();
   TextEditingController telefoneControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Perfil"),
      body:Column(
        children: [
          const SizedBox(height: 40,),
          Container(
            width: 1000,
            color: MinhasCores.terciaria,
            child: Column(
              children: [
                Icon(Icons.person, color:MinhasCores.claro,),
                Text("Apelido", style: TextStyle(color: MinhasCores.claro),)
              ],
            ),
          ),
          const SizedBox(height: 60,),
          Container(
            color: MinhasCores.terciaria,
            child: Column(
              children: [ 
              InputCustom(controll: nomecontroll ,keyboard: TextInputType.name, label: 'Nome',),
              InputCustom(controll: emailControll ,keyboard: TextInputType.name, label: 'Email',),
              InputCustom(controll: telefoneControll ,keyboard: TextInputType.number, label: 'Telefone',),
              ],),
          ),
          const SizedBox(height: 10,),
          TextButton(onPressed: (){}, child: const Text("Precisa de ajuda?"))
        ],
      ),
    );
  }
}
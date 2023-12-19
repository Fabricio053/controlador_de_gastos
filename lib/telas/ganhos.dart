import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/appbar_custom.dart';
import 'package:projeto_f7/componentes/caixa.dart';
import 'package:projeto_f7/componentes/notificacao.dart';
import 'package:projeto_f7/cores/cores.dart';
import 'package:projeto_f7/firebase/dados_firebase.dart';

class TelaGanhos extends StatefulWidget {
  const TelaGanhos({super.key});

  @override
  State<TelaGanhos> createState() => _TelaGanhosState();
}

class _TelaGanhosState extends State<TelaGanhos> {

  TextEditingController gastosValorController = TextEditingController();
  TextEditingController ganhosValorController = TextEditingController();

void ganhos(double valor) async{
  try {
   await DadosFirebase().adcionarDR('Ganhos', valor);
    } catch (e) {
      throw ('Erro ao adicionar dados no Firebase $e');
    }
} 

void gastos(double valor)async{
   try {
   await DadosFirebase().adcionarDR('Despesas', valor);
    } catch (e) {
      throw ('Erro ao adicionar dados no Firebase $e');
    }
} 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      appBar: const AppBarCustom(title: "Ganhos e Despesas"),
      body: SingleChildScrollView(
        child: Column(
          children: [

            ContainerCustom(title: 'Ganhos', controll: ganhosValorController, onPressed: (){

              if (ganhosValorController.text.isNotEmpty) {
                try {
                  ganhos(double.parse(ganhosValorController.text)); 
                  mostrarNotificacao(context, 'Valor adcionado com Sucesso');
                  ganhosValorController.text = '';
                } catch (e) {
                  mostrarNotificacao(context, 'Erro ao tentar adcionar valor');
                }

              }
            }, isGastos: false),
            ContainerCustom(title: 'Despesas', controll: gastosValorController, onPressed: (){

              if (gastosValorController.text.isNotEmpty) {
                try {
              gastos(double.parse(gastosValorController.text));
              mostrarNotificacao(context, 'Valor adcionado com Sucesso');
              gastosValorController.text = '';
              } catch (e) {
                mostrarNotificacao(context, 'Erro ao tentar adcionar valor');
              }
              }
            } , isGastos: true),

            // Padding(padding: const EdgeInsets.all(8.0)
            // child: List,
            // )
          ],
        ),
      ),
    );
  }
}
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/botao.dart';
import 'package:projeto_f7/componentes/input.dart';
import 'package:projeto_f7/cores/cores.dart';
import 'package:projeto_f7/telas/renda_mensal.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp(
    MaterialApp(
      home: TelaLogar(),
      debugShowCheckedModeBanner: false,
    ),
  );

}

class TelaLogar extends StatelessWidget {
  final TextEditingController emailControll = TextEditingController();
  final TextEditingController senhaControll = TextEditingController();
   TelaLogar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(
          child: Column(
            children: [
            InputCustom(controll:emailControll ,keyboard: TextInputType.number, label: 'Email',),
            InputCustom(controll:senhaControll ,keyboard: TextInputType.number, label: 'Senha',)
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: [
             TextButton(onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaCriarConta()),
            );

             }, child: const Text("Criar cadastro", style: TextStyle(color: MinhasCores.escuro),)),
              MeuBotao(funcao: (){}, label: 'Logar'),
             const Text("ou entrar com"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){print('Clcado');}, child: Image.asset('assets/facebook.png', width: 40,),),
                  TextButton(onPressed: (){print('Clcado');}, child: Image.asset('assets/twitter.png', width: 40,),),
                  TextButton(onPressed: (){print('Clcado');}, child: Image.asset('assets/google.png', width: 40,),),
                ],
              )
              ],
          ),
        )
        
        ],
      ),
    );
  }
}

class TelaCriarConta extends StatelessWidget {
  
  final TextEditingController emailControll = TextEditingController();
  final TextEditingController senhaControll = TextEditingController();
  final TextEditingController telefoneControll = TextEditingController();
  final TextEditingController nomecontroll = TextEditingController();
  final TextEditingController repeateSenhaControll = TextEditingController();
   TelaCriarConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      // appBar: AppBarCustom(title: 'title'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(
            child: Column(
              children: [
              InputCustom(controll:nomecontroll ,keyboard: TextInputType.name, label: 'Nome',),
              InputCustom(controll:emailControll ,keyboard: TextInputType.name, label: 'Email',),
              InputCustom(controll:telefoneControll ,keyboard: TextInputType.number, label: 'Telefone',),
              InputCustom(controll:senhaControll ,keyboard: TextInputType.number, label: 'Senha',),
              InputCustom(controll:repeateSenhaControll ,keyboard: TextInputType.number, label: 'Repetir senha',),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                MeuBotao(funcao: (){
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RendaMensal()),);
                }, label: 'Logar'),
              const SizedBox(height: 20,),
               const Text("ou entrar com"),
              const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){print('Clcado');}, child: Image.asset('assets/facebook.png', width: 40,),),
                    TextButton(onPressed: (){print('Clcado');}, child: Image.asset('assets/twitter.png', width: 40,),),
                    TextButton(onPressed: (){print('Clcado');}, child: Image.asset('assets/google.png', width: 40,),),
                  ],
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
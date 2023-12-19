import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projeto_f7/componentes/botao.dart';
import 'package:projeto_f7/componentes/input.dart';
import 'package:projeto_f7/componentes/notificacao.dart';
import 'package:projeto_f7/cores/cores.dart';
import 'package:projeto_f7/firebase/servicos_firebase.dart';
import 'package:projeto_f7/firebase_options.dart';
import 'package:projeto_f7/telas/principal.dart';
import 'package:projeto_f7/telas/renda_mensal.dart';

void main() async {

  Widget telaInicial = TelaLogar();

  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // User? user = FirebaseAuth.instance.currentUser;
    // if(user != null){
    //   telaInicial = const TelaDashboard();
    // }
  } catch (e) {
    throw ('Erro do Firebase $e');
  }
  
  runApp(
    MaterialApp(
      home: telaInicial,
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
    void mudaTela() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TelaDashboard()),
      );
    }

    void entrar(Map<String, String> dados) async {
      try {
        await ContaFirebase().entrar(dados);
        mudaTela();
      } catch (e) {
        throw "Errro";
      }
    }

    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Column(
              children: [
                InputCustom(
                  controll: emailControll,
                  keyboard: TextInputType.emailAddress,
                  label: 'Email',
                ),
                InputCustom(
                  controll: senhaControll,
                  keyboard: TextInputType.number,
                  label: 'Senha',
                )
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                MeuBotao(
                    funcao: () {
                      Map<String, String> dados = {
                        'email': emailControll.text,
                        'senha': senhaControll.text,
                      };
                      if (ContaFirebase.formIsEmpyt(dados)) {
                        entrar(dados);
                      } else {
                        mostrarNotificacao(context, 'Preencha todos os dados');
                      }
                    },
                    label: 'Logar'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaCriarConta()),
                      );
                    },
                    child: const Text(
                      "Criar cadastro",
                      style: TextStyle(color: MinhasCores.escuro),
                    )),
                const Text("ou entrar com"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons8-facebook-50.png',
                        width: 44,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/twitterx-50.png',
                        width: 40,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons8-google-50.png',
                        width: 40,
                      ),
                    ),
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
    void mudaTela() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RendaMensal()),
      );
    }

    void criandocontra(Map<String, String> dados) async {
      try {
        await ContaFirebase().criar(dados);
        mudaTela();
      } catch (e) {
        throw "Errro";
      }
    }

    return Scaffold(
      backgroundColor: MinhasCores.primaria,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                children: [
                  InputCustom(
                    controll: nomecontroll,
                    keyboard: TextInputType.name,
                    label: 'Nome',
                  ),
                  InputCustom(
                    controll: emailControll,
                    keyboard: TextInputType.emailAddress,
                    label: 'Email',
                  ),
                  InputCustom(
                    controll: telefoneControll,
                    keyboard: TextInputType.number,
                    label: 'Telefone',
                  ),
                  InputCustom(
                    controll: senhaControll,
                    keyboard: TextInputType.number,
                    label: 'Senha',
                  ),
                  InputCustom(
                    controll: repeateSenhaControll,
                    keyboard: TextInputType.number,
                    label: 'Repetir senha',
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  MeuBotao(
                      funcao: () {
                        mudaTela();
                        Map<String, String> dados = {
                          'nome': nomecontroll.text,
                          'email': emailControll.text,
                          'senha': senhaControll.text,
                          'telefone': telefoneControll.text,
                          'repeatSenha': repeateSenhaControll.text,
                        };
                        if (ContaFirebase.formIsEmpyt(dados) &&
                            dados['senha'] == dados['repeatSenha']) {
                          criandocontra(dados);
                        } else {
                          mostrarNotificacao(context, 'Erro ao tentar entrar');
                        }
                      },
                      label: 'Criar Conta'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaLogar()),
                        );
                      },
                      child: const Text(
                        "Já tenho uma conta",
                        style: TextStyle(color: MinhasCores.escuro),
                      )),
                  const Text("ou entrar com"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/icons8-facebook-50.png',
                          width: 40,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/twitterx-50.png',
                          width: 40,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/icons8-google-50.png',
                          width: 40,
                        ),
                      ),
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

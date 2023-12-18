import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ContaFirebase {

Future<void> criar(Map<String, String> dados) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: dados['email']!,
      password: dados['senha']!,
    );
    User? user = userCredential.user;
    await user!.updateDisplayName(dados['nome']);
    DocumentReference docUser = FirebaseFirestore.instance.collection('Perfil').doc(user.uid);
    await docUser.set({
      'saldo': 0.0,
      'telefone': dados['telefone']
    });
  } catch (e) {
    throw "Erro ao tentar acessar conta $e";
  }
}

  Future<void> entrar(Map<String, String> dados) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: dados['email']!,
        password: dados['senha']!,
      );
    } catch (e) {
      throw "Erro ao tentar acessar conta $e";
    }
  }

  Future<void> sair(Map<String, String> dados) async {
    await FirebaseAuth.instance.signOut();
  }

  static bool formIsEmpyt(Map<String, dynamic> dados) {
    dados.forEach((key, value) {});

    return dados.values.every((value) =>
        value != null && value.toString().isNotEmpty && value != 'null');
  }
}

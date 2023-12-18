import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DadosFirebase {
    final User? _user = FirebaseAuth.instance.currentUser;

    Future<bool> adcionarDR(String colecao, Map<String,dynamic> dados) async {
        try {
        CollectionReference coletion = FirebaseFirestore.instance
          .collection('Perfil')
          .doc(_user!.uid)
          .collection(colecao);

      await coletion.add(dados);
      return true;
    } catch (e) {
      throw ('Erro ao adicionar dados à coleção "Receituários": $e');
    }
    }

    Future<void> atualizarSaldo(double saldo) async{
        try {
    DocumentReference docUser = FirebaseFirestore.instance.collection('Perfil').doc(_user!.uid);
    await docUser.update({
      'saldo': saldo,
    });
    } catch (e) {
        throw "Error ao tentar atualizar campo Saldo $e";  
                }
    } 
  
}
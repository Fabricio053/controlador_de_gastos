import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DadosFirebase {
    final User? _user = FirebaseAuth.instance.currentUser;
    static final FirebaseFirestore fire = FirebaseFirestore.instance;

    Future<bool> adcionarDR(String colecao, double valor) async {
        try {
        CollectionReference coletion = FirebaseFirestore.instance
          .collection('Perfil')
          .doc(_user!.uid)
          .collection(colecao);

      await coletion.add({'valor':valor});
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

    Future<double> totalSaldo() async{
      return 0;
    }
    
    //totalDR = total de Despesas ou Receitas
    Future<double> totalDR(String colecao) async{
        double valor = 0;
      try { 
          QuerySnapshot<Map<String, dynamic>> dados = await fire.collection('Perfil')
          .doc(_user!.uid)
          .collection(colecao)
          .get();
          
        dados.docs
            .where((doc) => doc.exists && doc.data().isNotEmpty)
            .map((doc) {
              Map<String, dynamic> docData = doc.data() /*as Map<String, dynamic>*/;
              print(doc.data());
              valor += docData['valor'];

              return valor;
              
            });
            
      } catch (e) {
        throw ('Erro ao buscar dados da coleção: $colecao $e');
      }
      
      return valor;

    }

}
import 'package:untitled3/Exercicio1/Conta.dart';
import 'package:untitled3/Exercicio1/MixinConta.dart';

class ContaSalario extends Conta with BuscarContas{
  String _nuit;

  ContaSalario({
    required String nuit,
    required String nome,
    required int numeroConta,
    required double saldo,
    required String dataCriacao,

  })  : _nuit = nuit,
        super(
        nome: nome,
        numeroConta: numeroConta,
        saldo: saldo,
        dataCriacao: dataCriacao,
      );

  // Getters
  String get nuit => _nuit;


  // Setters
  set nuit(String nuit) {
    if (nuit.isNotEmpty) {
      _nuit = nuit;
    }
  }



  @override
  depositar(double valor) {


      saldo = saldo + valor;


    return saldo;
  }




  @override
  levanter(double valor) {
    if(saldo>valor) {
      saldo = saldo - (valor + 85);
    }
    else{
      print("Saldo insuficiente");
    }

    return saldo;
  }

  void imprimirContaSalario(){

    print("Nuit: $_nuit");

  }
}

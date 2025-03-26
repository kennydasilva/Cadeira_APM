import 'dart:ffi';

abstract class Conta {
  String _nome;
  int _numeroConta;
  double _saldo;
  String _dataCriacao;

  Conta({
    required String nome,
    required int numeroConta,
    required double saldo,
    required String dataCriacao,
  })  : _nome = nome,
        _numeroConta = numeroConta,
        _saldo = saldo,
        _dataCriacao = dataCriacao;


  String get nome => _nome;
  int get numeroConta => _numeroConta;
  double get saldo => _saldo;
  String get dataCriacao => _dataCriacao;


  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome;
    }
  }

  set numeroConta(int novoNumero) {
    if (novoNumero > 0) {
      _numeroConta = novoNumero;
    }
  }

  set saldo(double novoSaldo) {
    if (novoSaldo >= 0) {
      _saldo = novoSaldo;
    }
  }

  set dataCriacao(String novaData) {
    if (novaData.isNotEmpty) {
      _dataCriacao = novaData;
    }
  }

  depositar(double valor);




  levanter(double valor);

  void imprimir() {
    print("Nome: $_nome");
    print("Número da Conta: $_numeroConta");
    print("Saldo: $_saldo");
    print("Data de Criação: $_dataCriacao");
  }


}

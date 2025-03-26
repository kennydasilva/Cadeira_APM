import 'dart:io';

import 'package:untitled3/Exercicio1/Conta.dart';
import 'package:untitled3/Exercicio1/MixinConta.dart';

class ContaPrazo extends Conta with BuscarContas{
  String _dataMaturidade;
  String _flag;
  String _periodo;

  ContaPrazo({
    required String nome,
    required int numeroConta,
    required double saldo,
    required String dataCriacao,
    required String dataMaturidade,
    required String flag,
    required String periodo,
  })  : _dataMaturidade = dataMaturidade,
        _flag = flag,
        _periodo = periodo,
        super(
        nome: nome,
        numeroConta: numeroConta,
        saldo: saldo,
        dataCriacao: dataCriacao,
      );

  // Getters
  String get dataMaturidade => _dataMaturidade;
  String get flag => _flag;
  String get periodo => _periodo;

  // Setters
  set dataMaturidade(String novaData) {
    if (novaData.isNotEmpty) {
      _dataMaturidade = novaData;
    }
  }

  set flag(String novaFlag) {
    if (novaFlag.isNotEmpty) {
      _flag = novaFlag;
    }
  }

  set periodo(String novoPeriodo) {
    if (novoPeriodo.isNotEmpty) {
      _periodo = novoPeriodo;
    }
  }

  @override
  depositar(double valor) {
    if(valor>=4000) {

      saldo = saldo + valor;
    }
    else{
      print("nao e possivel depositar abaixo de 4000");
    }
    return saldo;
  }



  @override
  levanter(double valor) {
    if(saldo>valor) {
      saldo = saldo - (valor + 100);
    }
    else{
      print("Saldo insuficiente");
    }

    return saldo;
  }

  void imprimirContaPrazo(){

    print("Maturidade: $_dataMaturidade");
    print("Estado: $_flag");
    print("Periodo: $_periodo");
  }


}

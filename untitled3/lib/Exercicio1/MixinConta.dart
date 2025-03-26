import 'package:untitled3/Exercicio1/Conta.dart';

mixin class BuscarContas {
  Conta? buscarContaPorNumero(List<Conta> contas, int numeroConta) {
    for (var conta in contas) {
      if (conta.numeroConta == numeroConta) {
        return conta;
      }
    }
    return null;
  }

  double? transferir(Conta? contaOrigem, Conta? contaDestino, double valor) {
    if(contaOrigem !=null && contaDestino!=null) {
      if (contaOrigem.saldo > valor) {
        contaOrigem.saldo -= valor;
        contaDestino.saldo += valor;
      } else {
        print("Saldo insuficiente");
      }

      return contaOrigem.saldo;
    }
  }
}

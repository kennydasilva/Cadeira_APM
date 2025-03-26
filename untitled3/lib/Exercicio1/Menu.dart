import 'dart:io';

import 'package:untitled3/Exercicio1/Conta.dart';
import 'package:untitled3/Exercicio1/ContaPrazo.dart';
import 'package:untitled3/Exercicio1/ContaSalario.dart';
import 'package:untitled3/Exercicio1/MixinConta.dart';

ContaPrazo contaprazo=new ContaPrazo(nome: "kenny", numeroConta: 2, saldo: 10000, dataCriacao: "12/09/2015", dataMaturidade: "03/07/2023", flag: "renovavel", periodo: "2 anos");
ContaPrazo contaprazo1 =new  ContaPrazo(nome: "Alice", numeroConta: 3, saldo: 15000, dataCriacao: "10/05/2018", dataMaturidade: "15/08/2025", flag: "renovável", periodo: "3 anos",);
ContaPrazo contaprazo2 =new ContaPrazo(nome: "Carlos", numeroConta: 4, saldo: 20000, dataCriacao: "23/11/2017", dataMaturidade: "30/12/2024", flag: "não renovável", periodo: "5 anos",);
ContaPrazo contaprazo3 =new ContaPrazo(nome: "Beatriz", numeroConta: 5, saldo: 7500, dataCriacao: "05/02/2020", dataMaturidade: "10/06/2026", flag: "renovável", periodo: "2 anos",);
ContaPrazo contaprazo4 =new ContaPrazo(nome: "Eduardo", numeroConta: 6, saldo: 5000, dataCriacao: "17/09/2019", dataMaturidade: "22/03/2024", flag: "não renovável", periodo: "4 anos",);
ContaSalario contaSalario=new ContaSalario(nuit: "nuit", nome: "kenny", numeroConta: 2, saldo: 12000, dataCriacao: "02/072023");
ContaSalario contaSalario1=new ContaSalario(nuit: "nuit", nome: "Jorge", numeroConta: 1, saldo: 12000, dataCriacao: "02/072023");
ContaSalario contaSalario2=new ContaSalario(nuit: "nuit", nome: "americo", numeroConta: 3, saldo: 12000, dataCriacao: "02/072023");

ContaSalario contaSalario3=new ContaSalario(nuit: "nuit", nome: "melton", numeroConta: 4, saldo: 12000, dataCriacao: "02/072023");

ContaSalario contaSalario4=new ContaSalario(nuit: "nuit", nome: "aaa", numeroConta: 5, saldo: 12000, dataCriacao: "02/072023");

int a = 0;
int b = 0;
int c = 0;
int d = 0;
int nullo = 0;
int branco = 0;

void main() {
  menuPrincipal();
}

void menuPrincipal() {
  bool status = true;
  do {
    print("Menu Principal");
    print('1.Conta Salario');
    print("2.Conta Prazo");
    print("0.sair");

    String? op = stdin.readLineSync();
    if (op != null) {
      int opc = int.parse(op);

      switch (opc) {
        case 1:
          menucontaSalario();
          break;
        case 2:
          contaPrazo();
          break;
        case 0:
          status = false;
          break;
      }
    }
  } while (status);
}

void contaPrazo() {
  bool status = true;

  do {
    print("Menu Conta Prazo");
    print('1.Depositar');
    print("2.Levantar");
    print("3.Transferir");
    print("4.Detalhes Da ContaPrazo");
    print("5.Detalhes Da Conta");
    print("0.sair");



    List<Conta> banco=[];

    banco.add(contaprazo);
    banco.add(contaprazo1);
    banco.add(contaprazo2);
    banco.add(contaprazo3);
    banco.add(contaprazo4);

    String? op = stdin.readLineSync();
    if (op != null) {
      int opc = int.parse(op);

      switch (opc) {
        case 1:

          print("Digite o valor a depositar\n");
          String? v= stdin.readLineSync();
          if(v !=null) {
            double valor=double.parse(v);
            contaprazo.depositar(valor);
          }
          break;
        case 2:

          print("Digite o valor a levantar\n");
          String? v= stdin.readLineSync();
          if(v !=null) {
            double valor=double.parse(v);
            contaprazo.levanter(valor);
          }
          break;
        case 3:

            print("Digite o número da conta de destino:");
            String? numDestinoStr = stdin.readLineSync();
            print("Digite o valor a transferir:");
            String? valorStr = stdin.readLineSync();

            if (numDestinoStr != null && valorStr != null) {
              int numOrigem = 2;
              int numDestino = int.parse(numDestinoStr);
              double valor = double.parse(valorStr);


              Conta? contaDestino=contaprazo.buscarContaPorNumero(banco, numDestino);
              Conta? contaOrigem=contaprazo.buscarContaPorNumero(banco, numOrigem);

              contaprazo.transferir(contaOrigem, contaDestino, valor);


            }

          break;
        case 4:
           contaprazo.imprimirContaPrazo();

          break;
        case 5:
          contaprazo.imprimir();
          break;
        case 0:
          status = false;
          break;
      }
    }
  } while (status);
}

void menucontaSalario() {
  bool status = true;
  do {
    print("Menu Conta Salário");
    print('1.Depositar');
    print("2.Levantar");
    print("3.Transferir");
    print("4.Detalhes Da ContaSalario");
    print("5.Detalhes Da Conta");
    print("0.sair");



    List<Conta> banco=[];

    banco.add(contaSalario);
    banco.add(contaSalario1);
    banco.add(contaSalario2);
    banco.add(contaSalario3);
    banco.add(contaSalario4);


    String? op = stdin.readLineSync();
    if (op != null) {
      int opc = int.parse(op);

      switch (opc) {
        case 1:
          print("Digite o valor a depositar\n");
          String? v= stdin.readLineSync();
          if(v !=null) {
            double valor=double.parse(v);
            contaSalario.depositar(valor);
          }
          break;
        case 2:
          print("Digite o valor a levantar\n");
          String? v= stdin.readLineSync();
          if(v !=null) {
            double valor=double.parse(v);
            contaSalario.levanter(valor);
          }
          break;
        case 3:
          print("Digite o número da conta de destino:");
          String? numDestinoStr = stdin.readLineSync();
          print("Digite o valor a transferir:");
          String? valorStr = stdin.readLineSync();

          if (numDestinoStr != null && valorStr != null) {
            int numOrigem = 2;
            int numDestino = int.parse(numDestinoStr);
            double valor = double.parse(valorStr);


            Conta? contaDestino=contaSalario.buscarContaPorNumero(banco, numDestino);
            Conta? contaOrigem=contaSalario.buscarContaPorNumero(banco, numOrigem);

            contaSalario.transferir(contaOrigem, contaDestino, valor);


          }
          break;
        case 4:
          contaSalario.imprimirContaSalario();
          break;
        case 5:

          contaSalario.imprimir();
          break;
        case 0:
          status = false;
          break;
      }
    }
  } while (status);
}

import 'dart:io';
import 'dart:math';
double  ponderada=0;
double harmonica=0;
double geometrica=0;
double aritmetica=0;


void main(){
  menuprincipal();

}



void menuprincipal(){
  bool status=true;
  do{
    print("Digite o Salario");
    String? auxiliar=stdin.readLineSync();

    double salarioAtual=0;

    if(auxiliar!=null) {
      int salario= int.parse(auxiliar);

     if(salario<15000){
       double r=salario*0.15;
       salarioAtual=salario+r;
     }
     else{
       if(salario<=30000){
         double r=salario*0.10;
         salarioAtual=salario+r;
       }
       else{
         double r=salario*0.05;
         salarioAtual=salario+r;
       }
     }

     print("Salario Atual: $salarioAtual");

    }
  }while(status);
}


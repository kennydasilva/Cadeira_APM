import 'dart:io';
import 'dart:math';
double  gasolina=0;
double gasoleo=0;



void main(){
  menuprincipal();

}



void menuprincipal(){
  bool status=true;
  do{
    print("Digite o valor");
    String? vauxiliar=stdin.readLineSync();



    if(vauxiliar!=null) {
      double valor = double.parse(vauxiliar);

      print('1.Gasolina');
      print("2.Gasoleo");
      print("0.sair");


      double desconto=0;
      double prDesconto=0;
      double litros=0;

      String? op = stdin.readLineSync();
      if (op != null) {
        int opc = int.parse(op);

        switch (opc) {
          case 1:
            litros=valor/86.25;

            if(litros<=20){
               desconto=valor*0.03;
               prDesconto=valor-desconto;
            }
            else{
              desconto=valor*0.05;
              prDesconto=valor-desconto;
            }

            print(" valor a pagar: $prDesconto \n Desconto $desconto \n $litros litros \n");
            print("\n");
            break;
          case 2:
            litros=valor/91.23;

            if(litros<=20){
              desconto=valor*0.04;
              prDesconto=valor-desconto;
            }
            else{
              desconto=valor*0.06;
              prDesconto=valor-desconto;
            }

            print(" valor a pagar: $prDesconto \n Desconto $desconto \n $litros litros \n");

            print("\n");


            break;

          case 0:
            status = false;
            break;
        }
      }
    }
  }while(status);
}


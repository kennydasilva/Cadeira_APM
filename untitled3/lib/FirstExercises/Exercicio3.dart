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
    print("Escolha o valor de X");
    String? xauxiliar=stdin.readLineSync();

    print("\n Escolha o valor de Y");
    String? yauxiliar=stdin.readLineSync();

    print("\n Escolha o valor de Z");
    String? Zauxiliar=stdin.readLineSync();

    if(xauxiliar!=null && yauxiliar!=null) {
      int x = int.parse(xauxiliar);
      int y=int.parse(yauxiliar);
      int z=int.parse(yauxiliar);

      print("Escolha um dos calculos da media");
      print('1.Geometrica');
      print("2.Ponderada");
      print("3.Harmonica");
      print("4.Aritmetica");
      print("0.sair");

      String? op = stdin.readLineSync();
      if (op != null) {
        int opc = int.parse(op);

        switch (opc) {
          case 1:
            geometrica=pow(x*y*z,1/3).toDouble();
            print("Geometrica : $geometrica \n");
            break;
          case 2:
            ponderada=(x+(2*y)+(3*z))/6;
            print("Ponderada : $ponderada \n");

            break;
          case 3:
            harmonica=1/((1/x)+(1/y)+(1/z));
            print("Harmonica : $harmonica \n");

            break;
          case 4:
            aritmetica=(x+y+z)/3;
            print("Aritmetrica : $aritmetica \n");
            break;

          case 0:
            status = false;
            break;
        }
      }
    }
  }while(status);
}


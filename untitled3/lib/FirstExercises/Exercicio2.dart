import 'dart:io';
int  a=0;
int b=0;
int c=0;
int d=0;
int nullo=0;
int branco=0;

void main(){
  menuprincipal();
  resultados();
}



void menuprincipal(){
  bool status=true;
  do{
    print("digite o codigo do candidato");
    print('1.AAAA');
    print("2.BBB");
    print("3.CCC");
    print("4.DDD");
    print("3.Nullo");
    print("4.Branco");
    print("0.sair");

    String? op=stdin.readLineSync();
    if(op!=null) {

      int opc = int.parse(op);

      switch(opc){
        case 1:
            a+=1;
        break;
        case 2:
          b+=1;
          break;
        case 3:
          c+=1;
          break;
        case 4:
          d+=1;
          break;
        case 5:
          nullo+=1;
          break;
        case 6:
          branco+=1;
          break;
        case 0:
           status=false;
          break;

      }
    }
  }while(status);
}

void resultados(){
  print("Candidato AAA : $a votos");
  print("Candidato BBB : $b votos");
  print("Candidato CCC : $c votos");
  print("Candidato DDD : $d votos");
  print("Nullo : $nullo votos");
  print("Branco : $branco votos");
}
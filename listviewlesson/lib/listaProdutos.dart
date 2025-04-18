import 'package:flutter/material.dart';


class ListaProduto extends StatelessWidget {
  final List<String> produtos=[
    'Banana',
    'Cebola',
    'Laranja',
    'Batata',
    'Tomate',
  ];


  final List<String> descricoes=[
    'Fruto da Bananeira,geralmente amarelo e oblongo, de casca expessa, palpavel',
    'Allium cepa,forte em fibras, vitaminas e minerais',
    'Rica em vitamina c, e previne e trata doencas como anemia e diabetes',
    'Rica em vitamina c, e complexo B,energetico e rico em niacina',
    'Rica em vitamina c, potassio, ajuda na saude cardiovascular',
  ];

  final List<String> imagens=[
    'assets/banana.png',
    'assets/onion.png',
    'assets/orange.png',
    'assets/potato.png',
    'assets/tomate.png',
  ];


  ListaProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Produtos'),
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context,index){
          return ListTile(
            leading: Image.asset(imagens[index],
            width:60,
            height:60,
            fit:BoxFit.fill,),
            title: Text(produtos[index],
            style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold),),
            subtitle: Text(descricoes[index],
            style: TextStyle(fontSize: 14)),

          );
        },
      ),
    );
  }
}

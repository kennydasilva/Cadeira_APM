import 'package:exercicioaslistgrid/model/list_photo.dart';
import 'package:flutter/material.dart';


class MyGridView extends StatelessWidget {
  MyGridView({super.key});

  final gridItems=10;

  final ListphotoItems items=ListphotoItems();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemCount: items.imagens.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.amber[400],
              child:
              Image.asset(items.imagens[index],
                //width:60,
                //height:60,
                fit:BoxFit.fill,),

            ),

          );
        });

  }
}

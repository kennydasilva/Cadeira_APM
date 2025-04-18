import 'package:flutter/material.dart';
import 'package:listviewgridview/models/list_data_items.dart';
import 'package:listviewgridview/models/list_tile_item.dart';

class MyGridView extends StatelessWidget {
  MyGridView({super.key});

  final gridItems=10;

  final ListDataItems items=ListDataItems();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      itemCount: items.meses.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.amber[400],
              child:
                Text(items.meses[index].toString(),
                style: TextStyle(fontSize: 20,color: Colors.white),
                ),

          ),

          );
        });

  }
}

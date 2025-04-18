import 'package:flutter/material.dart';
import 'package:listviewgridview/models/list_data_items.dart';


class MyListView extends StatelessWidget {
  MyListView({super.key});

  final ListDataItems items=ListDataItems();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: items.meses.length,
        itemBuilder: (context,index){
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(
              width: 120,
              child: ListTile(
                title: Text(items.meses[index]),
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                     duration: Duration(seconds: 2,milliseconds: 5),
                     content: Text('Selecionado ${items.meses[index]}',
                     style:TextStyle(fontSize:16,color: Colors.blueAccent),
                   )
                  )
                  );
                },
              ),
            ),

            const SizedBox(
              width: 10.0,
            )
          ],
        );
        },);
  }
}

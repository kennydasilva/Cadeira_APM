import 'package:flutter/material.dart';
import 'package:listviewgridview/views/MyListView.dart';
import 'package:listviewgridview/views/MyGridView.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title='ListHorizontal';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
          title: const Text(title),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
              child: MyListView(),
            ),

            Expanded(child: MyGridView())
          ],
        ),

        backgroundColor: Colors.amberAccent[180],
      ),

      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
    );
  }
}

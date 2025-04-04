import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final data=MediaQuery.of(context);
    //final larguraAtual=MediaQuery.of(context).size.width;
    return  MaterialApp(
      home: Scaffold(
        body: Column (
          children: <Widget>[
        Container(
          color: Colors.red,
          height: data.size.height/2,
        ),
            Text(
              'Device pixel ratio ${data.devicePixelRatio}',
              style: TextStyle(fontSize: 22),
            )
          ]
        ),


      ),
    );
  }
}
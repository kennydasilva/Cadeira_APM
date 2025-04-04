import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final data=MediaQuery.of(context);
    final larguraAtual=MediaQuery.of(context).size.width;
    return  MaterialApp(
      home: Scaffold(


        backgroundColor:
        larguraAtual <600 ? Colors.deepPurple[300] : Colors.green[300],
        body: Center(
          child: Text(larguraAtual.toString()),
        ),
      ),
    );
  }
}
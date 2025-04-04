import 'package:flutter/material.dart';
import 'package:untitled3/Tela/TelaProduto.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final data=MediaQuery.of(context);
    final larguraAtual=MediaQuery.of(context).size.width;
    return  MaterialApp(
      home: TelaProduto(),
    );
  }
}
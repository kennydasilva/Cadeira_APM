import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
       appBar: AppBar(
         title: Text('Stateles Demo'),
       ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amberAccent,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.red,
              ),

              SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
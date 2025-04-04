/*import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final data=MediaQuery.of(context);
    final larguraAtual=MediaQuery.of(context).size.width;
    return  MaterialApp(
      home: Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 60,
          color: Colors.pink,
          child:  const Center(
            child: FittedBox(

              child: Text(
                'Flutter na Pratica',
                style: TextStyle(
                  fontSize: 55
                ),
              ),
            ),
          ),
        ),
      ),

      ),
    );
  }
}*/
/*-------------------------------------------------------------*/



import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final data=MediaQuery.of(context);
    final larguraAtual=MediaQuery.of(context).size.width;
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 350,
            height: 300,
            color: Colors.pink,

              child: FittedBox(
                fit:BoxFit.cover,
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.hardEdge,

                child: Container(
                  width: 400,
                  height: 600,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.yellow.withOpacity(.5),Colors.red],
                    ),
                  ),
                ),
                /*child: Text(
                'Flutter na Pratica',
                style: TextStyle(
                  fontSize: 55
                ),
              ),*/
              ),
            ),

        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Catalog'),
            backgroundColor: Colors.blue,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Container(
              color: Colors.black,
              height: 2.0,
            ),
          ),


        ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Expanded(child:

              Container(
                //width: 100,
                //height: 100,
                color: Colors.blue,
              ),),

              Expanded(child:

              Container(
                //width: 100,
                //height: 200,
                color: Colors.green,
              ),
              ),
              /*SizedBox(
                width: 20,
              ),*/
          Expanded(child:
              Container(
                //width: 100,
                //height: 100,
                color: Colors.orange,
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
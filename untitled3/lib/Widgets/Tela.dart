import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
        body:

        Center(
          //mainAxisAlignment: MainAxisAlignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(

                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Center(
                  child: Text(
                    'Imagem',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:[
              Container(
                width: 100,
                height: 100,

                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Center(
                  child: Text(
                    'Botao',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ),

              SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Center(
                  child: Text(
                    'Botao',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Center(
                        child: Text(
                          'Botao',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
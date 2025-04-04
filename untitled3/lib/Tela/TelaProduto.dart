import 'package:flutter/material.dart';

class TelaProduto extends StatelessWidget {
  const TelaProduto({super.key});

  @override
  Widget build(BuildContext context) {
    //final data=MediaQuery.of(context);

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Iphone 16'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),

        child: Column(
          children: [
            Image.asset("iphone16.png",
            width:300,
            height:250,),

            Text('Iphone 16 Pro Max Premium',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),),
            Text('doidhddhdhhdhuwdhwdhudhwhduwdgwdwgdwgdwdugwduwdiwudgwdwuid',
              style: TextStyle(fontSize: 12,)

              ),


          ],
        ),)
      ),
    );
  }
}
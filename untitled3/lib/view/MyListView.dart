import 'package:flutter/material.dart';
import 'package:untitled3/models/list_data_items.dart';

class MyListView extends StatelessWidget{
  MyListView({super.key});
  
  final ListDataItems items=ListDataItems();
  
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.meses.length,
      itemBuilder: (context,index){
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 120,
              child: ListTile(
                title: Text(items.meses[index]),
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration:Duration(seconds: 2,milliseconds: 5),
                        content:Text('Selecionado ${items.meses[index]}'),
                        style: TextStyle(fontSize: 16,color: Colors.blueAccent),
                      ),
                  )
                },
              ),

              const SizedBox(
                width: 10.0,
              ),
            ),
          ],
        )
      },
    )
  }

}






















import 'package:flutter/material.dart';
import 'views/provincias_list.dart';
import 'views/image_grid.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercícios Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Moçambique App'),
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info_outline),
            )
          ],
        ),
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            const SizedBox(
              height: 200,
              child: ProvinciasListView(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Galeria de Imagens',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ImageGridView(),
            ),
          ],
        ),
      ),
    );
  }
}






class Provincia {
  final String nome;
  final String descricao;
  final String imagemUrl;

  Provincia({required this.nome, required this.descricao, required this.imagemUrl});
}













import 'package:flutter/material.dart';

class ImageGridView extends StatelessWidget {
  final List<String> imageUrls = List.generate(
    10,
        (index) => 'https://picsum.photos/200/300?random=$index',
  );

  ImageGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Image.network(
          imageUrls[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}






import '../models/provincia.dart';

List<Provincia> provincias = [
  Provincia(
    nome: "Maputo",
    descricao: "Capital do país, localizada no sul.",
    imagemUrl: "Maputo.jpg",
  ),
  Provincia(
    nome: "Gaza",
    descricao: "Província rica em agricultura.",
    imagemUrl: "Gaza_Mozambique.png",
  ),
  Provincia(
    nome: "Inhambane",
    descricao: "Conhecida pelas praias turísticas.",
    imagemUrl: "Inhambane_city.jpg",
  ),

];







import 'package:flutter/material.dart';
import '../data/provincias_data.dart';

class ProvinciasListView extends StatelessWidget {
  const ProvinciasListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: provincias.length,
      itemBuilder: (context, index) {
        final provincia = provincias[index];
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 200,
            child: Column(
              children: [
                Image.network(
                  provincia.imagemUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    provincia.nome,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    provincia.descricao,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}










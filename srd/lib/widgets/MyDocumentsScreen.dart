import 'package:flutter/material.dart';
import 'package:srd/widgets/payment_page.dart';

class MyDocumentsScreen extends StatefulWidget {
  const MyDocumentsScreen({super.key});

  @override
  State<MyDocumentsScreen> createState() => _MyDocumentsScreenState();
}

class _MyDocumentsScreenState extends State<MyDocumentsScreen> {
  String statusSelecionado = 'Perdido'; // ou 'Encontrado'

  final List<Map<String, dynamic>> documentos = [
    {
      'nome': 'Jorge Alberto Moraes',
      'tipo': 'BI',
      'status': 'Perdido',
      'icone': Icons.check_circle,
      'iconeCor': Colors.blue,
    },
    {
      'nome': 'Jorge Alberto Moraes',
      'tipo': 'PP',
      'status': 'Perdido',
      'icone': Icons.check_circle,
      'iconeCor': Colors.blue,
    },
    {
      'nome': 'Jorge Alberto Moraes',
      'tipo': 'Nuit',
      'status': 'Perdido',
      'icone': Icons.document_scanner,
      'iconeCor': Colors.yellow,
    },
    {
      'nome': 'Armando Tores Zacarias',
      'tipo': 'BI',
      'status': 'Encontrado',
      'icone': Icons.cancel,
      'iconeCor': Colors.red,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final docsFiltrados = documentos
        .where((doc) => doc['status'] == statusSelecionado)
        .toList();

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Meus Documentos
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Voltar + Título
            Row(
              children: const [
                Icon(Icons.arrow_back, size: 28),
                SizedBox(width: 12),
                Text(
                  'Documentos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Filtros Perdido / Encontrado
            Container(
              decoration: BoxDecoration(
                color: Colors.teal.shade300,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _filtroBotao('Perdido', Icons.cancel_outlined, Colors.red),
                  _filtroBotao('Encontrado', Icons.search, Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Lista de Documentos
            Expanded(
              child: ListView.builder(
                itemCount: docsFiltrados.length,
                itemBuilder: (context, index) {
                  final doc = docsFiltrados[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.teal.shade300,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          doc['status'] == 'Perdido'
                              ? Icons.cancel_outlined
                              : Icons.search,
                          color: doc['status'] == 'Perdido'
                              ? Colors.red
                              : Colors.blue,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            doc['nome'],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          doc['tipo'],
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 12),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => PaymentPage(amount: 100, documentId: 'abc123'),
                              ),
                            );
                          },
                          child: const Text(
                            'Detalhes',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Icon(doc['icone'], color: doc['iconeCor']),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _filtroBotao(String titulo, IconData icone, Color cor) {
    final selecionado = statusSelecionado == titulo;
    return InkWell(
      onTap: () {
        setState(() {
          statusSelecionado = titulo;
        });
      },
      child: Row(
        children: [
          Icon(
            icone,
            color: cor,
          ),
          const SizedBox(width: 6),
          Text(
            titulo,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selecionado ? Colors.black : Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

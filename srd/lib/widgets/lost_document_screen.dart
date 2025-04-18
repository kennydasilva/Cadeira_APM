import 'package:flutter/material.dart';

class LostDocumentScreen extends StatelessWidget {
  const LostDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Ícone da casa ativo
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Botão de voltar
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),

            const SizedBox(height: 10),

            // Ícone ilustrativo
            Center(
              child: Image.asset(
                'assets/images/document_icon.png', // 📝 substitui pela imagem real no projeto
                height: 100,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Documento Perdido',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 24),

            // Campo de Nome
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Colors.grey),
                hintText: 'Nome',
                hintStyle: const TextStyle(color: Colors.grey),
                border: const UnderlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),

            // Campo de Tipo de Documento
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.description, color: Colors.grey),
                hintText: 'Tipo de Documento',
                hintStyle: const TextStyle(color: Colors.grey),
                border: const UnderlineInputBorder(),
              ),
            ),

            const SizedBox(height: 32),

            // Botão Submeter
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Aqui pode-se salvar ou submeter os dados
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4CCBC9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  'Submeter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

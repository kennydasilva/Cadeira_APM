import 'package:flutter/material.dart';

class FoundDocumentScreen extends StatelessWidget {
  const FoundDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),

            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),

            const SizedBox(height: 10),

            // Ícone ou imagem central
            Center(
              child: Image.asset(
                'assets/images/document_found.png', // Atualiza com a imagem correta
                height: 100,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Documento Encontrado',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 24),

            // Nome
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Colors.grey),
                hintText: 'Nome',
                hintStyle: const TextStyle(color: Colors.grey),
                border: const UnderlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            // Tipo de Documento
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.description, color: Colors.grey),
                hintText: 'Tipo de Documento',
                hintStyle: const TextStyle(color: Colors.grey),
                border: const UnderlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            // Contacto
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone_android, color: Colors.grey),
                hintText: '844600206',
                hintStyle: const TextStyle(color: Colors.grey),
                border: const UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),

            const SizedBox(height: 16),

            // Foto do Documento
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.image, color: Colors.grey),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.attach_file, color: Colors.grey),
                  onPressed: () {
                    // Lógica para adicionar imagem
                  },
                ),
                hintText: 'Foto do Documento',
                hintStyle: const TextStyle(color: Colors.grey),
                border: const UnderlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            // Localização
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.location_on, color: Colors.grey),
                hintText: 'Localização',
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
                  // lógica de submissão
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
            ),
          ],
        ),
      ),
    );
  }
}

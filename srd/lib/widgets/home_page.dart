import 'package:flutter/material.dart';
import 'package:srd/widgets/MyDocumentsScreen.dart';
import 'lost_document_screen.dart';
import 'found_document_screen.dart';
//import 'lost_document_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Aqui podes navegar para outras páginas se quiseres
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          height: 40,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            _buildCard(
              icon: Icons.badge,
              label: 'Documentos Encontrados',
              color: Colors.teal,
              onTap: () {
                // navegação para a tela de documentos encontrados
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoundDocumentScreen()),
                );
              },
            ),
            _buildCard(
              icon: Icons.wallet,
              label: 'Documentos Perdidos',
              color: Colors.orange,
              onTap: () {
                // navegação para a tela de documentos perdidos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LostDocumentScreen()),
                );
              },
            ),
            _buildCard(
              icon: Icons.bar_chart,
              label: 'Relatórios',
              color: Colors.blueAccent,
              onTap: () {
                // navegação para a tela de relatórios
              },
            ),
            _buildCard(
              icon: Icons.folder,
              label: 'Meus Documentos',
              color: Colors.amber[700]!,
              onTap: () {
                // navegação para a tela dos documentos do usuário
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDocumentsScreen()),
                );

              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48, color: color),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

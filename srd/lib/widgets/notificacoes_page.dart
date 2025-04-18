import 'package:flutter/material.dart';

class NotificacoesPage extends StatelessWidget {
  const NotificacoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text('Notificações', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionTitle("Hoje"),
          _buildNotificationTile(
            icon: Icons.chat_bubble_outline,
            text: "Boa notícia! Um documento com os dados que combinam com o teu registo foi encontrado.",
            isRead: false,
          ),
          _buildNotificationTile(
            icon: Icons.chat_bubble_outline,
            text: "O BI com nome João Alberto foi registado como encontrado. Verifica se é o teu.",
            isRead: true,
          ),
          _buildSectionTitle("Ontem"),
          _buildNotificationTile(
            icon: Icons.search,
            text: "Um novo documento semelhante ao que perdeste foi registado. Confere agora!",
            isRead: true,
          ),
          _buildNotificationTile(
            icon: Icons.bar_chart,
            text: "Esta semana foram encontrados 25 documentos. Verifica se o teu está na lista.",
            isRead: true,
          ),
          _buildSectionTitle("24, Março"),
          _buildNotificationTile(
            icon: Icons.calendar_today,
            text: "Já faz 7 dias desde que registaste teu documento como perdido. Ainda não foi encontrado..........",
            isRead: false,
          ),
          _buildNotificationTile(
            icon: Icons.location_on_outlined,
            text: "Um documento encontrado foi registado próximo de tua localização.",
            isRead: true,
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const Expanded(child: Divider(thickness: 0.5, indent: 8)),
        ],
      ),
    );
  }

  Widget _buildNotificationTile({
    required IconData icon,
    required String text,
    required bool isRead,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isRead ? Colors.grey[200] : const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: isRead ? Colors.grey : Colors.black54),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: isRead ? Colors.grey : Colors.black,
                fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.notifications,
            color: isRead ? Colors.grey[400] : Colors.black,
          )
        ],
      ),
    );
  }
}

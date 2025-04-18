import 'package:flutter/material.dart';

class DocumentDetailPage extends StatelessWidget {
  final String nome;
  final String tipoDocumento;
  final String numeroDocumento;
  final String localizacao;

  const DocumentDetailPage({
    Key? key,
    required this.nome,
    required this.tipoDocumento,
    required this.numeroDocumento,
    required this.localizacao,
  }) : super(key: key);

  void _confirmarRecebimento(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Documento Recebido"),
        content: Text("Confirmaste o recebimento do documento com sucesso."),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
            child: Text("OK"),
          )
        ],
      ),
    );
  }

  Widget _buildDisabledField({required IconData icon, required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey.shade400, size: 30),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Detalhes", style: TextStyle(color: Colors.black)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        currentIndex: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildDisabledField(icon: Icons.person, text: nome),
            _buildDisabledField(icon: Icons.description, text: tipoDocumento),
            _buildDisabledField(icon: Icons.phone_android, text: numeroDocumento),
            _buildDisabledField(icon: Icons.image, text: "Ver a imagem"),
            _buildDisabledField(icon: Icons.location_on, text: localizacao),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _confirmarRecebimento(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal.shade400,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: Text(
                "Confirmar Recebimento",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

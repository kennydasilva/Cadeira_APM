import 'package:flutter/material.dart';
import 'package:srd/widgets/document_detail_page.dart';

class PaymentPage extends StatefulWidget {
  final int amount;
  final String documentId;

  const PaymentPage({Key? key, required this.amount, required this.documentId}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController _numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _confirmPayment() {
    if (_formKey.currentState!.validate()) {
      // Aqui podes chamar a API de pagamento real ou simular
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Pagamento enviado'),
          content: Text('O pagamento de ${widget.amount} MZN foi enviado para o número ${_numberController.text}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o dialog
                //Navigator.of(context).pop(); // Volta para a página anterior
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (_) => DocumentDetailPage(
                  nome: "Jorge Alberto Moraes",
                  tipoDocumento: "Bilhete de Identidade",
                  numeroDocumento: "844600206",
                  localizacao: "Ponto Final, Maputo",
                ),
                ),
                );
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text('Pagamentos', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
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
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.teal.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("MPesa", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(width: 8),
                      Image.asset('assets/vodacom.png', width: 32), // Certifique-se de ter esta imagem
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Valor : ${widget.amount} mzn", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Numero", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _numberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) return "Insira o número";
                      if (!RegExp(r'^8[4-7][0-9]{7}$').hasMatch(value)) return "Número inválido";
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DocumentDetailPage(
                            nome: "Jorge Alberto Moraes",
                            tipoDocumento: "Bilhete de Identidade",
                            numeroDocumento: "844600206",
                            localizacao: "Ponto Final, Maputo",
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Text('Confirmar', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

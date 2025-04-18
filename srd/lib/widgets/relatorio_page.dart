import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class RelatorioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatório', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // índice do item "Relatório"
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildChartSection(),
            SizedBox(height: 24),
            _buildDocumentCards(),
            SizedBox(height: 24),
            _buildLocalMaisAchados(),
          ],
        ),
      ),
    );
  }

  Widget _buildChartSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(Icons.bar_chart, color: Colors.blue),
            SizedBox(width: 8),
            Text(
              'Estatísticas do Sistema',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 200, child: _buildLineChart()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _Legenda(cor: Colors.blue, texto: 'Encontrados'),
            SizedBox(width: 16),
            _Legenda(cor: Colors.teal, texto: 'Pendentes'),
          ],
        )
      ],
    );
  }

  Widget _buildLineChart() {
    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                const semanas = ['Sem 1', 'Sem 2', 'Sem 3', 'Sem 4'];
                return Text(semanas[value.toInt()]);
              },
              interval: 1,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true, interval: 25),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 25),
              FlSpot(1, 50),
              FlSpot(2, 70),
              FlSpot(3, 90),
            ],
            isCurved: true,
            color: Colors.blue,
            dotData: FlDotData(show: false),
          ),
          LineChartBarData(
            spots: const [
              FlSpot(0, 15),
              FlSpot(1, 30),
              FlSpot(2, 28),
              FlSpot(3, 50),
            ],
            isCurved: true,
            color: Colors.teal,
            dotData: FlDotData(show: false),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _InfoCard(
          icon: Icons.description,
          title: 'Documentos Encontrados',
          count: '150',
          iconColor: Colors.blue,
        ),
        _InfoCard(
          icon: Icons.warning,
          title: 'Documentos Pendentes',
          count: '20',
          iconColor: Colors.amber,
        ),
      ],
    );
  }

  Widget _buildLocalMaisAchados() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Row(
          children: [
            Icon(Icons.location_on, color: Colors.blue),
            SizedBox(width: 8),
            Text(
              'Locais com Mais Achados',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text('Maputo (50)'),
        Text('Matola (30)'),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String count;
  final Color iconColor;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.count,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFF6F9FE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: iconColor, size: 32),
          SizedBox(height: 8),
          Text(title, textAlign: TextAlign.center),
          SizedBox(height: 8),
          Text(count, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _Legenda extends StatelessWidget {
  final Color cor;
  final String texto;

  const _Legenda({required this.cor, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 12, height: 12, color: cor),
        SizedBox(width: 4),
        Text(texto),
      ],
    );
  }
}

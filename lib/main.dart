import 'package:flutter/material.dart';
import 'components/title_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 30),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Colors.blue;

    Widget titleSection = Card(
      elevation: 3,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            const Expanded(child: TitleArea()),
            Icon(Icons.star, color: Colors.red[400]),
            const SizedBox(width: 4),
            const Text(
              '41',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ],
        ),
      ),
    );

    Widget textSection = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: const Text(
        'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. Situado a 1.578 '
        'metros acima do nível do mar, é um dos lagos alpinos mais amplos. Um passeio de '
        'teleférico a partir de Kandersteg, seguido por meia hora de caminhada por pastagens e '
        'floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. As '
        'atividades desfrutadas aqui incluem remo e andar no tobogã de verão.',
        style: TextStyle(fontSize: 15, height: 1.5),
        softWrap: true,
      ),
    );

    Widget buttonSection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'LIGAR'),
          _buildButtonColumn(color, Icons.near_me, 'ROTA'),
          _buildButtonColumn(color, Icons.share, 'COMPARTILHAR'),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demonstração de layout Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demonstração de layout Flutter'),
          backgroundColor: Colors.blue[700],
          elevation: 4,
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: StatelessWidgetExemplo("Olá Flutter - MaterialApp")),
  );
}

class StatelessWidgetExemplo extends StatelessWidget {
  final String appBarTitle;

  // Construtor da classe
  const StatelessWidgetExemplo(this.appBarTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: Stack(
        children: [
          Container(width: 250, height: 250, color: Colors.blue),
          Container(width: 200, height: 200, color: Colors.red),
          Container(width: 150, height: 150, color: Colors.yellow),
        ],
      ),
    );
  }
}

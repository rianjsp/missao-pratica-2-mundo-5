import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: StatelessWidgetExemplo("Olá Flutter - MaterialApp")),
  );
}

class StatelessWidgetExemplo extends StatelessWidget {
  final String appBarTitle;

  // Construtor da classe
  StatelessWidgetExemplo(this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: ListView(
        children: [
          ListTile(
            title: Text('Flutter'),
            subtitle: Text('Tudo e um widget'),
            leading: Icon(Icons.flash_on, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            title: Text('Dart'),
            subtitle: Text('É Fácil'),
            leading: Icon(Icons.mood, color: Colors.green),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            title: Text('Firebase'),
            subtitle: Text('Combina com Flutter'),
            leading: Icon(Icons.whatshot, color: Colors.orange),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}

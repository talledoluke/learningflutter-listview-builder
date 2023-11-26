import 'package:flutter/material.dart';
import 'function.dart';

// https://api.flutter.dev/flutter/material/Icons-class.html

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> names = ['Luke', 'Wilfred', 'Baja', 'Talledo'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // enable dark modez
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.home),
              SizedBox(width: 8),
              Text(' Hello Kalibutan'),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            String name = names[index];
            int alphabetCount = countAlphabets(name);
            return ListTile(
              leading: Icon(Icons.account_circle), // lingin nga ferson icon
              title: Text(name),
              subtitle: Text('$alphabetCount Letters'),
            );
          },
        ),
      ),
    );
  }
}
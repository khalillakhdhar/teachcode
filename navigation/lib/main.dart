import 'package:flutter/material.dart';
import 'package:navigation/second.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Flutter',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Première Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Aller à la deuxième page'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

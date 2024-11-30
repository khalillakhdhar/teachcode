import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
// partie code
  final String nom = "Lakhdhar";
  final String prenom = "Khalil";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome app"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "hello $nom $prenom",
              style: const TextStyle(
                  color: Color.fromARGB(255, 8, 50, 84),
                  fontWeight: FontWeight.bold),
            ),
            const Text("this is my first app"),
            ElevatedButton(
                onPressed: () {
                  print("clicked");
                },
                child: Text("click me here")),
            FloatingActionButton(
              onPressed: () {
                print("floating");
              },
              child: Icon(Icons.home),
            ),
            Image.asset('assets/images/flutter_logo.jpg')
          ],
        )),
      ),
    );
  }
}

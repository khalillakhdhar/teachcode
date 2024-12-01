import 'package:drawersandnavs/screens/addProduct.dart';
import 'package:drawersandnavs/screens/home.dart';
import 'package:drawersandnavs/screens/page1.dart';
import 'package:drawersandnavs/screens/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/products': (context) => AddProduct()
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfoliostatique/screens/details_screen.dart';
import 'package:portfoliostatique/screens/home_screen.dart';
import 'package:portfoliostatique/screens/plan_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "my portofolio",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/details',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
        '/plan': (context) => PlanScreen()
      },
    );
  }
}

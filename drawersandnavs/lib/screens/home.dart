import 'package:drawersandnavs/drawer/customdrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer avec Routage'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text("Bienvenue sur la page d'accueil"),
      ),
    );
  }
}

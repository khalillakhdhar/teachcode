import 'package:drawersandnavs/drawer/customdrawer.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Ceci est la page 1'),
      ),
    );
  }
}

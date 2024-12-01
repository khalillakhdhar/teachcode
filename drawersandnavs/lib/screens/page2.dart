import 'package:drawersandnavs/drawer/customdrawer.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Ceci est la page 2'),
      ),
    );
  }
}

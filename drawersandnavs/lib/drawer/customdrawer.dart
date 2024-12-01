import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              // color: Colors.blue,
            ),
            title: Text('Accueil'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.pageview),
            title: Text('Page 1'),
            onTap: () {
              Navigator.pushNamed(context, '/page1');
            },
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('Page 2'),
            onTap: () {
              Navigator.pushNamed(context, '/page2');
            },
          ),
        ],
      ),
    );
  }
}

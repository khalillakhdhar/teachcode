import 'package:drawersandnavs/drawer/customdrawer.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'title': 'Laptop',
      'description': 'High-performance laptop for professionals.',
      'image': 'https://via.placeholder.com/100'
    },
    {
      'title': 'Smartphone',
      'description': 'Latest model with cutting-edge features.',
      'image': 'https://via.placeholder.com/100'
    },
    {
      'title': 'Headphones',
      'description': 'Noise-cancelling headphones for immersive sound.',
      'image': 'https://via.placeholder.com/100'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      drawer: CustomDrawer(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.computer),
              title: Text(product['title']!),
              subtitle: Text(product['description']!),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }
}

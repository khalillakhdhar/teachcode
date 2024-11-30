import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste de Produits',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(title: 'Exemple de mise en page complexe'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste de Produits")),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
        children: <Widget>[
          ProductBox(
            name: "iPhone",
            description: "L'iPhone est un téléphone haut de gamme.",
            price: 55000,
            image: "iphone.png",
          ),
          ProductBox(
            name: "Android",
            description: "Android est un téléphone élégant.",
            price: 10000,
            image: "android.png",
          ),
          ProductBox(
            name: "Tablet",
            description: "Une tablette est idéale pour les réunions.",
            price: 25000,
            image: "tablet.png",
          ),
          ProductBox(
            name: "Laptop",
            description: "Un ordinateur portable est très populaire.",
            price: 35000,
            image: "laptop.png",
          ),
          ProductBox(
            name: "Desktop",
            description: "Un ordinateur de bureau est utilisé au quotidien.",
            price: 10000,
            image: "computer.png",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 110,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/" + image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Prix : ${this.price.toString()}"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

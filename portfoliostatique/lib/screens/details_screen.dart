import 'package:flutter/material.dart';
import 'package:portfoliostatique/widgets/custom_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("détailles"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomCard(
            title: 'Dr khalil Lakhdhar',
            subtitle: "Développeur et formateur",
            icon: Icons.person,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email: khalillakhdhar@gmail.com",
                  style: TextStyle(fontSize: 16),
                )
              ],
            )),
      ),
    );
  }
}

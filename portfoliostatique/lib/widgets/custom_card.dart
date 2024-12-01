import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget content;
  const CustomCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                content
              ],
            )
          ],
        ),
      ),
    );
  }
}

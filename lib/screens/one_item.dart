import 'package:flutter/material.dart';
import 'package:inventory_flutter/models/item.dart';

class DetailsPage extends StatelessWidget {
  final Item item;

  DetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details Page',
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${item.fields.name}",
              style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text("Deskripsi: ${item.fields.description}"),
            const SizedBox(height: 5),
            Text("Amount: ${item.fields.amount}"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
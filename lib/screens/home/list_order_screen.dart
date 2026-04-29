import 'package:flutter/material.dart';

class ListOrderScreen extends StatelessWidget {
  const ListOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Order"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 5, // contoh data
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text("Order #${index + 1}"),
              subtitle: const Text("Customer: John Doe"),
              trailing: const Text("Rp 50.000"),
            ),
          );
        },
      ),
    );
  }
}

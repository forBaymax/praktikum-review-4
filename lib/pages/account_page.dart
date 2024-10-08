import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: const Text("Acoount Page"),
        ),
        body: const Center(
          child: Text(
            "Acoount Page",
            style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
                fontSize: 50
          ),
        ),
      )
    );
  }
}
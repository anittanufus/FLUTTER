import 'package:flutter/material.dart';

class Btns extends StatelessWidget {
  const Btns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Btns Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Tambahkan logika untuk button
          },
          child: const Text('KLIK'),
        ),
      ),
    );
  }
}
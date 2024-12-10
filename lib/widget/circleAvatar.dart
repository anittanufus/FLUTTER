import 'package:flutter/material.dart';

class Circledart extends StatelessWidget {
  const Circledart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colored Circle Avatars'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 50, 216, 238), // Warna hijau
              radius: 50.0, // Ukuran lingkaran
            ),
            SizedBox(height: 20), // Jarak antar avatar
            CircleAvatar(
              backgroundColor: Colors.yellow, // Warna kuning
              radius: 50.0, // Ukuran lingkaran
            ),
            SizedBox(height: 20), // Jarak antar avatar
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 255, 175, 251), // Warna orange
              radius: 50.0, // Ukuran lingkaran
            ),
          ],
        ),
      ),
    );
  }
}
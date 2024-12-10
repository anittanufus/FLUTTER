import 'package:flutter/material.dart';

class IconDart extends StatelessWidget { // Ubah nama kelas menjadi IconDartample
  const IconDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons Example'),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            Icons.favorite,
            color: Color.fromARGB(255, 238, 131, 123),
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.audiotrack,
            color: Color.fromARGB(255, 0, 0, 0),
            size: 30.0,
          ),
          Icon(
            Icons.beach_access,
            color: Color.fromARGB(255, 76, 172, 175),
            size: 36.0,
          ),
        ],
      ),
    );
  }
}
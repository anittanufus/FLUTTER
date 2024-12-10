import 'package:flutter/material.dart';

class textDart extends StatelessWidget {
  const textDart ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: const [
          Text(
            'Hello, World!',
            style: TextStyle(
              color: Color.fromARGB(255, 175, 135, 76),
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
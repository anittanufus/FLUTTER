import 'package:flutter/material.dart';

void main() => runApp(const rowDart());

class rowDart extends StatelessWidget {
  const rowDart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('rowDartample - BasicWidget'),
          backgroundColor: const Color.fromARGB(255, 175, 124, 76),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Jarak seimbang antar widget
            crossAxisAlignment: CrossAxisAlignment.center, // Semua widget sejajar di tengah
            children: [
              Container(
                color: Color.fromARGB(255, 230, 137, 160),
                width: 60,
                height: 60,
                child: const Center(
                  child: Text(
                    'A',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 243, 240, 33),
                width: 60,
                height: 60,
                child: const Center(
                  child: Text(
                    'B',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 113, 227, 247),
                width: 60,
                height: 60,
                child: const Center(
                  child: Text(
                    'C',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(Aspectratio());
}

class Aspectratio extends StatelessWidget {
  const Aspectratio({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan label debug
      home: Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio Example"),
          centerTitle: true,
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9, // Rasio aspek 16:9 (lebar:tinggi)
            child: Container(
              color: Color.fromARGB(255, 151, 104, 42), // Latar belakang biru
              child: Center(
                child: Text(
                  "16:9 Aspect Ratio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
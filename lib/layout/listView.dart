import 'package:flutter/material.dart';

void main() {
  runApp(const LIstV());
}

class LIstV extends StatelessWidget {
  const LIstV({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Horizontal ListView Example'),
        ),
        body: HorizontalListView(), // Menampilkan ListView Horizontal
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  HorizontalListView({super.key});

  final List<String> categories = [
    'Promo',
    'Ice Cream',
    'Coffee',
    'Cafe',
    'Profil'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Pastikan scroll horizontal
      child: Row(
        children: List.generate(
          categories.length,
          (index) {
            return GestureDetector(
              onTap: () {
                print('Tapped on: ${categories[index]}');
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8), // Margin antar item
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  width: 120, // Lebar item tetap
                  height: 80, // Tentukan tinggi agar tidak meluas
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 117, 70, 38), // Warna latar belakang item
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 8,
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
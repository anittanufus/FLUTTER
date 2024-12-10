import 'package:flutter/material.dart';

void main() => runApp(const SilverAppBar());

class SilverAppBar extends StatelessWidget {
  const SilverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SliverAppBarExample(),
    );
  }
}

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar
          SliverAppBar(
            expandedHeight: 200.0, // Ukuran tinggi maksimal saat diperluas
            floating: false, // Apakah AppBar akan melayang saat scroll
            pinned: true, // Menjaga AppBar tetap terlihat saat scroll
            backgroundColor: const Color.fromARGB(255, 175, 132, 76), // Warna latar belakang AppBar
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('SliverAppBar Example'),
              background: FlutterLogo(),
            ),
          ),
          // Konten gulir
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item ${1 + index}'),
                );
              },
              childCount: 50, // Jumlah item dalam list
            ),
          ),
        ],
      ),
    );
  }
}
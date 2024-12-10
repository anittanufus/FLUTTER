import 'package:flutter/material.dart';

void main() => runApp(const drawerdart());

class drawerdart extends StatelessWidget {
  const drawerdart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Example'),
        backgroundColor: Color.fromARGB(255, 156, 119, 70),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 175, 129, 76),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Beranda'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                // Tambahkan aksi untuk tombol Home
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                // Tambahkan aksi untuk tombol Search
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                // Tambahkan aksi untuk tombol Settings
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                // Tambahkan aksi untuk tombol Logout
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
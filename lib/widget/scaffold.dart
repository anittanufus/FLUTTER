import 'package:flutter/material.dart';

/// Flutter code sample for [ScaffoldDart].

void main() => runApp(const ScaffoldDarts());

class ScaffoldDarts extends StatelessWidget {
  const ScaffoldDarts({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldDartExample(),
    );
  }
}

class ScaffoldDartExample extends StatefulWidget {
  const ScaffoldDartExample({super.key});

  @override
  State<ScaffoldDartExample> createState() => _ScaffoldDartExampleState();
}

class _ScaffoldDartExampleState extends State<ScaffoldDartExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      backgroundColor: Color.fromARGB(255, 214, 161, 100),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
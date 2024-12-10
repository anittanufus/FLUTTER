import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnsL());
}

class ColumnsL extends StatelessWidget {
  const ColumnsL({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Food'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hot Dog',
                style: TextStyle(
                  color: Color.fromARGB(255, 247, 0, 0),
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rp 50.000',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 87, 85, 84),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
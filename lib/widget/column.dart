import 'package:flutter/material.dart';

class column extends StatelessWidget {
  const column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Example'),
      ),
      body: const Column(
        children: <Widget>[
          Text('Deliver features faster'),
          Text('Craft beautiful UIs'),
          Expanded(
            child: FittedBox(
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }
}
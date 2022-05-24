import 'package:flutter/material.dart';

void main() {
  runApp(const SlackerApp());
}

class SlackerApp extends StatelessWidget {
  const SlackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hola Flutter'),
        ),
      ),
    ); //Scaffold
  }
}

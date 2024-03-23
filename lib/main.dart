import 'package:flutter/material.dart';
import 'package:mobflix/screens/home.dart';

void main() {
  runApp(const Mobank());
}

class Mobank extends StatelessWidget {
  const Mobank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobank',
      theme: ThemeData.light(),
      home: Home(),
    );
  }
}

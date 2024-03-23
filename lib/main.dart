import 'package:flutter/material.dart';
import 'package:mobflix/screens/home.dart';
import 'package:mobflix/themes/my_themes.dart';

void main() {
  runApp(const Mobank());
}

class Mobank extends StatelessWidget {
  const Mobank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobank',
      theme: MyTheme,
      home: Home(),
    );
  }
}

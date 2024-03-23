import 'package:flutter/material.dart';
import 'package:mobflix/components/box_card.dart';
import 'package:mobflix/components/sections/header.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Header(),
          BoxCard(
            boxContent: Text('Olá mundo'),
          )
        ],
      ),
    );
  }
}

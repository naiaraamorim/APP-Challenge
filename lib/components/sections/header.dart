import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobank'),
      ),
      body: const Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('\$ 1000.00'),
              Text('Balanço Disponível'),
            ],
          ),
          Icon(Icons.account_circle)
        ],
      ),
    );
  }
}

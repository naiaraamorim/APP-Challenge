import 'package:flutter/material.dart';
import 'package:mobflix/components/sections/header.dart';
import 'package:mobflix/screens/recent_activity.dart';

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
        children: <Widget>[
          Header(),
          RecentActivity(),
        ],
      ),
    );
  }
}

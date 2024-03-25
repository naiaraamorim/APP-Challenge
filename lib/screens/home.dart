import 'package:flutter/material.dart';
import 'package:mobflix/components/sections/account_actions.dart';
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
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Header(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: RecentActivity(),
          ),
          AccountActions(),
        ],
      ),
    );
  }
}

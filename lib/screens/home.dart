import 'package:flutter/material.dart';
import 'package:mobflix/components/box_card.dart';
import 'package:mobflix/components/color_dot.dart';
import 'package:mobflix/components/sections/header.dart';
import 'package:mobflix/themes/theme_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Header(),
          BoxCard(
            boxContent: ColorDot(color: ThemeColors.recentActivity['spent']),
          )
        ],
      ),
    );
  }
}

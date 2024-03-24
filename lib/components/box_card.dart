import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;

  const BoxCard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[4],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: boxContent,
    );
  }
}

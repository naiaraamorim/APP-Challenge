import 'package:flutter/material.dart';
import 'package:mobflix/themes/theme_colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors.headerGradient),
        //color: Color.fromARGB(255, 77, 141, 69),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Text(
                //   '\$ 1000.00',
                //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                // ),
                Text.rich(
                  TextSpan(
                    text: '\$',
                    children: <TextSpan>[
                      TextSpan(
                        text: '1000.00',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Text(
                  'Balanço Disponível',
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 50,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

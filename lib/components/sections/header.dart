import 'package:flutter/material.dart';

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
            colors: <Color>[
              Colors.lightGreen,
              Colors.green,

              // Color.fromRGBO(103, 99, 234, 1),
              // Color.fromRGBO(155, 105, 254, 1),
              // Color.fromRGBO(195, 107, 255, 1),
            ]),
        //color: Color.fromARGB(255, 77, 141, 69),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
      ),
      child: const Padding(
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
                    style: TextStyle(fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: '1000.00',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Text(
                  'Balanço Disponível',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}

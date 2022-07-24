import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    Key? key,
    required this.size,
    required this.i,
    required this.line1,
    required this.line2,
    required this.line3,
    required this.icon,
  }) : super(key: key);

  final Size size;
  final int i;

  final String line1;
  final String line2;
  final String line3;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2.5,
      margin: const EdgeInsets.only(right: 20, top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: i.isEven ? Colors.blue : Colors.red,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: i.isEven
                ? Colors.blue.withOpacity(0.5)
                : Colors.red.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              icon,
              size: 60,
              color: i.isEven ? Colors.blue.shade900 : Colors.red.shade900,
            ),
            const SizedBox(height: 30),
            Text(
              line1,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              line2,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              line3,
              style: TextStyle(color: Colors.white60),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

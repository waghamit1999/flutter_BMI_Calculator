import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderSelector extends StatelessWidget {
  final IconData icon;
  final String label;
  const GenderSelector({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: Color(0xff141A3C),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            FaIcon(
              icon,
              size: 70,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xffEAF0F7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

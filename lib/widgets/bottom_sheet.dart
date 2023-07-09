import 'package:flutter/material.dart';

class BMIBottomSheet extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const BMIBottomSheet({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(color: Colors.pink),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
        ),
      ),
    );
  }
}

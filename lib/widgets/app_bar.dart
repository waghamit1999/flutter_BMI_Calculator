import 'package:flutter/material.dart';

class BMIAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BMIAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff12153B),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      title: const Text(
        'BMI CALCULATOR',
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}

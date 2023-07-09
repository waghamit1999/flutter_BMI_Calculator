import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeWidget extends StatelessWidget {
  final String label;
  final int value;
  final void Function(int newValue) onValueChanged;
  const WeightAgeWidget({
    super.key,
    required this.value,
    required this.label,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff141A3C),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEAF0F7),
                ),
              ),
              Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEAF0F7),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    heroTag: '${label}_minus',
                    backgroundColor: Color(0xff282C4F),
                    onPressed: () {
                      onValueChanged(value - 1);
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.minus,
                      color: Colors.grey,
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: '${label}_plus',
                    backgroundColor: Color(0xff282C4F),
                    onPressed: () {
                      onValueChanged(value + 1);
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

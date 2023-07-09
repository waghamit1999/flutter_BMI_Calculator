import 'package:flutter/material.dart';

class BmiHeightSelector extends StatelessWidget {
  final String label;
  final int height;
  // final VoidCallback onChanged;
  final void Function(int newHeight) onHeightChanged;
  const BmiHeightSelector({
    super.key,
    required this.label,
    required this.height,
    required this.onHeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff141A3C),
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              'HEIGHT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xff2B324E),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '$height',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEAF0F7),
                ),
              ),
              Text(
                'cm',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2B324D),
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
              trackHeight: 1,
            ),
            child: Slider(
              min: 120,
              max: 220,
              value: height.toDouble(),
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              thumbColor: Color(0xffFF0067),
              onChanged: (newHeight) {
                onHeightChanged(newHeight.toInt());
              },
            ),
          ),
        ],
      ),
    );
  }
}
